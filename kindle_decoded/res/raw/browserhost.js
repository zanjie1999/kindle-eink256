/*
 * This file injects methods into the BrowserHost object that accept
 * JavaScript Objects as parameters and calls the related method that
 * accepts JSON strings.
 *
 * This file depends on the BrowserHost and JSON objects having already
 * been injected.
 */

window.BrowserHost = function() {
    wrappedHost = {};

    function NO_ARG_TYPE() {};
    function ONE_OBJECT_ARG_TYPE() {};
    function ONE_STRING_ARG_TYPE() {};
    function THREE_MIX_ARG_TYPE() {};

    /*
     * NOTE: when adding methods here, be sure that the implementation
     * in BrowserHost.java calls the isAllowed() method before executing.
     * This prevents disallowed pages from doing things through our
     * javascript bridge.
     */
    var proxiedMethods = {
        "checkTODO": new ONE_OBJECT_ARG_TYPE(),
        "openBook": new ONE_OBJECT_ARG_TYPE(),
        "bookStatus": new ONE_OBJECT_ARG_TYPE(),
        "reportMetrics": new ONE_OBJECT_ARG_TYPE(),
        "openInExternalBrowser": new ONE_STRING_ARG_TYPE(),
        "pageReady": new NO_ARG_TYPE(),
        "closeStore": new NO_ARG_TYPE(),
        "goToLauncher": new NO_ARG_TYPE(),
        "toggleForward": new ONE_STRING_ARG_TYPE(),
        "toggleMenu": new ONE_STRING_ARG_TYPE(),
        "closeAndGoto": new ONE_STRING_ARG_TYPE(),
        "dismissKeyboard": new NO_ARG_TYPE(),
        "onStoreFullyLoaded": new NO_ARG_TYPE(),
        "TOSOpened": new NO_ARG_TYPE(),
        "openExternalUrlsInternally": new ONE_STRING_ARG_TYPE(),
        "openArticle": new ONE_OBJECT_ARG_TYPE(),
        "launchBOTMLearnMore": new ONE_OBJECT_ARG_TYPE(),
        "shouldFollowOrderSOP": new THREE_MIX_ARG_TYPE(),
        "downloadAndOpenBookWithBookData": new ONE_OBJECT_ARG_TYPE(),
        "shareBook": new ONE_OBJECT_ARG_TYPE()
    };

    function generatePrivateBrowserHostProxy(methodName, argType) {
        return function() {
            var KCP_JS_PREFIX = "KindleAndroidReader_BrowserHost_";
            if (arguments.length === 0) {
                if (!(argType instanceof NO_ARG_TYPE)) {
                    throw "Call to method that expects arguments with no arguments";
                } else {
                    return prompt(KCP_JS_PREFIX + JSON.stringify({
                        methodName: methodName,
                        args: [""],
                        argsType: "null"
                    }));
                }
            } else if (arguments.length === 1) {
                if (typeof(arguments[0]) === "object") {
                    if (!(argType instanceof ONE_OBJECT_ARG_TYPE)) {
                        throw "Object as argument to method that isn't expecting it";
                    } else {
                        return prompt(KCP_JS_PREFIX + JSON.stringify({
                            methodName: methodName,
                            args: [arguments[0]],
                            argsType: "object"
                        }));
                    }
                } else if (typeof(arguments[0]) === "string") {
                    if (!(argType instanceof ONE_STRING_ARG_TYPE)) {
                        throw "String as argument to method that isn't expecting it";
                    } else {
                        return prompt(KCP_JS_PREFIX + JSON.stringify({
                            methodName: methodName,
                            args: [arguments[0]],
                            argsType: "string"
                        }));
                    }
                } else {
                    throw "Unsupported type for proxied method call";
                }
            } else if (methodName === "shouldFollowOrderSOP") {
                if (!(argType instanceof THREE_MIX_ARG_TYPE)) {
                    throw "Arguments to method that isn't expecting them";
                } else {
                    var isCheckout = arguments[2];
                    if (typeof isCheckout === 'undefined') {
                        isCheckout = -1;
                    }
                    var argArray = [arguments[0], arguments[1], isCheckout];
                    return prompt(KCP_JS_PREFIX + JSON.stringify({
                        methodName: methodName,
                        args: argArray,
                        argsType: "string,boolean,int"
                    }));
                }
            } else {
                throw "Unsupported number of arguments to proxied method call";
            }
        }
    }

    for (var i in proxiedMethods) {
        wrappedHost[i] = generatePrivateBrowserHostProxy(i, proxiedMethods[i]);
    }

    wrappedHost.nativeStatusReply = function(asin, type, status, percentDownloaded) {
        wrappedHost.bookStatusReply({
            id: {
                asin: asin,
                type: type
            },
            status: status,
            percentDownloaded: percentDownloaded
        });
    };

    wrappedHost.nativeBackClicked = function() {
        wrappedHost.onBackClicked();
    };

    wrappedHost.nativeMenuClicked = function() {
        wrappedHost.onMenuClicked();
    };

    wrappedHost.nativeForwardClicked = function() {
        wrappedHost.onForwardClicked();
    };

    return wrappedHost;
}();
var browserHostReadyEvent = document.createEvent('Event');
browserHostReadyEvent.initEvent('BrowserHostReady', true, true);
document.dispatchEvent(browserHostReadyEvent);