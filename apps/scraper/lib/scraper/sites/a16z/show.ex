defmodule Scraper.Sites.A16z.Show do
  alias Customer.Web.Services.JobSourceCreator
  alias Scraper.Sites.Helpers.TechKeywordsFinder

  @body '''
  <script>\n\nwindow.onload=function(){\nvar links = document.querySelectorAll('.detaillinks a');\n\tvar len = links.length;\n\tfor(var i=0; i<len; i++)\n\t{\n\t   links[i].target = \"_blank\";\n\t}\nvar links1 = document.querySelectorAll('.detaillinks2 a');\n\tvar len = links1.length;\n\tfor(var i=0; i<len; i++)\n\t{\n\t   links1[i].target = \"_blank\";\n\t}\n}\nfunction externalMsg(){\n\n\treturn confirm(\"This employer is using their own job application system, so you will be taken to their website to complete your application process.  If you encounter issues when applying, please contact that employer directly.  If you are still having issues, please let us know so we can assist.\");\n\n}\n</script>\n\n\n<!DOCTYPE html>\n<html lang=\"en\">\n\n<head>\n\n\t<meta charset=\"UTF-8\"><script type=\"text/javascript\">window.NREUM||(NREUM={}),__nr_require=function(e,t,n){function r(n){if(!t[n]){var o=t[n]={exports:{}};e[n][0].call(o.exports,function(t){var o=e[n][1][t];return r(o||t)},o,o.exports)}return t[n].exports}if(\"function\"==typeof __nr_require)return __nr_require;for(var o=0;o<n.length;o++)r(n[o]);return r}({1:[function(e,t,n){function r(){}function o(e,t,n){return function(){return i(e,[(new Date).getTime()].concat(u(arguments)),t?null:this,n),t?void 0:this}}var i=e(\"handle\"),a=e(2),u=e(3),c=e(\"ee\").get(\"tracer\"),f=NREUM;\"undefined\"==typeof window.newrelic&&(newrelic=f);var s=[\"setPageViewName\",\"setCustomAttribute\",\"setErrorHandler\",\"finished\",\"addToTrace\",\"inlineHit\"],l=\"api-\",p=l+\"ixn-\";a(s,function(e,t){f[t]=o(l+t,!0,\"api\")}),f.addPageAction=o(l+\"addPageAction\",!0),f.setCurrentRouteName=o(l+\"routeName\",!0),t.exports=newrelic,f.interaction=function(){return(new r).get()};var d=r.prototype={createTracer:function(e,t){var n={},r=this,o=\"function\"==typeof t;return i(p+\"tracer\",[Date.now(),e,n],r),function(){if(c.emit((o?\"\":\"no-\")+\"fn-start\",[Date.now(),r,o],n),o)try{return t.apply(this,arguments)}finally{c.emit(\"fn-end\",[Date.now()],n)}}}};a(\"setName,setAttribute,save,ignore,onEnd,getContext,end,get\".split(\",\"),function(e,t){d[t]=o(p+t)}),newrelic.noticeError=function(e){\"string\"==typeof e&&(e=new Error(e)),i(\"err\",[e,(new Date).getTime()])}},{}],2:[function(e,t,n){function r(e,t){var n=[],r=\"\",i=0;for(r in e)o.call(e,r)&&(n[i]=t(r,e[r]),i+=1);return n}var o=Object.prototype.hasOwnProperty;t.exports=r},{}],3:[function(e,t,n){function r(e,t,n){t||(t=0),\"undefined\"==typeof n&&(n=e?e.length:0);for(var r=-1,o=n-t||0,i=Array(o<0?0:o);++r<o;)i[r]=e[t+r];return i}t.exports=r},{}],ee:[function(e,t,n){function r(){}function o(e){function t(e){return e&&e instanceof r?e:e?c(e,u,i):i()}function n(n,r,o){if(!p.aborted){e&&e(n,r,o);for(var i=t(o),a=v(n),u=a.length,c=0;c<u;c++)a[c].apply(i,r);var f=s[w[n]];return f&&f.push([y,n,r,i]),i}}function d(e,t){b[e]=v(e).concat(t)}function v(e){return b[e]||[]}function g(e){return l[e]=l[e]||o(n)}function m(e,t){f(e,function(e,n){t=t||\"feature\",w[n]=t,t in s||(s[t]=[])})}var b={},w={},y={on:d,emit:n,get:g,listeners:v,context:t,buffer:m,abort:a,aborted:!1};return y}function i(){return new r}function a(){(s.api||s.feature)&&(p.aborted=!0,s=p.backlog={})}var u=\"nr@context\",c=e(\"gos\"),f=e(2),s={},l={},p=t.exports=o();p.backlog=s},{}],gos:[function(e,t,n){function r(e,t,n){if(o.call(e,t))return e[t];var r=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,t,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return e[t]=r,r}var o=Object.prototype.hasOwnProperty;t.exports=r},{}],handle:[function(e,t,n){function r(e,t,n,r){o.buffer([e],r),o.emit(e,t,n)}var o=e(\"ee\").get(\"handle\");t.exports=r,r.ee=o},{}],id:[function(e,t,n){function r(e){var t=typeof e;return!e||\"object\"!==t&&\"function\"!==t?-1:e===window?0:a(e,i,function(){return o++})}var o=1,i=\"nr@id\",a=e(\"gos\");t.exports=r},{}],loader:[function(e,t,n){function r(){if(!h++){var e=y.info=NREUM.info,t=l.getElementsByTagName(\"script\")[0];if(setTimeout(f.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&t))return f.abort();c(b,function(t,n){e[t]||(e[t]=n)}),u(\"mark\",[\"onload\",a()],null,\"api\");var n=l.createElement(\"script\");n.src=\"https://\"+e.agent,t.parentNode.insertBefore(n,t)}}function o(){\"complete\"===l.readyState&&i()}function i(){u(\"mark\",[\"domContent\",a()],null,\"api\")}function a(){return(new Date).getTime()}var u=e(\"handle\"),c=e(2),f=e(\"ee\"),s=window,l=s.document,p=\"addEventListener\",d=\"attachEvent\",v=s.XMLHttpRequest,g=v&&v.prototype;NREUM.o={ST:setTimeout,CT:clearTimeout,XHR:v,REQ:s.Request,EV:s.Event,PR:s.Promise,MO:s.MutationObserver},e(1);var m=\"\"+location,b={beacon:\"bam.nr-data.net\",errorBeacon:\"bam.nr-data.net\",agent:\"js-agent.newrelic.com/nr-998.min.js\"},w=v&&g&&g[p]&&!/CriOS/.test(navigator.userAgent),y=t.exports={offset:a(),origin:m,features:{},xhrWrappable:w};l[p]?(l[p](\"DOMContentLoaded\",i,!1),s[p](\"load\",r,!1)):(l[d](\"onreadystatechange\",o),s[d](\"onload\",r)),u(\"mark\",[\"firstbyte\",a()],null,\"api\");var h=0},{}]},{},[\"loader\"]);</script>\n\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n\t<title>Jobs | Andreessen Horowitz Jobs</title>\n\t<link rel=\"stylesheet\" href=\"vc_includes/static/build/css/global.min.css\">\n\t<link rel=\"stylesheet\" href=\"vc_includes/font-awesome.min.css\">\n\t\t<link rel=\"stylesheet\" href=\"vc_includes/pagination.css\">\n\t\n\t\n\t<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic' rel='stylesheet' type='text/css'>\n</head>\n\n<body class=\"page-job-detail\">\n\t<div class=\"wrap-page\">\n\t\t\t<header>\n\t\t\t<a href=\"http://a16z.com/\" class=\"link-home\">\n\t\t\t\t<div class=\"logo\">\n\t\t\t\t\t<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"1.1\" x=\"0\" y=\"0\" viewBox=\"0 0 320 18.3\" enable-background=\"new 0 0 320 18.3\" xml:space=\"preserve\">\n\t\t\t\t\t  <g id=\"Layer_1\"/>\n\t\t\t\t\t  <g id=\"svg2\">\n\t\t\t\t\t    <g id=\"g3184\" transform=\"matrix(0.13044449,0,0,0.13044449,408.94332,434.68053)\">\n\t\t\t\t\t      <path id=\"path3176\" d=\"M-2805.1-3328.4c-14.3-0.1-22 0.2-19.5 0.8 11.8 2.5 11.5 0.5 11 67 -0.5 63.6-0.4 63.1-8.4 64.3 -2.2 0.3 0.4 0.8 5.7 1 5.3 0.2 17.4 0.9 26.8 1.5 27.6 1.7 31.5 1.6 42-0.7 37.7-8 61.2-45.4 52.9-84.3 -3.5-16.6-16.5-34.3-30.3-41.2 -13.7-6.8-20-7.6-63.9-8.3C-2794.8-3328.3-2800.3-3328.4-2805.1-3328.4zM-2781.2-3324.3c19.8-0.5 42.3 7.5 54.6 19.9 19 19.3 24.2 51.9 12.2 77.2 -4.9 10.3-16 20.5-27.2 24.8 -15.7 6.1-47.6 5.2-54.4-1.6 -1.2-1.2-1.7-18.8-1.7-59.9v-58.3l8.2-1.3C-2786.8-3324-2784.1-3324.3-2781.2-3324.3z\"/>\n\t\t\t\t\t      <path id=\"path3172\" d=\"M-2313.8-3193.6c-10-3-10.3-3.6-10.3-17.1 0-6.9 0.7-12.9 1.5-13.4 0.9-0.6 1.5 1.3 1.5 4.7 0 12.7 10.8 21.3 26.8 21.3 10.5 0 16.1-2.5 21.4-9.3 4.7-6.1 6.1-14.9 3.9-23.2 -1.8-6.9-7-12.6-30.1-33.2 -15.2-13.7-20.5-22.7-20.5-34.9 0-19.9 12.7-32.1 33.5-32.2 16.4-0.1 27.9 1.9 26.9 4.6 -0.5 1.2-0.9 6.7-1 12.1 -0.1 9.5-0.2 9.6-1.5 4 -2.5-10.6-10.2-15.7-23.6-15.7 -15.2 0-23.8 7.5-23.8 21 0 9 4.9 16.2 19.3 28.1 24.1 19.9 30.1 27.2 32.8 39.8 3.7 17.2-4.1 33.1-19.9 40.5 -7.9 3.7-10.9 4.3-21.1 4.2C-2304.7-3192.4-2311.7-3193-2313.8-3193.6L-2313.8-3193.6z\"/>\n\t\t\t\t\t      <path id=\"path3170\" d=\"M-2216-3194.5c-8.4-2.7-9-4.4-7.3-20 0.7-6.1 1.3-9.2 1.5-6.8 0.4 8.3 5.8 16.8 13 20.2 9.3 4.5 24.8 3.7 31.4-1.6 6.1-4.9 9.4-12 9.4-20.2 0-10.1-3.6-15.9-16.9-27.8 -27.3-24.3-32.4-31-34.2-44.9 -1.1-8.8 0.6-15.5 5.9-23.2 7.6-11 21.6-14.4 45.6-11.2l8.5 1.2 -0.1 11.4c-0.1 9.2-0.4 10.7-1.6 7.7 -5.6-13.7-10.5-16.7-26.1-16 -9.5 0.4-11.2 1-15.3 4.8 -8.8 8.4-9 22-0.5 32 2.1 2.5 10.4 9.9 18.4 16.3 21.7 17.6 28.2 27.4 28.2 42.7 0 14.3-6.3 25.2-19 32.6 -5.9 3.5-8.8 4.1-20.3 4.4C-2204.4-3192.4-2211.3-3193-2216-3194.5L-2216-3194.5z\"/>\n\t\t\t\t\t      <path id=\"path3158\" d=\"M-2893.9-3220.8c-14.5-14.9-37.6-39.7-51.3-54.9 -13.7-15.3-25.5-27.8-26.1-27.9 -1.5-0.1 0.3 82.2 2.1 94.2 0.7 4.8 2 9.5 2.8 10.3s4.4 2 7.8 2.5c3.9 0.6-1.6 1-14.5 1 -11.4 0-18.5-0.4-15.6-0.9 8.5-1.5 8.7-3.5 8.8-73.3 0.1-49 0.5-61.9 1.9-61.3 1 0.4 25.2 26.1 53.8 57.2s52.1 56.2 52.4 56c0.3-0.3-0.1-23.7-0.7-52.1 -1.4-57.6-0.8-55.1-12.2-57.3 -5.1-1-1.7-1.3 14.2-1.3 13.4 0 19 0.4 15.8 1.2 -2.7 0.6-5.7 1.9-6.7 2.9 -1.2 1.2-1.8 19.9-2.1 66.3 -0.3 49.6-0.8 64.6-2.2 64.6C-2866.7-3193.6-2879.4-3205.8-2893.9-3220.8L-2893.9-3220.8z\"/>\n\t\t\t\t\t      <path id=\"path3156\" d=\"M-2517.4-3195.2c-9.4-0.5-15.3-1-13.1-1.2 7.7-0.6 7.9-2 7.9-66.2v-59.2l-3.5-2.8c-1.9-1.6-5.6-3-8.2-3.2 -3.2-0.2 62.4-2 69.9-1.9 0.1 0-0.2 5-0.8 11.2 -0.9 9.4-1.2 10.4-2.2 6.5 -2.1-8.7-5.3-10.1-24.2-10.7l-16.9-0.5v26.9 26.9h18.3c12.1 0 18.9-0.6 20-1.8 2.9-2.9 3.3-0.9 2.1 11.5 -1 10.7-1.2 11.3-2.2 6.3 -0.6-3.1-2.3-6.2-3.8-7 -1.5-0.8-9.9-1.9-18.6-2.5l-15.9-1 0.5 28.2c0.4 21.1 1 28.9 2.5 30.7 3.3 4 12.6 5.7 24.8 4.5 12.9-1.2 16.1-3.1 19.3-11.7l2.2-5.9 -0.8 9.4c-1.3 15.5-1 15.2-22.1 14.9C-2492.1-3194.2-2508-3194.7-2517.4-3195.2L-2517.4-3195.2z\"/>\n\t\t\t\t\t      <path id=\"path3154\" d=\"M-2413.3-3195.2c-9.4-0.5-15.3-1-13.1-1.2 7.7-0.6 7.9-2 7.9-66.2v-59.2l-3.5-2.8c-1.9-1.6-5.6-3-8.2-3.2 -3.2-0.2 62.4-2 69.9-1.9 0.1 0-0.2 5-0.8 11.2 -0.9 9.4-1.2 10.4-2.2 6.5 -2.1-8.8-5.3-10.2-23.8-10.2h-16.6l-0.4 26.4 -0.4 26.4h17.2c9.5 0 18.6-0.7 20.2-1.6 1.7-0.9 3.3-1.3 3.6-1 0.3 0.3 0.2 5.9-0.4 12.4 -1 11.1-1.1 11.5-2.4 6.2 -0.7-3.1-2.5-6.2-4-7 -1.4-0.8-9.7-1.9-18.4-2.4l-15.8-1 0.1 25.1c0.1 30.5 1.2 34.7 9.5 37.5 7.7 2.5 27.9 0.9 32.1-2.5 1.6-1.3 4-5.1 5.2-8.3l2.2-5.9 -0.8 9.4c-1.3 15.5-1 15.2-22.1 14.9C-2388.1-3194.2-2403.9-3194.7-2413.3-3195.2z\"/>\n\t\t\t\t\t      <path id=\"path3152\" d=\"M-2108.6-3195.2c-9.4-0.5-15.3-1-13.2-1.2 8-0.6 8-0.5 8.4-64.5l0.4-59.2 -3.7-3.7c-2.2-2.2-5.7-3.8-8.6-4 -2.7-0.2 11.8-0.7 32.3-1.1 20.4-0.4 37.3-0.7 37.6-0.6 0.2 0.1 0 5-0.6 10.9l-1 10.7 -1.9-5.5c-1-3.1-2.8-6.1-3.9-6.8 -3.2-2-13.2-3-25-2.5l-11.2 0.5 -0.4 26.4 -0.4 26.4h17.2c9.5 0 18.6-0.7 20.2-1.6 1.7-0.9 3.3-1.3 3.8-0.9s0.2 6-0.5 12.4c-0.8 7.2-1.4 9.8-1.7 6.8 -0.7-7.2-4.7-9-23-10.2l-16-1 0.1 25.1c0.1 15.3 0.8 27.1 1.9 30.3 2.5 7.2 9.5 9.4 25.3 8 13.4-1.2 18.2-4.1 20.4-12.5 1-4 1.2-2.9 0.7 5 -0.4 5.6-1.4 11.1-2.4 12.3C-2055.5-3193.6-2073.8-3193.4-2108.6-3195.2L-2108.6-3195.2z\"/>\n\t\t\t\t\t      <path id=\"path3150\" d=\"M-1922.7-3218.8c-14.1-14.2-37.6-39.2-52.3-55.4s-27.1-29.5-27.6-29.5c-1.2 0 1.2 90.7 2.6 97.2 1.6 7.2 2.9 8.5 10 9.9 3.5 0.7-1.9 1.1-14.4 1 -11 0-17.9-0.3-15.2-0.7 3-0.4 5.5-1.8 6.7-3.9 1.4-2.4 2-19.5 2.3-67.7l0.5-64.5 3.8 3.5c2.1 1.9 25.9 27.4 52.9 56.7 27 29.2 49.5 53.1 50 53.1 2.4 0-0.7-101.3-3.3-104.8 -0.9-1.3-4.7-2.9-8.4-3.6 -5.2-1-2.3-1.3 13.4-1.3 14.1 0 18.7 0.4 15.6 1.3 -8.3 2.5-8.2 1.5-8.3 66.7 -0.1 33.2-0.7 62-1.3 64C-1897.1-3193.1-1898.5-3194.3-1922.7-3218.8z\"/>\n\t\t\t\t\t      <path id=\"path3146\" d=\"M-3072.7-3331.4c-1.8 0.2-5.3 9.4-24 60.9 -11 30.4-21.3 58-22.8 61.2 -3.4 7.7-7.6 11.3-14.6 12.7 -3.4 0.7 2.4 1.1 15.2 1.1 13.5 0 19.1-0.4 15.8-1.2 -6-1.4-7.8-3.9-6.7-8.9 1.9-8.9 13.1-41 14.5-42 2.2-1.5 36.8-1.4 39.2 0.1 1 0.6 5.8 11.5 10.6 24.1 6.4 16.8 8.4 23.7 7.4 25.6 -1.3 2.4-0.1 2.6 16.9 2.5 14.7-0.1 17.1-0.4 12.4-1.5 -12-2.8-13.1-4.9-41.2-78.3 -11.5-30-21.4-55.1-22.1-55.8C-3072.2-3331.2-3072.4-3331.4-3072.7-3331.4zM-3075.8-3304.7c1.2 0.4 18.6 47.4 18.7 50.5 0 0.6-8.2 1.1-18.3 1.1h-18.4l8.3-26C-3081-3293.5-3076.6-3305-3075.8-3304.7z\"/>\n\t\t\t\t\t      <path id=\"path3142\" d=\"M-2656.4-3328.5c-10.8 0.1-16.1 0.4-13.5 0.9 3.2 0.7 6.6 2.3 7.6 3.7 4.3 5.8 4.8 113.9 0.6 123.1 -1.3 2.8-3.2 4.2-6.5 4.6 -2.5 0.3 5.4 0.6 17.7 0.6 12.3 0 19.3-0.4 15.7-0.9 -9.6-1.3-10.4-3.6-10.4-31.7l0-23.4h12.6 12.7l7 9.9c13 18.4 29.8 38.6 34.8 42.2 4.5 3.2 6.7 3.6 21.3 3.8 11 0.2 14.2-0.1 9.7-0.8 -13.3-2.1-20.1-8.1-44.5-38.8l-16-20.3 5.2-5.9c22.2-25.4 21-52.8-2.6-63.7 -6-2.8-9.8-3.1-38.7-3.3C-2648.6-3328.5-2652.8-3328.5-2656.4-3328.5L-2656.4-3328.5zM-2631.7-3324.5c19.9 0.1 32.2 15.5 30.7 40 -0.7 11.6-4.3 19.8-10.6 24.3 -4.5 3.2-17.1 4.9-24.1 3.3 -1.6-0.4-4.5-1-6.3-1.4 -3.3-0.7-3.3-0.8-3.3-32.5v-31.7l4.6-0.9C-2637.5-3324.2-2634.5-3324.5-2631.7-3324.5z\"/>\n\t\t\t\t\t    </g>\n\t\t\t\t\t    <g id=\"g3196\" transform=\"matrix(0.13044449,0,0,0.13044449,294.90722,451.76822)\">\n\t\t\t\t\t      <path id=\"path3168\" d=\"M-707.6-3462.9c-15.2 0.1-30.1 4.2-41.1 12.3 -9.3 6.8-19.8 20.3-23.6 30.4 -15.2 40.1 4.6 83.5 43.1 94.5 10.7 3.1 37.5 1.9 47.7-2.1 18.3-7.2 34.6-24.9 40.4-43.8 4.5-14.6 4.4-36.7 0-49.2 -3.7-10.3-11.5-21.4-19.5-27.7C-673-3458.2-690.5-3463.1-707.6-3462.9L-707.6-3462.9zM-714.3-3457.2c2.1 0 4.6 0 7.5 0.1 12.2 0.5 15.2 1.2 22.1 4.9 24.3 13.3 36.4 46.3 29.3 79.7 -4.1 19.4-12.7 31.2-28.3 38.7 -7.5 3.6-10.7 4.2-20.1 4.1 -6.1-0.1-12.8-0.6-14.9-1.3 -20.2-6.2-35.8-24.8-40.9-48.9 -7.3-34.3 5.2-65.2 29.9-74.6C-724.2-3456.4-720.7-3457.2-714.3-3457.2L-714.3-3457.2z\"/>\n\t\t\t\t\t      <path id=\"path3164\" d=\"M-417.7-3462.9c-15.2 0.1-30.1 4.2-41.1 12.3 -9.3 6.8-19.8 20.3-23.6 30.4 -15.2 40.1 4.6 83.5 43.1 94.5 10.7 3.1 37.5 1.9 47.7-2.1 18.3-7.2 34.6-24.9 40.4-43.8 4.5-14.6 4.4-36.7 0-49.2 -3.7-10.3-11.5-21.4-19.5-27.7C-383.1-3458.2-400.5-3463.1-417.7-3462.9L-417.7-3462.9zM-424.4-3457.2c2.1 0 4.6 0 7.5 0.1 12.2 0.5 15.2 1.2 22.1 4.9 24.3 13.3 36.4 46.3 29.3 79.7 -4.1 19.4-12.7 31.2-28.3 38.7 -7.5 3.6-10.7 4.2-20.1 4.1 -6.1-0.1-12.8-0.6-14.9-1.3 -20.2-6.2-35.8-24.8-40.9-48.9 -7.3-34.3 5.2-65.2 29.9-74.6C-434.3-3456.4-430.8-3457.2-424.4-3457.2L-424.4-3457.2z\"/>\n\t\t\t\t\t      <path id=\"path3160\" d=\"M-288.3-3325.4c-0.4-1-7.1-23.3-14.9-49.4 -20.1-67.3-22.7-75.5-25.2-78.6 -1.2-1.6-5.4-3.7-9.3-4.7 -6.6-1.8-5.4-1.9 15.9-1.8 12.7 0.1 21.3 0.4 19.1 0.7 -6.7 1-7.8 3.7-5.8 13.7 1.9 9.4 25.2 94.1 26.3 95.1 0.3 0.3 0.9 0.3 1.2 0 0.3-0.3 9.3-24.3 20.1-53.3 18.5-49.9 21.4-56.7 23.3-54.8 0.4 0.4 9.2 24.8 19.5 54.2 10.3 29.3 19 53.6 19.3 54 0.3 0.3 0.9 0.3 1.3 0 2-2 29.1-96 29.1-100.9 0-4.9-0.6-6-3.3-6.6 -1.8-0.4-4.7-1-6.3-1.3s6.1-0.6 17.1-0.6c11.7 0 18.2 0.4 15.5 1.1 -2.5 0.6-5.4 1.6-6.3 2.2 -3.8 2.4-9.6 17.4-27.6 72.2 -10.3 31.5-19.5 58.2-20.3 59.5 -1.3 1.9-1.7 1.9-3.5-0.4 -1.1-1.4-6.8-16.2-12.5-32.7 -5.8-16.5-14-40-18.2-52.1 -4.2-12.1-8.2-21.5-8.9-20.8 -0.7 0.7-9.6 23.9-20 51.7 -10.3 27.7-19.4 51.7-20.2 53.1C-284.9-3323.1-287.3-3322.7-288.3-3325.4L-288.3-3325.4z\"/>\n\t\t\t\t\t      <path id=\"path3148\" d=\"M90.8-3326.6c-0.5-0.8 5.2-11 12.8-22.7 39.4-60.5 65.6-101.2 66.3-103.1 0.7-1.7-2.2-2.1-16.1-2 -9.3 0-23.8 0.6-32.3 1.3 -14.3 1.2-15.8 1.6-19.8 5.6 -2.4 2.4-5.3 7-6.4 10.2 -2.6 7.2-2.7 4.8-0.6-10.5l1.7-11.9 46.3 0.5c25.5 0.3 46.5 0.7 46.7 0.9 0.2 0.2-17.7 28.3-39.8 62.4 -22.1 34.1-40.2 62.3-40.2 62.6 0 1 60 0.8 65.3-0.3 6.2-1.2 13.3-8 14.5-13.8 0.5-2.5 1.6-4.6 2.4-4.6 1.5 0 1.1 3-2 19l-1.5 7.8h-48.1C108.3-3325.1 91.4-3325.6 90.8-3326.6L90.8-3326.6z\"/>\n\t\t\t\t\t      <path id=\"path3138\" d=\"M-924.6-3327.8c8-1.7 8.2-3.1 8.2-66.4 0-44.2-0.4-58.7-1.8-60.6 -1-1.4-4.5-3.1-7.8-3.9 -4.5-1-0.6-1.4 16.4-1.4 14.7 0 20.5 0.4 17.2 1.2 -8.5 2-9 3.8-9 30.7v24.2h39.4 39.4v-24.2c0-17.1-0.6-25-1.9-26.8 -1-1.4-4.9-3.1-8.5-3.8 -5.1-1-1.4-1.3 15.6-1.3 15.4 0 20.9 0.4 17.8 1.3 -2.5 0.7-5.3 2.5-6.3 3.9 -2.7 3.7-2.6 117.1 0.1 122.4 1.4 2.9 3.4 3.9 8.5 4.6 3.7 0.5-3.4 0.9-15.6 0.9 -12.3 0-20.5-0.3-18.3-0.6 7.5-1.1 7.9-2.9 8.4-37.8l0.5-32.5h-39.5 -39.5v29.5c0 38 0.3 38.8 13.4 40.9 2 0.3-6.3 0.6-18.6 0.6C-919-3326.9-927.1-3327.3-924.6-3327.8L-924.6-3327.8z\"/>\n\t\t\t\t\t      <path id=\"path3136\" d=\"M-596-3460.2c-16.8 0.1-26 0.6-22.6 1.3 11.2 2.2 10.7-0.9 10.7 65.1 0 63.8-0.1 65-7.8 66.2 -2.2 0.3 5.6 0.6 17.5 0.7 11.9 0 19.9-0.2 17.8-0.6 -8.9-1.4-10.2-2.1-11.8-6.7 -0.9-2.6-1.6-14.5-1.6-26.8v-22.1l13 0.4 13 0.4 7.4 10.3c17.9 24.7 30.5 39.5 36.3 42.5 4.8 2.5 8.6 3 20.5 2.8 12.7-0.2 13.6-0.3 7.3-1.4 -4-0.7-9.7-2.8-12.7-4.8 -6.3-4.1-19.6-18.9-36.1-39.7l-11.2-14.2 6.5-7.4c18-20.4 20-41.8 5.3-56.1C-553-3458.7-561.9-3460.4-596-3460.2zM-578.6-3455.8c11.5 0.3 19.8 5.7 25.3 16.1 3.6 6.8 4.1 9.7 4.1 20.1 0 13.7-3.5 22.9-10.7 28.2 -3.7 2.7-17.4 4.8-21.3 3.3 -0.8-0.3-4-1-7.1-1.5l-5.6-0.9v-31.8 -31.8l6.7-1C-584.1-3455.7-581.3-3455.9-578.6-3455.8z\"/>\n\t\t\t\t\t      <path id=\"path3132\" d=\"M-114.9-3327.6c7.5-1.2 8-4.6 7.9-67.6 0-53.8-0.2-57.7-2.8-60.5 -1.5-1.7-4.8-3.3-7.4-3.6s5-0.6 16.9-0.7c13.6-0.1 19.7 0.3 16.6 1.1 -2.7 0.6-5.7 1.9-6.7 2.9 -1.2 1.2-1.7 18.3-1.7 61.7 0 56.3 0.2 60.2 2.8 63 1.5 1.7 5.2 3.3 8.2 3.6 3 0.3-4.3 0.6-16.1 0.6C-109.1-3327-117-3327.3-114.9-3327.6L-114.9-3327.6z\"/>\n\t\t\t\t\t      <path id=\"path3128\" d=\"M-12.1-3327.6c2.3-0.4 5.2-2.3 6.7-4.5 2.3-3.5 2.6-9.5 2.6-62.7v-58.8l-18.8 0.2c-20.6 0.2-23.7 1.2-28.1 8.4 -2.8 4.6-2.9 4.6-2.8 1 0.1-2 0.9-7.1 1.9-11.2 1.6-6.8 2.1-7.4 5.4-6.7 2 0.4 26.3 0.7 53.9 0.7h50.2l-0.1 11.2c-0.1 10.6-0.2 10.9-1.9 6 -2.5-7.2-6.8-8.8-27.7-9.9l-18.1-1 0.5 60.3c0.4 56.3 0.6 60.5 3.2 63.3 1.5 1.7 5.2 3.3 8.2 3.6s-4.6 0.6-16.9 0.6C-6.2-3327-14.4-3327.3-12.1-3327.6L-12.1-3327.6z\"/>\n\t\t\t\t\t    </g>\n\t\t\t\t\t  </g>\n\t\t\t\t\t</svg>\n\t\t\t\t</div>\n\t\t\t\t<div class=\"tagline\"><i>Software Is Eating The World</i></div>\n\t\t\t</a>\n\t\t</header>\n\t\t<div class=\"nav-links-top\">\n\t\t\t<a class=\"link-index-jobs\" href=\"careers_home.php\">Return to Jobs</a>\n\t\t</div>\n\t\t<h1 class=\"title-job\">Software Engineer Intern</h1>\n\t\t<h2 class=\"location\">  San Francisco, CA, US&nbsp;/&nbsp;Hamburg, DE</h2>                \n\t\t<a class=\"link-apply\" href=\"jobapply.php?jobid=616690\" onclick = \"return externalMsg();\" >Apply for this job</a>\n\t\t<div class=\"wrap-job-description\">\n\t\t\t<p>Come build the future of datacenter software at Mesosphere! This summer, we&#039;re taking a small batch of interns across our engineering organisation.<br />\r\n<br />\r\nWhy intern at Mesosphere?<br />\r\nWork and contribute to open source! Mesos, the core of our business, is open source and many of our other products are open source. Check out our GitHub! <br />\r\n<br />\r\nLearn from and be mentored by some of the best distributed systems engineers in Silicon Valley.<br />\r\n<br />\r\nBe part of our product. Interns work on high priority features and projects that will get shipped.<br />\r\n<br />\r\nJoin the rocketship. We&#039;re a rapidly growing company with new customers and employees daily. Get a unique startup experience at Mesosphere. Business Insider put us on a list of the 15 fastest growing B2B startups.<br />\r\n<br />\r\nEngage with the community. Our engineers (full-time and interns) act as ambassadors to many of the open source communities we&#039;re part of. We&#039;re active in the local meetup scene and conferences around the world. We encourage interns to go attend as many of these as possible.<br />\r\n<br />\r\nConsumer design, enterprise scale. The Datacenter Operating System, Mesosphere&#039;s flagship product, uses the latest in user interface technology, taking inspiration from Twitter, AirBnB and other consumer websites. At the same time, our software runs infrastructure at huge organisations and has to scale.<br />\r\n <br />\r\n<br />\r\nWhat are we building at Mesosphere?<br />\r\nDistributed, auto-scaling, fault-tolerant systems<br />\r\n<br />\r\nAPI&#039;s for provisioning and managing large clusters<br />\r\n<br />\r\nData services to aggregate huge amounts of metrics<br />\r\n<br />\r\nManagement UI&#039;s for complex distributed systems<br />\r\n<br />\r\nVisualizations for multi-dimensional data<br />\r\n<br />\r\nApache Mesos frameworks to run batch jobs and long running services<br />\r\n<br />\r\nApache Mesos integration for popular tools like Storm and Apache Hadoop<br />\r\n<br />\r\nExperience and qualities we look for<br />\r\nJunior or senior undergraduate, or graduate student in Computer Science, Computer Engineering or a related discipline<br />\r\n<br />\r\nPast internship experience<br />\r\n<br />\r\nOpen source contributions and participation<br />\r\n<br />\r\nProgramming proficiency at least one of the following languages: Scala, Go, Java, Javascript, Ruby, Python or C++<br />\r\n<br />\r\nA respect for the written word and the art of communication<br />\r\n<br />\r\nTaking pride in your craft<br />\r\n<br />\r\nBeing hungry and being foolish<br />\r\n<br />\r\n <br />\r\n<br />\r\n <br />\r\n<br />\r\nPlease apply below and include your resume and any source code you would like to share.<br />\r\n<br />\r\nWe look forward to reviewing your application. Thank you for your interest in Mesosphere!</p>\n\t\t</div>\n\t\t<div class=\"nav-links-bottom\">\n\t\t\t<a class=\"link-apply\" href=\"jobapply.php?jobid=616690\" onclick = \"return externalMsg();\" >Apply for this job</a>\n\t\t\t<a class=\"link-index-jobs\" href=\"careers_home.php\">Return to Jobs</a>\n\t\t</div>\n\t\t\t\t<footer role=\"content-info\">\n\t\t\t<span>Powered by <a href=\"http://www.ventureloop.com/ventureloop/aboutus.php\">Venture Loop</a></span>&bull;<span><a href=\"https://www.ventureloop.com/ventureloop/login.php\">Partner Company Sign In</a></span>\n\t\t</footer>\n\t</div>\n\t<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js\"></script>\n\t<script src=\"vc_includes/static/build/js/production.min.js\"></script>\n\n<script>\n  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){\n  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\n  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\n  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');\n\n  ga('create', 'UA-23593478-40', 'auto');\n  ga('send', 'pageview');\n\n</script>\n<script type=\"text/javascript\">window.NREUM||(NREUM={});NREUM.info={\"beacon\":\"bam.nr-data.net\",\"licenseKey\":\"bfbd9b689f\",\"applicationID\":\"1756935\",\"transactionName\":\"NFRVNRYAC0FQUkQMXg0eYhMNTg9dU1VVEVAKXRkRDBE=\",\"queueTime\":0,\"applicationTime\":10,\"atts\":\"GBNWQ14aGE8=\",\"errorBeacon\":\"bam.nr-data.net\",\"agent\":\"\"}</script></body>\n</html>\n<style>\n.page-job-detail .title-job {\n    font-size: 24px !important;\n    margin-bottom: 0.5em;\n}\n.page-job-detail h1, .page-job-detail h2 {\n    font-weight: 400 !important;\n}\n\n</style>\n\n
  '''

  @defaultTimeout 10000
  @minimumSleepSeconds 5
  @randomSleepSeconds 10

  def perform(url, company_name, job_title, places) do
    bulk_upsert(body(url), url, company_name, job_title, places)
  end

  def perform(url, company_name, job_title, places, :test) do
    bulk_upsert(@body, url, company_name, job_title, places)
  end

  defp bulk_upsert(xml, url, company_name, job_title, []), do: nil
  defp bulk_upsert(xml, url, company_name, job_title, [current_place | remaining]) do
    upsert(xml, url, company_name, job_title, current_place)
    bulk_upsert(xml, url, company_name, job_title, remaining)
  end

  defp body(url) do
    %HTTPoison.Response{body: body} = HTTPoison.get!(url, %{}, hackney: [recv_timeout: @defaultTimeout, timeout: @defaultTimeout])
    body
  end


  defp upsert(xml, url, company_name, job_title, place) do
    params = params(xml, url, company_name, job_title, place)

    Task.start_link(fn ->

      case JobSourceCreator.perform(params) do
        {:ok, _} -> IO.inspect "ok"
        {:error, _model, changeset, _} ->
          IO.inspect "fail to upsert"
          :timer.sleep(:timer.seconds(@minimumSleepSeconds + :rand.uniform(@randomSleepSeconds)))
          JobSourceCreator.perform(params)
      end
    end)
  end

  defp params(xml, url, company_name, job_title, place) do
    detail = build_detail(xml)
    keywords = TechKeywordsFinder.perform(detail)
    %{
      url: url,
      name: company_name,
      title: job_title,
      job_title: job_title,
      detail: detail,
      place: place,
      source: "A16z",
      keywords: keywords
    }
  end

  defp build_detail(xml) do
    xml
    |> Floki.parse
    |> Floki.find(".wrap-job-description")
    |> Floki.text
  end

end
