jQuery(document).ready(function(t){function e(e){var l=t([t(".cd-nav-trigger"),t(".cd-filter"),t(".cd-tab-filter"),t(".cd-gallery")]);l.each(function(){t(this).toggleClass("filter-is-visible",e)})}t(".cd-nav-trigger").on("click",function(){t(this).toggleClass("nav-is-visible"),e(t(this).hasClass("filter-is-visible")?!1:!0)});var l=t(".cd-tab-filter .placeholder a"),i="Select",a=l.text();t(".cd-tab-filter li").on("click",function(e){var s=t(e.target).data("type");t(e.target).is(l)?(i==l.text()?l.text(a):l.text(i),t(".cd-tab-filter").toggleClass("is-open")):l.data("type")==s?(l.text(t(e.target).text()),t(".cd-tab-filter").removeClass("is-open")):(t(".cd-tab-filter").removeClass("is-open"),l.text(t(e.target).text()).data("type",s),a=t(e.target).text(),t(".cd-tab-filter .selected").removeClass("selected"),t(e.target).addClass("selected"))}),t(".cd-filter-block h4").on("click",function(){t(this).toggleClass("closed").siblings(".cd-filter-content").slideToggle(300)})});