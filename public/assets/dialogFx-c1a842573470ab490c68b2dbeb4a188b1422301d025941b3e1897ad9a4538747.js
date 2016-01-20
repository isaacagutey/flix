/**
 * dialogFx.js v1.0.0
 * http://www.codrops.com
 *
 * Licensed under the MIT license.
 * http://www.opensource.org/licenses/mit-license.php
 * 
 * Copyright 2014, Codrops
 * http://www.codrops.com
 */
jQuery(document).ready(function(){!function(i){function n(i,n){for(var o in n)n.hasOwnProperty(o)&&(i[o]=n[o]);return i}function o(i,o){this.el=i,this.options=n({},this.options),n(this.options,o),this.ctrlClose=this.el.querySelector("[data-dialog-close]"),this.isOpen=!1,this._initEvents()}var t,e={animations:Modernizr.cssanimations},s={WebkitAnimation:"webkitAnimationEnd",OAnimation:"oAnimationEnd",msAnimation:"MSAnimationEnd",animation:"animationend"},a=s[Modernizr.prefixed("animation")],l=function(i,n){var o=function(i){if(e.animations){if(i.target!=this)return;this.removeEventListener(a,o)}n&&"function"==typeof n&&n.call()};e.animations?i.addEventListener(a,o):o()};o.prototype.options={onOpenDialog:function(){return!1},onCloseDialog:function(){return!1}},o.prototype._initEvents=function(){var i=this;this.ctrlClose.addEventListener("click",this.toggle.bind(this)),document.addEventListener("keydown",function(n){var o=n.keyCode||n.which;27===o&&i.isOpen&&i.toggle()}),this.el.querySelector(".dialog__overlay").addEventListener("click",this.toggle.bind(this))},o.prototype.toggle=function(){var n=this,o=$("body");this.isOpen?(classie.remove(this.el,"dialog--open"),classie.add(n.el,"dialog--close"),o.removeClass("modal-open"),$("#modal_close").addClass("hidden"),o.scrollTop(t),l(this.el.querySelector(".dialog__content"),function(){classie.remove(n.el,"dialog--close")}),this.options.onCloseDialog(this)):(classie.add(this.el,"dialog--open"),o.addClass("modal-open"),$("#modal_close").removeClass("hidden"),t=o.scrollTop(),$(i).scrollTop(0),this.options.onOpenDialog(this)),this.isOpen=!this.isOpen},i.DialogFx=o}(window)});