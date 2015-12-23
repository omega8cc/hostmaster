(function($) {

// Setup our namespace.
Drupal.hosting = Drupal.hosting || {};
// Obey the Drupal JS killswitch, almost entirely pointless though.
if (Drupal.jsEnabled) {
  $(document).ready(function() {

    $('div.hosting-site-field-description').hide();
    Drupal.hosting.siteFormCheck('.node-form');
    $('.node-form').addClass('site-form-ajax-processed');
    $('div.hosting-site-field input').change(function() {
      Drupal.hosting.siteFormCheck(this);
    });
  });
}

Drupal.hosting.addSiteFormProgress = function(element) {
  // Don't let the user submit the form until we've computed the new values.
  $('#edit-submit').attr('disabled', true);

  // Add a progress div.
  var $progress = $('<div class="site-form-progress"><div class="throbber"></div></div>');
  $(element).before($progress);

}

Drupal.hosting.removeSiteFormProgress = function(can_submit) {
  // Enable/disable the submit button.
  if (can_submit) {
    $('#edit-submit').removeAttr('disabled');
  }
  else {
    $('#edit-submit').attr('disabled', true);
  }

  // Remove the progress div.
  $('.site-form-progress').remove();

}

Drupal.hosting.siteFormToggleOptions = function(settings) {

  // We'll compute if the user should be allowed to submit the form.
  var can_submit = true;

  for (var key in settings) {
    var css_key = key.replace(/_/g, '-');
    var $desc_id = $('div#hosting-site-field-' + css_key + '-description');

    // Generate an css id to retrieve the value, based on the field type.
    var $id = $('div#hosting-site-field-' + css_key);

    if ($id.hasClass('hosting-site-field-radios')) {
      // show and hide the visible radio options.
      if (typeof(settings[key]) != 'object') {
        $id.hide();
        $desc_id.hide();
      }
      else if (settings[key].length > 1) {
        // There is more than one possible option, so we display the radio dialogs.
        $desc_id.hide();
        $id.show();
        $id.find('div.form-radios div.form-item').hide();
        var checked = false
        for (var option in settings[key]) {
          // modify the definition to get the right css id
          var option_css_key = settings[key][option].toString().replace(/[\]\[\ _]/g, '-')
          var $input_id = $('input[name=' + key + '][value=' + settings[key][option] + ']');
          $id.find('div.form-radios div#edit-' + css_key + '-' + option_css_key +'-wrapper').show();

          // one of the visible radio options has already been checked
          if ($input_id.attr('checked')) {
            checked = true;
          }
        }
        if (!checked) {
          $('input[name=' + key + ']:visible:first').attr('checked', 'checked');
        }
      }
      else if (settings[key].length == 1) {
        // There is only one valid option, so we select it and display it as text.
        var $input_id = $('input[name=' + key + '][value=' + settings[key][0] + ']');
        $input_id.attr("checked", "checked");
        $id.hide();


        // we have a special case for radios that do not want their description
        // shown. These options have the index value 'null'.
        if (settings[key][0] != 'null') {
          $desc_id.show()
            .find('div.placeholder')
            .removeClass('error')
            .contents()
            .replaceWith($.trim($input_id.parent().text()));
        }
      }
      else {
        // If we have any errors, for the form submit not to be possible.
        can_submit = false;

        $id.hide();
        $desc_id.show()
          .find('div.placeholder')
          .addClass('error')
          .contents()
          .replaceWith('No valid choices');
      }
    }
    else if ($id.hasClass('hosting-site-field-textfield') || $id.hasClass('hosting-site-field-textarea')) {
      var $input_id = $('input[name=' + key + ']');

      if (settings[key] == null) {
        // we do not want the user to be able to manipulate this value,
        // but we need to display the default value to the user.
        $id.hide();
        if ($input_id.val().length) {
          $desc_id.show()
            .find('div.placeholder')
            .contents().
            replaceWith($.trim($input_id.val()));
        }
      }
      else if ((settings[key].toString().length || (settings[key] == true)) && (settings[key] != false)) {
        $id.show();
        $desc_id.hide();

        // if the field does not have a value yet
        if (!$input_id.val().length) {
          // we were given a default value by the server
          if (settings[key].length) {
            // set the textfield to the provided default
            $input_id.val(settings[key]);
          }
        }
      }
      else {
        // hide the whole field and description
        $desc_id.hide();
        $id.hide();
      }
    }
  }

  return can_submit;
}

Drupal.hosting.siteFormCheck = function(element) {
  var post_data = {};

   $('div.hosting-site-field').each(function() {
     // get the field name for this field.
     var field = $(this).attr('id').replace('hosting-site-field-', '').replace(/-/g,'_');

     // generate an css id to retrieve the value, based on the field type.
     var id = 'input[name=' + field + ']';
     if ($(this).hasClass('hosting-site-field-radios')) {
       id = id + ':checked';
     }

     // Update the post_data with the right values.
     post_data[field] = $(id, this).val();
  });

  // Add the progress indicator before sending the ajax.
  Drupal.hosting.addSiteFormProgress(element);

  $.ajax({
    type: 'POST',
    url: Drupal.settings.hosting.site.form_check_url + window.location.search,
    data: post_data,
    // Handle the success callback.
    success: function(data) {
      var can_submit = Drupal.hosting.siteFormToggleOptions(data);
      Drupal.hosting.removeSiteFormProgress(can_submit);
    },
    // On an error, still remove the progress indicator.
    error: function () {
      Drupal.hosting.removeSiteFormProgress(true);
    },
    dataType: 'json'
  });
}

})(jQuery);

/*! http://mths.be/punycode v1.2.0 by @mathias */
;(function(u){var I,e=typeof define=='function'&&typeof define.amd=='object'&&define.amd&&define,J=typeof exports=='object'&&exports,q=typeof module=='object'&&module,h=typeof require=='function'&&require,o=2147483647,p=36,i=1,H=26,B=38,b=700,m=72,G=128,C='-',E=/^xn--/,t=/[^ -~]/,l=/\x2E|\u3002|\uFF0E|\uFF61/g,s={overflow:'Overflow: input needs wider integers to process','not-basic':'Illegal input >= 0x80 (not a basic code point)','invalid-input':'Invalid input'},v=p-i,g=Math.floor,j=String.fromCharCode,n;function y(K){throw RangeError(s[K])}function z(M,K){var L=M.length;while(L--){M[L]=K(M[L])}return M}function f(K,L){return z(K.split(l),L).join('.')}function D(N){var M=[],L=0,O=N.length,P,K;while(L<O){P=N.charCodeAt(L++);if((P&63488)==55296&&L<O){K=N.charCodeAt(L++);if((K&64512)==56320){M.push(((P&1023)<<10)+(K&1023)+65536)}else{M.push(P,K)}}else{M.push(P)}}return M}function F(K){return z(K,function(M){var L='';if(M>65535){M-=65536;L+=j(M>>>10&1023|55296);M=56320|M&1023}L+=j(M);return L}).join('')}function c(K){return K-48<10?K-22:K-65<26?K-65:K-97<26?K-97:p}function A(L,K){return L+22+75*(L<26)-((K!=0)<<5)}function w(N,L,M){var K=0;N=M?g(N/b):N>>1;N+=g(N/L);for(;N>v*H>>1;K+=p){N=g(N/v)}return g(K+(v+1)*N/(N+B))}function k(L,K){L-=(L-97<26)<<5;return L+(!K&&L-65<26)<<5}function a(X){var N=[],Q=X.length,S,T=0,M=G,U=m,P,R,V,L,Y,O,W,aa,K,Z;P=X.lastIndexOf(C);if(P<0){P=0}for(R=0;R<P;++R){if(X.charCodeAt(R)>=128){y('not-basic')}N.push(X.charCodeAt(R))}for(V=P>0?P+1:0;V<Q;){for(L=T,Y=1,O=p;;O+=p){if(V>=Q){y('invalid-input')}W=c(X.charCodeAt(V++));if(W>=p||W>g((o-T)/Y)){y('overflow')}T+=W*Y;aa=O<=U?i:(O>=U+H?H:O-U);if(W<aa){break}Z=p-aa;if(Y>g(o/Z)){y('overflow')}Y*=Z}S=N.length+1;U=w(T-L,S,L==0);if(g(T/S)>o-M){y('overflow')}M+=g(T/S);T%=S;N.splice(T++,0,M)}return F(N)}function d(W){var N,Y,T,L,U,S,O,K,R,aa,X,M=[],Q,P,Z,V;W=D(W);Q=W.length;N=G;Y=0;U=m;for(S=0;S<Q;++S){X=W[S];if(X<128){M.push(j(X))}}T=L=M.length;if(L){M.push(C)}while(T<Q){for(O=o,S=0;S<Q;++S){X=W[S];if(X>=N&&X<O){O=X}}P=T+1;if(O-N>g((o-Y)/P)){y('overflow')}Y+=(O-N)*P;N=O;for(S=0;S<Q;++S){X=W[S];if(X<N&&++Y>o){y('overflow')}if(X==N){for(K=Y,R=p;;R+=p){aa=R<=U?i:(R>=U+H?H:R-U);if(K<aa){break}V=K-aa;Z=p-aa;M.push(j(A(aa+V%Z,0)));K=g(V/Z)}M.push(j(A(K,0)));U=w(Y,P,T==L);Y=0;++T}}++Y;++N}return M.join('')}function r(K){return f(K,function(L){return E.test(L)?a(L.slice(4).toLowerCase()):L})}function x(K){return f(K,function(L){return t.test(L)?'xn--'+d(L):L})}I={version:'1.2.0',ucs2:{decode:D,encode:F},decode:a,encode:d,toASCII:x,toUnicode:r};if(J){if(q&&q.exports==J){q.exports=I}else{for(n in I){I.hasOwnProperty(n)&&(J[n]=I[n])}}}else{if(e){define('punycode',I)}else{u.punycode=I}}}(this));
$(":input#edit-title").bind('focusin', function()
   {
    $(":input#edit-title").val(punycode.toUnicode(plain))
});
$(":input#edit-title").bind('focusout', function()
   {
    plain = $(":input#edit-title").val();
    $(":input#edit-title").val(punycode.toASCII(plain))
});
