.class Lcom/amazon/device/ads/MRAIDAdSDKBridge;
.super Ljava/lang/Object;
.source "MRAIDAdSDKBridge.java"

# interfaces
.implements Lcom/amazon/device/ads/AdSDKBridge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$AlertDialogFactory;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$DeregisterViewabilityInterestJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$RegisterViewabilityInterestJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$StorePictureJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$CreateCalendarEventJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$SupportsJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$OpenJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$PlayVideoJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$ResizeJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$ExpandJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$CloseJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$IsViewableJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$UseCustomCloseJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetResizePropertiesJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetResizePropertiesJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetExpandPropertiesJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetExpandPropertiesJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetOrientationPropertiesJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetPlacementTypeJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetScreenSizeJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetMaxSizeJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetDefaultPositionJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetCurrentPositionJSIF;
    }
.end annotation


# static fields
.field private static final CLOSE_BUTTON_SIZE:I = 0x32

.field private static final CONTENT_DESCRIPTION_RESIZED_VIEW:Ljava/lang/String; = "resizedView"

.field private static final ERROR_EVENT_FORMAT:Ljava/lang/String; = "mraidBridge.error(\'%s\', \'%s\');"

.field private static final JAVASCRIPT:Ljava/lang/String;

.field private static final LOGTAG:Ljava/lang/String; = "MRAIDAdSDKBridge"

.field private static final MRAID_BRIDGE_NAME:Ljava/lang/String; = "mraidObject"

.field private static final PLACEMENT_TYPE_INLINE:Ljava/lang/String; = "inline"

.field private static final PLACEMENT_TYPE_INTERSTITIAL:Ljava/lang/String; = "interstitial"


# instance fields
.field private final adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

.field private final adUtils:Lcom/amazon/device/ads/AdUtils2;

.field private final alertDialogFactory:Lcom/amazon/device/ads/MRAIDAdSDKBridge$AlertDialogFactory;

.field private final buildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

.field private final defaultPosition:Lcom/amazon/device/ads/Position;

.field private final expandProperties:Lcom/amazon/device/ads/ExpandProperties;

.field private expandedWithUrl:Z

.field private final graphicsUtils:Lcom/amazon/device/ads/GraphicsUtils;

.field private final intentBuilderFactory:Lcom/amazon/device/ads/IntentBuilderFactory;

.field private final javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

.field private final layoutFactory:Lcom/amazon/device/ads/LayoutFactory;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final orientationProperties:Lcom/amazon/device/ads/OrientationProperties;

.field private final permissionChecker:Lcom/amazon/device/ads/PermissionChecker;

.field private final resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

.field private resizedView:Landroid/view/ViewGroup;

.field private rootView:Landroid/widget/FrameLayout;

.field private sdkEventListener:Lcom/amazon/device/ads/SDKEventListener;

.field private final threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

.field private final viewUtils:Lcom/amazon/device/ads/ViewUtils;

.field private final webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

.field private final webUtils:Lcom/amazon/device/ads/WebUtils2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(function (window, console) {\n    var is_array = function (obj) {\n        return Object.prototype.toString.call(obj) === \'[object Array]\';\n    },\n    registerViewabilityInterest = function(){\n       mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\"RegisterViewabilityInterest\", null);\n    },\n    deregisterViewabilityInterest = function(){\n       mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\"DeregisterViewabilityInterest\", null);\n    },\n    forEach = function (array, fn) {\n        var i;\n        for (i = 0; i < array.length; i++) {\n            if (i in array) {\n                fn.call(null, array[i], i);\n            }\n        }\n    },\n    events = {\n            error: \'error\',\n            ready: \'ready\',\n            sizeChange: \'sizeChange\',\n            stateChange: \'stateChange\',\n            viewableChange: \'viewableChange\'\n    },\n    states = [\"loading\",\"default\",\"expanded\",\"resized\",\"hidden\"],\n    placementTypes = [\"inline\", \"interstitial\"],\n    listeners = [],\n    version = \'2.0\',\n    currentState = \"loading\",\n    currentlyViewable = false,\n    supportedFeatures = null,\n    orientationProperties = {\"allowOrientationChange\":true,\"forceOrientation\":\"none\"},\n    // Error Event fires listeners\n    invokeListeners = function(event, args) {\n        var eventListeners = listeners[event] || [];\n        // fire all the listeners\n        forEach(eventListeners, function(listener){\n            try {\n                listener.apply(null, args);\n            }catch(e){\n                debug(\"Error executing \" + event + \" listener\");\n                debug(e);\n            }\n        });\n    },\n    debug = function(msg) {\n        console.log(\"MRAID log: \" + msg);\n    },\n    readyEvent = function() {\n        debug(\"MRAID ready\");\n        invokeListeners(\"ready\");\n    },\n    errorEvent = function(message, action) {\n        debug(\"error: \" + message + \" action: \" + action);\n        var args = [message, action];\n        invokeListeners(\"error\", args);\n    },\n    stateChangeEvent = function(state) {\n        debug(\"stateChange: \" + state);\n        var args = [state];\n        currentState = state;\n        invokeListeners(\"stateChange\", args);\n    },\n    viewableChangeEvent = function(viewable) {\n        if (viewable != currentlyViewable) {            debug(\"viewableChange: \" + viewable);\n            var args = [viewable];\n            invokeListeners(\"viewableChange\", args);\n            currentlyViewable = viewable;\n        }\n    }, \n    sizeChangeEvent = function(width, height) {\n        debug(\"sizeChange: \" + width + \"x\" + height);\n        var args = [width, height];\n        invokeListeners(\"sizeChange\", args);\n    };\n    window.mraidBridge = {\n            error : errorEvent,\n            ready : readyEvent,\n            stateChange : stateChangeEvent,\n            sizeChange : sizeChangeEvent,\n            viewableChange : viewableChangeEvent\n    };\n    // Define the mraid object\n    window.mraid = {\n            // Command Flow\n            addEventListener : function(event, listener){\n                var eventListeners = listeners[event] || [],\n                alreadyRegistered = false;\n                \n                //verify the event is one that will actually occur\n                if (!events.hasOwnProperty(event)){\n                    return;\n                }\n                \n                //register first set of listeners for this event\n                if (!is_array(listeners[event])) {\n                    listeners[event] = eventListeners;\n                }\n                \n                forEach(eventListeners, function(l){ \n                    // Listener already registered, so no need to add it.\n                        if (listener === l){\n                            alreadyRegistered = true;\n                        }\n                    }\n                );\n                if (!alreadyRegistered){\n                    debug(\'Registering Listener for \' + event + \': \' + listener)\n                    listeners[event].push(listener);\n                    if (event = \'viewableChange\'){ \n                       registerViewabilityInterest();  \n                    } \n                }\n            },\n            removeEventListener : function(event, listener){\n                if (listeners.hasOwnProperty(event)) {\n                    var eventListeners = listeners[event];\n                    if (eventListeners) {\n                        var idx = eventListeners.indexOf(listener);\n                        if (idx !== -1) {\n                           eventListeners.splice(idx, 1);\n                           if (event = \'viewableChange\'){ \n                               deregisterViewabilityInterest();  \n                           } \n                        }\n                    }\n                }\n            },\n            useCustomClose: function(bool){\n                mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\"UseCustomClose\", JSON.stringify({useCustomClose: bool}));\n            },\n            // Support\n            supports: function(feature){\n                if (!supportedFeatures)\n                {\n                    supportedFeatures = JSON.parse(mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\"Supports\", null));\n                }\n                return supportedFeatures[feature];\n            },\n            // Properties\n            getVersion: function(){\n                return version;\n            },\n            getState: function(){\n                return currentState;\n            },\n            getPlacementType: function(){\n                var json = JSON.parse(mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\"GetPlacementType\", null));\n                return json.placementType;\n            },\n            isViewable: function(){\n                var json = JSON.parse(mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\"IsViewable\", null));\n                return json.isViewable;\n            },\n            getExpandProperties: function(){\n                return JSON.parse(mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\"GetExpandProperties\", null));\n            },\n            setExpandProperties: function(properties){\n                //Backwards compatibility with MRAID 1.0 creatives\n                if (!!properties.lockOrientation){\n                    mraid.setOrientationProperties({\"allowOrientationChange\":false});\n                }\n                mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\"SetExpandProperties\", JSON.stringify(properties));\n            },\n            getOrientationProperties: function(){\n                return orientationProperties;\n            },\n            setOrientationProperties: function(properties){\n                mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\"SetOrientationProperties\", JSON.stringify(properties));\n            },\n            getResizeProperties: function(){\n                return JSON.parse(mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\"GetResizeProperties\", null));\n            },\n            setResizeProperties: function(properties){\n                mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\"SetResizeProperties\", JSON.stringify(properties));\n            },\n            getCurrentPosition: function(){\n                return JSON.parse(mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\"GetCurrentPosition\", null));\n            },\n            getMaxSize: function(){\n                return JSON.parse(mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\"GetMaxSize\", null));\n            },\n            getDefaultPosition: function(){\n                return JSON.parse(mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\"GetDefaultPosition\", null));\n            },\n            getScreenSize: function(){\n                return JSON.parse(mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\"GetScreenSize\", null));\n            },\n            // Operations\n            open: function(url) {\n                mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\"Open\", JSON.stringify({url: url}));\n            },\n            close: function() {\n                mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\"Close\", null);\n            },\n            expand: function(url) {\n                if (url !== undefined) {\n                    mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\"Expand\", JSON.stringify({url: url}));\n                } else {\n                    mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\"Expand\", JSON.stringify({url: \"\"}));\n                }\n            },\n            resize: function() {\n                mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\"Resize\", null);\n            },\n            createCalendarEvent: function(eventObject) {\n                mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\"CreateCalendarEvent\", JSON.stringify(eventObject));\n            },\n            playVideo: function(url){\n                mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\"PlayVideo\", JSON.stringify({url: url}));\n            },\n            storePicture: function(url){\n                mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\"StorePicture\", JSON.stringify({url: url}));\n            }\n    };\n})(window, console);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->JAVASCRIPT:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AdControlAccessor;Lcom/amazon/device/ads/JavascriptInteractor;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 325
    new-instance v4, Lcom/amazon/device/ads/PermissionChecker;

    move-object v3, v4

    invoke-direct {v4}, Lcom/amazon/device/ads/PermissionChecker;-><init>()V

    new-instance v5, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    move-object v4, v5

    invoke-direct {v5}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    new-instance v6, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    move-object v5, v6

    invoke-direct {v6}, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;-><init>()V

    .line 330
    invoke-static {}, Lcom/amazon/device/ads/ThreadUtils;->getThreadRunner()Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    move-result-object v6

    new-instance v8, Lcom/amazon/device/ads/GraphicsUtils;

    move-object v7, v8

    invoke-direct {v8}, Lcom/amazon/device/ads/GraphicsUtils;-><init>()V

    new-instance v9, Lcom/amazon/device/ads/MRAIDAdSDKBridge$AlertDialogFactory;

    move-object v8, v9

    invoke-direct {v9}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$AlertDialogFactory;-><init>()V

    new-instance v10, Lcom/amazon/device/ads/WebUtils2;

    move-object v9, v10

    invoke-direct {v10}, Lcom/amazon/device/ads/WebUtils2;-><init>()V

    new-instance v11, Lcom/amazon/device/ads/AdUtils2;

    move-object v10, v11

    invoke-direct {v11}, Lcom/amazon/device/ads/AdUtils2;-><init>()V

    new-instance v12, Lcom/amazon/device/ads/IntentBuilderFactory;

    move-object v11, v12

    invoke-direct {v12}, Lcom/amazon/device/ads/IntentBuilderFactory;-><init>()V

    new-instance v13, Lcom/amazon/device/ads/ExpandProperties;

    move-object v12, v13

    invoke-direct {v13}, Lcom/amazon/device/ads/ExpandProperties;-><init>()V

    new-instance v14, Lcom/amazon/device/ads/OrientationProperties;

    move-object v13, v14

    invoke-direct {v14}, Lcom/amazon/device/ads/OrientationProperties;-><init>()V

    new-instance v15, Lcom/amazon/device/ads/Position;

    move-object v14, v15

    invoke-direct {v15}, Lcom/amazon/device/ads/Position;-><init>()V

    new-instance v16, Lcom/amazon/device/ads/ResizeProperties;

    move-object/from16 v15, v16

    invoke-direct/range {v16 .. v16}, Lcom/amazon/device/ads/ResizeProperties;-><init>()V

    new-instance v17, Lcom/amazon/device/ads/AndroidBuildInfo;

    move-object/from16 v16, v17

    invoke-direct/range {v17 .. v17}, Lcom/amazon/device/ads/AndroidBuildInfo;-><init>()V

    new-instance v18, Lcom/amazon/device/ads/LayoutFactory;

    move-object/from16 v17, v18

    invoke-direct/range {v18 .. v18}, Lcom/amazon/device/ads/LayoutFactory;-><init>()V

    new-instance v19, Lcom/amazon/device/ads/ViewUtils;

    move-object/from16 v18, v19

    invoke-direct/range {v19 .. v19}, Lcom/amazon/device/ads/ViewUtils;-><init>()V

    .line 325
    invoke-direct/range {v0 .. v18}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;-><init>(Lcom/amazon/device/ads/AdControlAccessor;Lcom/amazon/device/ads/JavascriptInteractor;Lcom/amazon/device/ads/PermissionChecker;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/WebRequest$WebRequestFactory;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/GraphicsUtils;Lcom/amazon/device/ads/MRAIDAdSDKBridge$AlertDialogFactory;Lcom/amazon/device/ads/WebUtils2;Lcom/amazon/device/ads/AdUtils2;Lcom/amazon/device/ads/IntentBuilderFactory;Lcom/amazon/device/ads/ExpandProperties;Lcom/amazon/device/ads/OrientationProperties;Lcom/amazon/device/ads/Position;Lcom/amazon/device/ads/ResizeProperties;Lcom/amazon/device/ads/AndroidBuildInfo;Lcom/amazon/device/ads/LayoutFactory;Lcom/amazon/device/ads/ViewUtils;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AdControlAccessor;Lcom/amazon/device/ads/JavascriptInteractor;Lcom/amazon/device/ads/PermissionChecker;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/WebRequest$WebRequestFactory;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/GraphicsUtils;Lcom/amazon/device/ads/MRAIDAdSDKBridge$AlertDialogFactory;Lcom/amazon/device/ads/WebUtils2;Lcom/amazon/device/ads/AdUtils2;Lcom/amazon/device/ads/IntentBuilderFactory;Lcom/amazon/device/ads/ExpandProperties;Lcom/amazon/device/ads/OrientationProperties;Lcom/amazon/device/ads/Position;Lcom/amazon/device/ads/ResizeProperties;Lcom/amazon/device/ads/AndroidBuildInfo;Lcom/amazon/device/ads/LayoutFactory;Lcom/amazon/device/ads/ViewUtils;)V
    .locals 3

    move-object v0, p0

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    .line 300
    iput-boolean v1, v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandedWithUrl:Z

    move-object v1, p1

    .line 363
    iput-object v1, v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    move-object v1, p2

    .line 364
    iput-object v1, v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    .line 365
    sget-object v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->LOGTAG:Ljava/lang/String;

    move-object v2, p4

    invoke-virtual {p4, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    move-object v1, p3

    .line 366
    iput-object v1, v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->permissionChecker:Lcom/amazon/device/ads/PermissionChecker;

    move-object v1, p5

    .line 367
    iput-object v1, v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    move-object v1, p6

    .line 368
    iput-object v1, v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    move-object v1, p7

    .line 369
    iput-object v1, v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->graphicsUtils:Lcom/amazon/device/ads/GraphicsUtils;

    move-object v1, p8

    .line 370
    iput-object v1, v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->alertDialogFactory:Lcom/amazon/device/ads/MRAIDAdSDKBridge$AlertDialogFactory;

    move-object v1, p9

    .line 371
    iput-object v1, v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->webUtils:Lcom/amazon/device/ads/WebUtils2;

    move-object v1, p10

    .line 372
    iput-object v1, v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    move-object v1, p11

    .line 373
    iput-object v1, v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->intentBuilderFactory:Lcom/amazon/device/ads/IntentBuilderFactory;

    move-object v1, p12

    .line 374
    iput-object v1, v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    move-object/from16 v1, p13

    .line 375
    iput-object v1, v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->orientationProperties:Lcom/amazon/device/ads/OrientationProperties;

    move-object/from16 v1, p14

    .line 376
    iput-object v1, v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->defaultPosition:Lcom/amazon/device/ads/Position;

    move-object/from16 v1, p15

    .line 377
    iput-object v1, v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    move-object/from16 v1, p16

    .line 378
    iput-object v1, v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->buildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

    move-object/from16 v1, p17

    .line 379
    iput-object v1, v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->layoutFactory:Lcom/amazon/device/ads/LayoutFactory;

    move-object/from16 v1, p18

    .line 380
    iput-object v1, v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->viewUtils:Lcom/amazon/device/ads/ViewUtils;

    .line 381
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->populateJavascriptExecutorsInInteractor()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/AdControlAccessor;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getAdControlAccessor()Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Ljava/lang/String;Lcom/amazon/device/ads/ExpandProperties;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->launchExpandActivity(Ljava/lang/String;Lcom/amazon/device/ads/ExpandProperties;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/ResizeProperties;Lcom/amazon/device/ads/Size;Lcom/amazon/device/ads/Size;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeAdHelper(Lcom/amazon/device/ads/ResizeProperties;Lcom/amazon/device/ads/Size;Lcom/amazon/device/ads/Size;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/ViewUtils;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->viewUtils:Lcom/amazon/device/ads/ViewUtils;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/view/ViewGroup;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizedView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Z
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->isViewable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->registerViewabilityInterest()V

    return-void
.end method

.method static synthetic access$1500(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->deregisterViewabilityInterest()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fetchPicture(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->savePicture(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/content/Context;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/GraphicsUtils;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->graphicsUtils:Lcom/amazon/device/ads/GraphicsUtils;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/AdControlAccessor;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->collapseExpandedAdOnThread(Lcom/amazon/device/ads/AdControlAccessor;)V

    return-void
.end method

.method static synthetic access$800(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/ResizeProperties;Lcom/amazon/device/ads/Size;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeAdOnThread(Lcom/amazon/device/ads/ResizeProperties;Lcom/amazon/device/ads/Size;)V

    return-void
.end method

.method static synthetic access$900(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/AdControlAccessor;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    return-object p0
.end method

.method private collapseExpandedAdOnThread(Lcom/amazon/device/ads/AdControlAccessor;)V
    .locals 3

    const/4 v0, 0x0

    .line 1001
    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/AdControlAccessor;->setAdActivity(Landroid/app/Activity;)V

    .line 1002
    iget-boolean v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandedWithUrl:Z

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Expanded With URL"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 1005
    invoke-virtual {p1}, Lcom/amazon/device/ads/AdControlAccessor;->popView()Z

    goto :goto_0

    .line 1009
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Not Expanded with URL"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 1012
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1016
    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/AdControlAccessor;->moveViewBackToParent(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1017
    invoke-virtual {p1}, Lcom/amazon/device/ads/AdControlAccessor;->removeCloseButton()V

    .line 1019
    new-instance v0, Lcom/amazon/device/ads/AdEvent;

    sget-object v1, Lcom/amazon/device/ads/AdEvent$AdEventType;->CLOSED:Lcom/amazon/device/ads/AdEvent$AdEventType;

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/AdEvent;-><init>(Lcom/amazon/device/ads/AdEvent$AdEventType;)V

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/AdControlAccessor;->fireAdEvent(Lcom/amazon/device/ads/AdEvent;)V

    const-string/jumbo v0, "mraidBridge.stateChange(\'default\');"

    .line 1021
    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascript(Ljava/lang/String;)V

    .line 1023
    new-instance v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$7;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$7;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/AdControlAccessor;)V

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/AdControlAccessor;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private computeResizeSizeInPixels(Lcom/amazon/device/ads/ResizeProperties;)Lcom/amazon/device/ads/Size;
    .locals 2

    .line 1241
    invoke-virtual {p1}, Lcom/amazon/device/ads/ResizeProperties;->getWidth()I

    move-result v0

    .line 1242
    invoke-virtual {p1}, Lcom/amazon/device/ads/ResizeProperties;->getHeight()I

    move-result p1

    .line 1244
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/AdUtils2;->deviceIndependentPixelToPixel(I)I

    move-result v0

    .line 1245
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    invoke-virtual {v1, p1}, Lcom/amazon/device/ads/AdUtils2;->deviceIndependentPixelToPixel(I)I

    move-result p1

    .line 1247
    new-instance v1, Lcom/amazon/device/ads/Size;

    invoke-direct {v1, v0, p1}, Lcom/amazon/device/ads/Size;-><init>(II)V

    return-object v1
.end method

.method private createCalendarIntent(Lcom/amazon/device/ads/CalendarEventParameters;)V
    .locals 4

    .line 872
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 877
    invoke-virtual {p1}, Lcom/amazon/device/ads/CalendarEventParameters;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 879
    invoke-virtual {p1}, Lcom/amazon/device/ads/CalendarEventParameters;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 881
    invoke-virtual {p1}, Lcom/amazon/device/ads/CalendarEventParameters;->getLocation()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eventLocation"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 884
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/device/ads/CalendarEventParameters;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 886
    invoke-virtual {p1}, Lcom/amazon/device/ads/CalendarEventParameters;->getSummary()Ljava/lang/String;

    move-result-object v1

    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 889
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/device/ads/CalendarEventParameters;->getStart()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-string v3, "beginTime"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 891
    invoke-virtual {p1}, Lcom/amazon/device/ads/CalendarEventParameters;->getEnd()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 893
    invoke-virtual {p1}, Lcom/amazon/device/ads/CalendarEventParameters;->getEnd()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-string p1, "endTime"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 896
    :cond_2
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private createResizedView()V
    .locals 4

    .line 1252
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizedView:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 1254
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->rootView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 1256
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->rootView:Landroid/widget/FrameLayout;

    .line 1258
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->layoutFactory:Lcom/amazon/device/ads/LayoutFactory;

    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/amazon/device/ads/LayoutFactory$LayoutType;->RELATIVE_LAYOUT:Lcom/amazon/device/ads/LayoutFactory$LayoutType;

    const-string/jumbo v3, "resizedView"

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/ads/LayoutFactory;->createLayout(Landroid/content/Context;Lcom/amazon/device/ads/LayoutFactory$LayoutType;Ljava/lang/String;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizedView:Landroid/view/ViewGroup;

    :cond_1
    return-void
.end method

.method private deregisterViewabilityInterest()V
    .locals 1

    .line 1382
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->deregisterViewabilityInterest()V

    return-void
.end method

.method private fetchPicture(Ljava/lang/String;)V
    .locals 4

    const-string v0, "Server could not be contacted to download picture."

    const-string/jumbo v1, "storePicture"

    .line 918
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    invoke-virtual {v2}, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;->createWebRequest()Lcom/amazon/device/ads/WebRequest;

    move-result-object v2

    const/4 v3, 0x1

    .line 919
    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/WebRequest;->enableLog(Z)V

    .line 920
    invoke-virtual {v2, p1}, Lcom/amazon/device/ads/WebRequest;->setUrlString(Ljava/lang/String;)V

    .line 924
    :try_start_0
    invoke-virtual {v2}, Lcom/amazon/device/ads/WebRequest;->makeCall()Lcom/amazon/device/ads/WebRequest$WebResponse;

    move-result-object p1
    :try_end_0
    .catch Lcom/amazon/device/ads/WebRequest$WebRequestException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    .line 933
    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 936
    :cond_0
    new-instance v0, Lcom/amazon/device/ads/ImageResponseReader;

    invoke-virtual {p1}, Lcom/amazon/device/ads/WebRequest$WebResponse;->getResponseReader()Lcom/amazon/device/ads/ResponseReader;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->graphicsUtils:Lcom/amazon/device/ads/GraphicsUtils;

    invoke-direct {v0, p1, v2}, Lcom/amazon/device/ads/ImageResponseReader;-><init>(Lcom/amazon/device/ads/ResponseReader;Lcom/amazon/device/ads/GraphicsUtils;)V

    invoke-virtual {v0}, Lcom/amazon/device/ads/ImageResponseReader;->readAsBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "Picture could not be retrieved from server."

    .line 939
    invoke-direct {p0, p1, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 942
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$3;

    invoke-direct {v1, p0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$3;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Landroid/graphics/Bitmap;)V

    sget-object p1, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->SCHEDULE:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v2, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->MAIN_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {v0, v1, p1, v2}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    return-void

    .line 928
    :catch_0
    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1392
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const-string/jumbo p1, "mraidBridge.error(\'%s\', \'%s\');"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method private getAdControlAccessor()Lcom/amazon/device/ads/AdControlAccessor;
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private isValidClosePosition(Lcom/amazon/device/ads/RelativePosition;IILcom/amazon/device/ads/Size;II)Z
    .locals 3

    .line 1177
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdUtils2;->deviceIndependentPixelToPixel(I)I

    move-result v0

    .line 1182
    sget-object v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$12;->$SwitchMap$com$amazon$device$ads$RelativePosition:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 v0, 0x0

    goto/16 :goto_4

    .line 1221
    :pswitch_0
    invoke-virtual {p4}, Lcom/amazon/device/ads/Size;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p2

    div-int/lit8 p2, v0, 0x2

    sub-int/2addr p1, p2

    .line 1222
    invoke-virtual {p4}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p4, p3

    sub-int p3, p4, p2

    add-int p2, p1, v0

    goto :goto_1

    .line 1215
    :pswitch_1
    invoke-virtual {p4}, Lcom/amazon/device/ads/Size;->getHeight()I

    move-result p1

    add-int/2addr p2, p1

    .line 1216
    invoke-virtual {p4}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p3

    div-int/lit8 p3, v0, 0x2

    sub-int p3, p1, p3

    goto :goto_0

    .line 1209
    :pswitch_2
    invoke-virtual {p4}, Lcom/amazon/device/ads/Size;->getHeight()I

    move-result p1

    add-int/2addr p2, p1

    .line 1210
    invoke-virtual {p4}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result p1

    add-int/2addr p1, p3

    sub-int p3, p2, v0

    sub-int p4, p1, v0

    move v0, p1

    move p1, p2

    move p2, p3

    goto :goto_2

    .line 1203
    :pswitch_3
    invoke-virtual {p4}, Lcom/amazon/device/ads/Size;->getHeight()I

    move-result p1

    add-int/2addr p2, p1

    :goto_0
    sub-int p1, p2, v0

    :goto_1
    add-int/2addr v0, p3

    move v2, p2

    move p2, p1

    move p1, v2

    goto :goto_4

    .line 1198
    :pswitch_4
    invoke-virtual {p4}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p3

    div-int/lit8 p3, v0, 0x2

    sub-int p3, p1, p3

    goto :goto_3

    .line 1192
    :pswitch_5
    invoke-virtual {p4}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result p1

    add-int/2addr p1, p3

    add-int p3, p2, v0

    sub-int p4, p1, v0

    move v0, p1

    move p1, p3

    :goto_2
    move p3, p4

    goto :goto_4

    :goto_3
    :pswitch_6
    add-int p1, p2, v0

    add-int/2addr v0, p3

    :goto_4
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    if-gt p1, p6, :cond_1

    if-le v0, p5, :cond_0

    goto :goto_5

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_5
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isViewable()Z
    .locals 1

    .line 1172
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->isViewable()Z

    move-result v0

    return v0
.end method

.method private launchExpandActivity(Ljava/lang/String;Lcom/amazon/device/ads/ExpandProperties;)V
    .locals 3

    .line 696
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->intentBuilderFactory:Lcom/amazon/device/ads/IntentBuilderFactory;

    invoke-virtual {v0}, Lcom/amazon/device/ads/IntentBuilderFactory;->createIntentBuilder()Lcom/amazon/device/ads/IntentBuilder;

    move-result-object v0

    .line 697
    const-class v1, Lcom/amazon/device/ads/AdActivity;

    .line 698
    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/IntentBuilder;->withClass(Ljava/lang/Class;)Lcom/amazon/device/ads/IntentBuilder;

    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    .line 699
    invoke-virtual {v1}, Lcom/amazon/device/ads/AdControlAccessor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/IntentBuilder;->withContext(Landroid/content/Context;)Lcom/amazon/device/ads/IntentBuilder;

    const-class v1, Lcom/amazon/device/ads/ModalAdActivityAdapter;

    .line 700
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adapter"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/device/ads/IntentBuilder;->withExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/ads/IntentBuilder;

    const-string/jumbo v1, "url"

    .line 701
    invoke-virtual {v0, v1, p1}, Lcom/amazon/device/ads/IntentBuilder;->withExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/ads/IntentBuilder;

    .line 702
    invoke-virtual {p2}, Lcom/amazon/device/ads/ExpandProperties;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "expandProperties"

    invoke-virtual {v0, p2, p1}, Lcom/amazon/device/ads/IntentBuilder;->withExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/ads/IntentBuilder;

    iget-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->orientationProperties:Lcom/amazon/device/ads/OrientationProperties;

    .line 703
    invoke-virtual {p1}, Lcom/amazon/device/ads/OrientationProperties;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "orientationProperties"

    invoke-virtual {v0, p2, p1}, Lcom/amazon/device/ads/IntentBuilder;->withExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/ads/IntentBuilder;

    .line 704
    invoke-virtual {v0}, Lcom/amazon/device/ads/IntentBuilder;->fireIntent()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 707
    iget-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string p2, "Successfully expanded ad"

    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private populateJavascriptExecutorsInInteractor()V
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$CloseJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$CloseJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 387
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$CreateCalendarEventJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$CreateCalendarEventJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 388
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$ExpandJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$ExpandJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 389
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetCurrentPositionJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetCurrentPositionJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 390
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetDefaultPositionJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetDefaultPositionJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 391
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetExpandPropertiesJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetExpandPropertiesJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 392
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetMaxSizeJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetMaxSizeJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 393
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetPlacementTypeJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetPlacementTypeJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 394
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetResizePropertiesJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetResizePropertiesJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 395
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetScreenSizeJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetScreenSizeJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 396
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$OpenJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$OpenJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 397
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$PlayVideoJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$PlayVideoJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 398
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$ResizeJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$ResizeJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 399
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetExpandPropertiesJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetExpandPropertiesJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 400
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetOrientationPropertiesJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetOrientationPropertiesJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 401
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetResizePropertiesJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetResizePropertiesJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 402
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$StorePictureJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$StorePictureJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 403
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SupportsJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SupportsJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 404
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$UseCustomCloseJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$UseCustomCloseJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 405
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$IsViewableJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$IsViewableJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 406
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$RegisterViewabilityInterestJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$RegisterViewabilityInterestJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 407
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$DeregisterViewabilityInterestJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$DeregisterViewabilityInterestJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    return-void
.end method

.method private registerViewabilityInterest()V
    .locals 1

    .line 1372
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->registerViewabilityInterest()V

    return-void
.end method

.method private resizeAdHelper(Lcom/amazon/device/ads/ResizeProperties;Lcom/amazon/device/ads/Size;Lcom/amazon/device/ads/Size;)V
    .locals 10

    if-nez p3, :cond_0

    .line 1076
    iget-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string p2, "Size is null"

    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    return-void

    .line 1080
    :cond_0
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->createResizedView()V

    .line 1082
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->defaultPosition:Lcom/amazon/device/ads/Position;

    invoke-virtual {v1}, Lcom/amazon/device/ads/Position;->getX()I

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/device/ads/ResizeProperties;->getOffsetX()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdUtils2;->deviceIndependentPixelToPixel(I)I

    move-result v0

    .line 1083
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->defaultPosition:Lcom/amazon/device/ads/Position;

    invoke-virtual {v2}, Lcom/amazon/device/ads/Position;->getY()I

    move-result v2

    invoke-virtual {p1}, Lcom/amazon/device/ads/ResizeProperties;->getOffsetY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/AdUtils2;->deviceIndependentPixelToPixel(I)I

    move-result v1

    .line 1084
    invoke-virtual {p1}, Lcom/amazon/device/ads/ResizeProperties;->getCustomClosePosition()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/device/ads/RelativePosition;->fromString(Ljava/lang/String;)Lcom/amazon/device/ads/RelativePosition;

    move-result-object v9

    .line 1086
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    invoke-virtual {p3}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/AdUtils2;->deviceIndependentPixelToPixel(I)I

    move-result v7

    .line 1087
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    invoke-virtual {p3}, Lcom/amazon/device/ads/Size;->getHeight()I

    move-result p3

    invoke-virtual {v2, p3}, Lcom/amazon/device/ads/AdUtils2;->deviceIndependentPixelToPixel(I)I

    move-result v8

    .line 1088
    invoke-virtual {p1}, Lcom/amazon/device/ads/ResizeProperties;->getAllowOffscreen()Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_6

    .line 1090
    invoke-virtual {p2}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result p1

    if-le p1, v7, :cond_1

    .line 1092
    invoke-virtual {p2, v7}, Lcom/amazon/device/ads/Size;->setWidth(I)V

    .line 1094
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/device/ads/Size;->getHeight()I

    move-result p1

    if-le p1, v8, :cond_2

    .line 1096
    invoke-virtual {p2, v8}, Lcom/amazon/device/ads/Size;->setHeight(I)V

    :cond_2
    if-gez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    .line 1102
    :cond_3
    invoke-virtual {p2}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result p1

    add-int/2addr p1, v0

    if-le p1, v7, :cond_4

    .line 1104
    invoke-virtual {p2}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result p1

    sub-int v0, v7, p1

    :cond_4
    :goto_0
    if-gez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_1

    .line 1110
    :cond_5
    invoke-virtual {p2}, Lcom/amazon/device/ads/Size;->getHeight()I

    move-result p1

    add-int/2addr p1, v1

    if-le p1, v8, :cond_7

    .line 1112
    invoke-virtual {p2}, Lcom/amazon/device/ads/Size;->getHeight()I

    move-result p1

    sub-int v1, v8, p1

    goto :goto_1

    :cond_6
    move-object v2, p0

    move-object v3, v9

    move v4, v1

    move v5, v0

    move-object v6, p2

    .line 1118
    invoke-direct/range {v2 .. v8}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->isValidClosePosition(Lcom/amazon/device/ads/RelativePosition;IILcom/amazon/device/ads/Size;II)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "Resize failed because close event area must be entirely on screen."

    const-string/jumbo p2, "resize"

    .line 1120
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1125
    :cond_7
    :goto_1
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p2}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Lcom/amazon/device/ads/Size;->getHeight()I

    move-result v3

    invoke-direct {p1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1126
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    iget-object v3, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizedView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, p1, p3}, Lcom/amazon/device/ads/AdControlAccessor;->moveViewToViewGroup(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Z)V

    .line 1128
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p2}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Lcom/amazon/device/ads/Size;->getHeight()I

    move-result p2

    invoke-direct {p1, v2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x30

    .line 1131
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1132
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1133
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1134
    iget-object p2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->rootView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizedView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1136
    iget-object p2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizedView:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 1140
    :cond_8
    iget-object p2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->rootView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizedView:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1143
    :goto_2
    iget-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {p1, p3, v9}, Lcom/amazon/device/ads/AdControlAccessor;->enableCloseButton(ZLcom/amazon/device/ads/RelativePosition;)V

    .line 1146
    iget-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizedView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 1147
    new-instance p2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;

    invoke-direct {p2, p0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private resizeAdOnThread(Lcom/amazon/device/ads/ResizeProperties;Lcom/amazon/device/ads/Size;)V
    .locals 2

    .line 1051
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->getMaxSize()Lcom/amazon/device/ads/Size;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/ResizeProperties;Lcom/amazon/device/ads/Size;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdControlAccessor;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 1068
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeAdHelper(Lcom/amazon/device/ads/ResizeProperties;Lcom/amazon/device/ads/Size;Lcom/amazon/device/ads/Size;)V

    :goto_0
    return-void
.end method

.method private savePicture(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 954
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->alertDialogFactory:Lcom/amazon/device/ads/MRAIDAdSDKBridge$AlertDialogFactory;

    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$AlertDialogFactory;->createBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Would you like to save the image to your gallery?"

    .line 955
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 956
    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$4;

    invoke-direct {v1, p0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$4;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Landroid/graphics/Bitmap;)V

    const-string p1, "Yes"

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 970
    new-instance p1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$5;

    invoke-direct {p1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$5;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    const-string v1, "No"

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 978
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showNativeCloseButtonIfNeeded()V
    .locals 2

    .line 616
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->isModal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-virtual {v1}, Lcom/amazon/device/ads/ExpandProperties;->getUseCustomClose()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdControlAccessor;->showNativeCloseButtonImage(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 624
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->closeAd()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unable to close ad in its current state."

    const-string v1, "close"

    .line 626
    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method collapseExpandedAd(Lcom/amazon/device/ads/AdControlAccessor;)V
    .locals 3

    .line 988
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Collapsing expanded ad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 989
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;

    invoke-direct {v1, p0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/AdControlAccessor;)V

    sget-object p1, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->RUN_ASAP:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v2, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->MAIN_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {v0, v1, p1, v2}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    return-void
.end method

.method public createCalendarEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/16 v0, 0xe

    .line 845
    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    const-string v1, "createCalendarEvent"

    if-nez v0, :cond_0

    .line 848
    iget-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string p2, "API version does not support calendar operations."

    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 849
    invoke-direct {p0, p2, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 857
    :cond_0
    :try_start_0
    new-instance v0, Lcom/amazon/device/ads/CalendarEventParameters;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/amazon/device/ads/CalendarEventParameters;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->createCalendarIntent(Lcom/amazon/device/ads/CalendarEventParameters;)V

    return-void

    :catch_0
    move-exception p1

    .line 862
    iget-object p2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 863
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public expand(Ljava/lang/String;)V
    .locals 4

    .line 637
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->isInterstitial()Z

    move-result v0

    const-string v1, "expand"

    if-eqz v0, :cond_0

    const-string p1, "Unable to expand an interstitial ad placement"

    .line 639
    invoke-direct {p0, p1, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->isModal()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Unable to expand while expanded."

    .line 645
    invoke-direct {p0, p1, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 648
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->isVisible()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "Unable to expand ad while it is not visible."

    .line 650
    invoke-direct {p0, p1, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 654
    :cond_2
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ExpandProperties;->getWidth()I

    move-result v0

    const/4 v2, -0x1

    const/16 v3, 0x32

    if-ge v0, v3, :cond_3

    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ExpandProperties;->getWidth()I

    move-result v0

    if-ne v0, v2, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    .line 655
    invoke-virtual {v0}, Lcom/amazon/device/ads/ExpandProperties;->getHeight()I

    move-result v0

    if-ge v0, v3, :cond_5

    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ExpandProperties;->getHeight()I

    move-result v0

    if-eq v0, v2, :cond_5

    :cond_4
    const-string p1, "Expand size is too small, must leave room for close."

    .line 657
    invoke-direct {p0, p1, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 661
    :cond_5
    invoke-static {p1}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 663
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->webUtils:Lcom/amazon/device/ads/WebUtils2;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/WebUtils2;->isUrlValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 665
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ExpandProperties;->toClone()Lcom/amazon/device/ads/ExpandProperties;

    move-result-object v0

    .line 666
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    new-instance v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/ExpandProperties;)V

    invoke-virtual {v1, p1, v2}, Lcom/amazon/device/ads/AdControlAccessor;->preloadUrl(Ljava/lang/String;Lcom/amazon/device/ads/PreloadCallback;)V

    goto :goto_0

    :cond_6
    const-string p1, "Unable to expand with invalid URL."

    .line 682
    invoke-direct {p0, p1, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 689
    :cond_7
    iget-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-static {p1}, Lcom/amazon/device/ads/AdControllerFactory;->cacheAdControlAccessor(Lcom/amazon/device/ads/AdControlAccessor;)V

    const/4 p1, 0x0

    .line 690
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->launchExpandActivity(Ljava/lang/String;Lcom/amazon/device/ads/ExpandProperties;)V

    :goto_0
    return-void
.end method

.method public getCurrentPosition()Lorg/json/JSONObject;
    .locals 3

    .line 474
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->getCurrentPosition()Lcom/amazon/device/ads/Position;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Current position is unavailable because the ad has not yet been displayed."

    const-string v1, "getCurrentPosition"

    .line 478
    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    new-instance v0, Lcom/amazon/device/ads/Position;

    new-instance v1, Lcom/amazon/device/ads/Size;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/amazon/device/ads/Size;-><init>(II)V

    invoke-direct {v0, v1, v2, v2}, Lcom/amazon/device/ads/Position;-><init>(Lcom/amazon/device/ads/Size;II)V

    invoke-virtual {v0}, Lcom/amazon/device/ads/Position;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->getCurrentPosition()Lcom/amazon/device/ads/Position;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/Position;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPosition()Lorg/json/JSONObject;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->defaultPosition:Lcom/amazon/device/ads/Position;

    invoke-virtual {v0}, Lcom/amazon/device/ads/Position;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getExpandPropertiesForCreative()Lorg/json/JSONObject;
    .locals 4

    .line 541
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ExpandProperties;->toClone()Lcom/amazon/device/ads/ExpandProperties;

    move-result-object v0

    .line 543
    invoke-virtual {v0}, Lcom/amazon/device/ads/ExpandProperties;->getWidth()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 545
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdControlAccessor;->getScreenSize()Lcom/amazon/device/ads/Size;

    move-result-object v1

    .line 546
    invoke-virtual {v1}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amazon/device/ads/ExpandProperties;->setWidth(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 548
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/device/ads/ExpandProperties;->getHeight()I

    move-result v3

    if-ne v3, v2, :cond_2

    if-nez v1, :cond_1

    .line 552
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdControlAccessor;->getScreenSize()Lcom/amazon/device/ads/Size;

    move-result-object v1

    .line 554
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/device/ads/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/ExpandProperties;->setHeight(I)V

    .line 556
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/device/ads/ExpandProperties;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getJavascript()Ljava/lang/String;
    .locals 1

    .line 431
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->JAVASCRIPT:Ljava/lang/String;

    return-object v0
.end method

.method public getJavascriptInteractorExecutor()Lcom/amazon/device/ads/JavascriptInteractor$Executor;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutor()Lcom/amazon/device/ads/JavascriptInteractor$Executor;

    move-result-object v0

    return-object v0
.end method

.method public getMaxSize()Lorg/json/JSONObject;
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->getMaxSize()Lcom/amazon/device/ads/Size;

    move-result-object v0

    if-nez v0, :cond_0

    .line 494
    new-instance v0, Lcom/amazon/device/ads/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/amazon/device/ads/Size;-><init>(II)V

    invoke-virtual {v0}, Lcom/amazon/device/ads/Size;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 496
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/device/ads/Size;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "mraidObject"

    return-object v0
.end method

.method public getPlacementType()Ljava/lang/String;
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->isInterstitial()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "interstitial"

    return-object v0

    :cond_0
    const-string v0, "inline"

    return-object v0
.end method

.method public getResizeProperties()Lorg/json/JSONObject;
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ResizeProperties;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getSDKEventListener()Lcom/amazon/device/ads/SDKEventListener;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->sdkEventListener:Lcom/amazon/device/ads/SDKEventListener;

    if-nez v0, :cond_0

    .line 443
    new-instance v0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    iput-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->sdkEventListener:Lcom/amazon/device/ads/SDKEventListener;

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->sdkEventListener:Lcom/amazon/device/ads/SDKEventListener;

    return-object v0
.end method

.method public getScreenSize()Lorg/json/JSONObject;
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->getScreenSize()Lcom/amazon/device/ads/Size;

    move-result-object v0

    if-nez v0, :cond_0

    .line 504
    new-instance v0, Lcom/amazon/device/ads/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/amazon/device/ads/Size;-><init>(II)V

    invoke-virtual {v0}, Lcom/amazon/device/ads/Size;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 506
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/device/ads/Size;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedFeatures()Lorg/json/JSONObject;
    .locals 4

    const-string v0, "android.hardware.telephony"

    .line 808
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 811
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v3, "sms"

    .line 812
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 814
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v2, "tel"

    .line 815
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const/16 v0, 0xe

    .line 817
    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    const-string v2, "calendar"

    .line 818
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 820
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->permissionChecker:Lcom/amazon/device/ads/PermissionChecker;

    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/PermissionChecker;->hasWriteExternalStoragePermission(Landroid/content/Context;)Z

    move-result v0

    const-string/jumbo v2, "storePicture"

    .line 821
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const/16 v0, 0xb

    .line 823
    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    const-string v2, "inlineVideo"

    .line 824
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method

.method public hasNativeExecution()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public open(Ljava/lang/String;)V
    .locals 4

    .line 774
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->isVisible()Z

    move-result v0

    const-string/jumbo v1, "open"

    if-nez v0, :cond_0

    const-string p1, "Unable to open a URL while the ad is not visible"

    .line 776
    invoke-direct {p0, p1, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opening URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 780
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->webUtils:Lcom/amazon/device/ads/WebUtils2;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/WebUtils2;->isUrlValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 782
    invoke-static {p1}, Lcom/amazon/device/ads/WebUtils;->getScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    .line 783
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 795
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdControlAccessor;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 786
    :cond_2
    :goto_0
    new-instance v0, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;

    invoke-direct {v0}, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;-><init>()V

    .line 787
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->withContext(Landroid/content/Context;)Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;

    .line 788
    invoke-virtual {v0}, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->withExternalBrowserButton()Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;

    .line 789
    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->withUrl(Ljava/lang/String;)Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;

    .line 790
    invoke-virtual {v0}, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->show()V

    goto :goto_1

    .line 800
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid URL"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 801
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 802
    invoke-direct {p0, p1, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method orientationPropertyChange()V
    .locals 6

    .line 1296
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->isModal()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1301
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->getAdActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1304
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string/jumbo v1, "unable to handle orientation property change on a non-expanded ad"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    return-void

    .line 1308
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    .line 1309
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdControlAccessor;->getCurrentPosition()Lcom/amazon/device/ads/Position;

    move-result-object v2

    .line 1310
    iget-object v3, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current Orientation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 1311
    sget-object v3, Lcom/amazon/device/ads/MRAIDAdSDKBridge$12;->$SwitchMap$com$amazon$device$ads$ForceOrientation:[I

    iget-object v4, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->orientationProperties:Lcom/amazon/device/ads/OrientationProperties;

    invoke-virtual {v4}, Lcom/amazon/device/ads/OrientationProperties;->getForceOrientation()Lcom/amazon/device/ads/ForceOrientation;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x6

    .line 1317
    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x7

    .line 1314
    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1324
    :goto_0
    sget-object v3, Lcom/amazon/device/ads/ForceOrientation;->NONE:Lcom/amazon/device/ads/ForceOrientation;

    iget-object v4, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->orientationProperties:Lcom/amazon/device/ads/OrientationProperties;

    invoke-virtual {v4}, Lcom/amazon/device/ads/OrientationProperties;->getForceOrientation()Lcom/amazon/device/ads/ForceOrientation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1326
    iget-object v3, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->orientationProperties:Lcom/amazon/device/ads/OrientationProperties;

    invoke-virtual {v3}, Lcom/amazon/device/ads/OrientationProperties;->isAllowOrientationChange()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1329
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 1332
    invoke-virtual {v0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 1335
    :cond_4
    iget-object v3, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdControlAccessor;->isModal()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1337
    iget-object v3, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->buildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

    invoke-static {v0, v3}, Lcom/amazon/device/ads/DisplayUtils;->determineCanonicalScreenOrientation(Landroid/content/Context;Lcom/amazon/device/ads/AndroidBuildInfo;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1341
    :cond_5
    :goto_1
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    .line 1342
    iget-object v3, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New Orientation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    if-eq v0, v1, :cond_6

    if-eqz v2, :cond_6

    .line 1348
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->getCurrentPosition()Lcom/amazon/device/ads/Position;

    move-result-object v0

    .line 1349
    invoke-virtual {v2}, Lcom/amazon/device/ads/Position;->getSize()Lcom/amazon/device/ads/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/amazon/device/ads/Position;->getSize()Lcom/amazon/device/ads/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result v0

    if-eq v1, v0, :cond_6

    .line 1351
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$11;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$11;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdControlAccessor;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public playVideo(Ljava/lang/String;)V
    .locals 4

    .line 738
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->isVisible()Z

    move-result v0

    const-string/jumbo v1, "playVideo"

    if-nez v0, :cond_0

    const-string p1, "Unable to play a video while the ad is not visible"

    .line 740
    invoke-direct {p0, p1, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 743
    :cond_0
    invoke-static {p1}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Unable to play a video without a URL"

    .line 745
    invoke-direct {p0, p1, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 750
    :cond_1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "url"

    .line 751
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/amazon/device/ads/AdActivity;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "adapter"

    .line 753
    const-class v3, Lcom/amazon/device/ads/VideoActionHandler;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 754
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 755
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 759
    :catch_0
    iget-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v0, "Failed to open VideoAction activity"

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    const-string p1, "Internal SDK Failure. Unable to launch VideoActionHandler"

    .line 760
    invoke-direct {p0, p1, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method reportSizeChangeEvent()V
    .locals 4

    .line 1265
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->getCurrentPosition()Lcom/amazon/device/ads/Position;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1268
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mraidBridge.sizeChange("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/device/ads/Position;->getSize()Lcom/amazon/device/ads/Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/device/ads/Position;->getSize()Lcom/amazon/device/ads/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/Size;->getHeight()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascript(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public resize()V
    .locals 2

    .line 713
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->isInterstitial()Z

    move-result v0

    const-string/jumbo v1, "resize"

    if-eqz v0, :cond_0

    const-string v0, "Unable to resize an interstitial ad placement."

    .line 715
    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->isModal()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Unable to resize while expanded."

    .line 720
    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 723
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->isVisible()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Unable to resize ad while it is not visible."

    .line 725
    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 728
    :cond_2
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/amazon/device/ads/ResizeProperties;->areResizePropertiesSet()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 733
    :cond_3
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeAd(Lcom/amazon/device/ads/ResizeProperties;)V

    return-void

    :cond_4
    :goto_0
    const-string v0, "Resize properties must be set before calling resize."

    .line 730
    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method resizeAd(Lcom/amazon/device/ads/ResizeProperties;)V
    .locals 3

    .line 1037
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->computeResizeSizeInPixels(Lcom/amazon/device/ads/ResizeProperties;)Lcom/amazon/device/ads/Size;

    move-result-object v0

    .line 1038
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    new-instance v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;

    invoke-direct {v2, p0, p1, v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/ResizeProperties;Lcom/amazon/device/ads/Size;)V

    sget-object p1, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->RUN_ASAP:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v0, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->MAIN_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {v1, v2, p1, v0}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    return-void
.end method

.method public setExpandProperties(Lorg/json/JSONObject;)V
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/ExpandProperties;->fromJSONObject(Lorg/json/JSONObject;)V

    .line 562
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->showNativeCloseButtonIfNeeded()V

    return-void
.end method

.method public setOrientationProperties(Lorg/json/JSONObject;)V
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->isInterstitial()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->isModal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->orientationChangeAttemptedWhenNotAllowed()V

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->orientationProperties:Lcom/amazon/device/ads/OrientationProperties;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/OrientationProperties;->fromJSONObject(Lorg/json/JSONObject;)V

    .line 536
    invoke-virtual {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->orientationPropertyChange()V

    return-void
.end method

.method public setResizeProperties(Lorg/json/JSONObject;)V
    .locals 9

    .line 572
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/ResizeProperties;->fromJSONObject(Lorg/json/JSONObject;)Z

    move-result p1

    const-string/jumbo v0, "setResizeProperties"

    if-nez p1, :cond_0

    const-string p1, "Invalid resize properties"

    .line 574
    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 576
    :cond_0
    iget-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {p1}, Lcom/amazon/device/ads/ResizeProperties;->getWidth()I

    move-result p1

    const/16 v1, 0x32

    if-lt p1, v1, :cond_4

    iget-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {p1}, Lcom/amazon/device/ads/ResizeProperties;->getHeight()I

    move-result p1

    if-ge p1, v1, :cond_1

    goto/16 :goto_1

    .line 583
    :cond_1
    iget-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdControlAccessor;->getMaxSize()Lcom/amazon/device/ads/Size;

    move-result-object p1

    .line 584
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {v1}, Lcom/amazon/device/ads/ResizeProperties;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result v2

    if-gt v1, v2, :cond_3

    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {v1}, Lcom/amazon/device/ads/ResizeProperties;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/device/ads/Size;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_2

    goto :goto_0

    .line 589
    :cond_2
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {v1}, Lcom/amazon/device/ads/ResizeProperties;->getAllowOffscreen()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 591
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-direct {p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->computeResizeSizeInPixels(Lcom/amazon/device/ads/ResizeProperties;)Lcom/amazon/device/ads/Size;

    move-result-object v6

    .line 592
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->defaultPosition:Lcom/amazon/device/ads/Position;

    invoke-virtual {v2}, Lcom/amazon/device/ads/Position;->getX()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {v3}, Lcom/amazon/device/ads/ResizeProperties;->getOffsetX()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/AdUtils2;->deviceIndependentPixelToPixel(I)I

    move-result v5

    .line 593
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->defaultPosition:Lcom/amazon/device/ads/Position;

    invoke-virtual {v2}, Lcom/amazon/device/ads/Position;->getY()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {v3}, Lcom/amazon/device/ads/ResizeProperties;->getOffsetY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/AdUtils2;->deviceIndependentPixelToPixel(I)I

    move-result v4

    .line 594
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {v1}, Lcom/amazon/device/ads/ResizeProperties;->getCustomClosePosition()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/device/ads/RelativePosition;->fromString(Ljava/lang/String;)Lcom/amazon/device/ads/RelativePosition;

    move-result-object v3

    .line 596
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    invoke-virtual {p1}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/AdUtils2;->deviceIndependentPixelToPixel(I)I

    move-result v7

    .line 597
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    invoke-virtual {p1}, Lcom/amazon/device/ads/Size;->getHeight()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/amazon/device/ads/AdUtils2;->deviceIndependentPixelToPixel(I)I

    move-result v8

    move-object v2, p0

    .line 599
    invoke-direct/range {v2 .. v8}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->isValidClosePosition(Lcom/amazon/device/ads/RelativePosition;IILcom/amazon/device/ads/Size;II)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "Invalid resize properties. Close event area must be entirely on screen."

    .line 601
    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {p1}, Lcom/amazon/device/ads/ResizeProperties;->reset()V

    goto :goto_2

    :cond_3
    :goto_0
    const-string p1, "Resize properties width and height cannot be larger than the maximum size."

    .line 586
    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {p1}, Lcom/amazon/device/ads/ResizeProperties;->reset()V

    goto :goto_2

    :cond_4
    :goto_1
    const-string p1, "Resize properties width and height must be greater than 50dp in order to fit the close button."

    .line 578
    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {p1}, Lcom/amazon/device/ads/ResizeProperties;->reset()V

    :cond_5
    :goto_2
    return-void
.end method

.method public setUseCustomClose(Z)V
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/ExpandProperties;->setUseCustomClose(Ljava/lang/Boolean;)V

    .line 611
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->showNativeCloseButtonIfNeeded()V

    return-void
.end method

.method public storePicture(Ljava/lang/String;)V
    .locals 3

    .line 901
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->permissionChecker:Lcom/amazon/device/ads/PermissionChecker;

    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/PermissionChecker;->hasWriteExternalStoragePermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Picture could not be stored because permission was denied."

    const-string/jumbo v0, "storePicture"

    .line 903
    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$2;

    invoke-direct {v1, p0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$2;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Ljava/lang/String;)V

    sget-object p1, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->RUN_ASAP:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v2, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->BACKGROUND_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {v0, v1, p1, v2}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    return-void
.end method

.method updateDefaultPosition(IIII)V
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->defaultPosition:Lcom/amazon/device/ads/Position;

    new-instance v1, Lcom/amazon/device/ads/Size;

    invoke-direct {v1, p1, p2}, Lcom/amazon/device/ads/Size;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/Position;->setSize(Lcom/amazon/device/ads/Size;)V

    .line 465
    iget-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->defaultPosition:Lcom/amazon/device/ads/Position;

    invoke-virtual {p1, p3}, Lcom/amazon/device/ads/Position;->setX(I)V

    .line 466
    iget-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->defaultPosition:Lcom/amazon/device/ads/Position;

    invoke-virtual {p1, p4}, Lcom/amazon/device/ads/Position;->setY(I)V

    return-void
.end method
