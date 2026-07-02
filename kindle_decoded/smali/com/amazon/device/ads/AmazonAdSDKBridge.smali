.class Lcom/amazon/device/ads/AmazonAdSDKBridge;
.super Ljava/lang/Object;
.source "AmazonAdSDKBridge.java"

# interfaces
.implements Lcom/amazon/device/ads/AdSDKBridge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AmazonAdSDKBridge$SDKVersionJSIF;,
        Lcom/amazon/device/ads/AmazonAdSDKBridge$OpenInExternalBrowserJSIF;,
        Lcom/amazon/device/ads/AmazonAdSDKBridge$OverrideBackButtonJSIF;,
        Lcom/amazon/device/ads/AmazonAdSDKBridge$EnableCloseButtonJSIF;,
        Lcom/amazon/device/ads/AmazonAdSDKBridge$AmazonAdSDKEventListener;
    }
.end annotation


# static fields
.field private static final BRIDGE_NAME:Ljava/lang/String; = "amazonObject"

.field private static final ERROR_EVENT_FORMAT:Ljava/lang/String; = "amazonBridge.error(\'%s\', \'%s\');"

.field private static final JAVASCRIPT:Ljava/lang/String;

.field private static final LOGTAG:Ljava/lang/String; = "AmazonAdSDKBridge"


# instance fields
.field private final adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

.field private final javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

.field private final listener:Lcom/amazon/device/ads/AmazonAdSDKBridge$AmazonAdSDKEventListener;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final webUtils:Lcom/amazon/device/ads/WebUtils2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(function (window, console){\n    var version = \'1.0\',\n    debug = function(msg) {\n        console.log(\"Amazon Javascript log: \" + msg);\n    },\n    is_array = function (obj) {\n        return Object.prototype.toString.call(obj) === \'[object Array]\';\n    },\n    forEach = function (array, fn) {\n        var i;\n        for (i = 0; i < array.length; i++) {\n            if (i in array) {\n                fn.call(null, array[i], i);\n            }\n        }\n    },\n    listeners = [],\n    events = {\n        backButton: \'backButton\'\n    },\n    invokeListeners = function(event, args) {\n        var eventListeners = listeners[event] || [];\n        // fire all the listeners\n        forEach(eventListeners, function(listener){\n            try {\n                listener.apply(null, args);\n            }catch(e){\n                debug(\"Error executing \" + event + \" listener\");\n                debug(e);\n            }\n        });\n    },\n    backButtonEvent = function() {\n        invokeListeners(\"backButton\");\n    };\n    window.amazonBridge = {\n        backButton : backButtonEvent\n    };\n    window.amazon = {\n        // Command Flow\n        addEventListener : function(event, listener){\n            var eventListeners = listeners[event] || [],\n            alreadyRegistered = false;\n            \n            //verify the event is one that will actually occur\n            if (!events.hasOwnProperty(event)){\n                return;\n            }\n            \n            //register first set of listeners for this event\n            if (!is_array(listeners[event])) {\n                listeners[event] = eventListeners;\n            }\n            \n            forEach(eventListeners, function(l){ \n                // Listener already registered, so no need to add it.\n                    if (listener === l){\n                        alreadyRegistered = true;\n                    }\n                }\n            );\n            if (!alreadyRegistered){\n                listeners[event].push(listener);\n            }\n        },\n        removeEventListener : function(event, listener){\n            if (listeners.hasOwnProperty(event)) {\n                var eventListeners = listeners[event];\n                if (eventListeners) {\n                    var idx = eventListeners.indexOf(listener);\n                    if (idx !== -1) {\n                        eventListeners.splice(idx, 1);\n                    }\n                }\n            }\n        },\n        enableCloseButton: function(enable){\n            amazonObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\"EnableCloseButton\", JSON.stringify({\"enable\": enable}));\n        },\n        overrideBackButton: function(override){\n            amazonObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\"OverrideBackButton\", JSON.stringify({\"override\": override}));\n        },\n        openInExternalBrowser: function(url){\n            amazonObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\"OpenInExternalBrowser\", JSON.stringify({\"url\": url}));\n        },\n        getSDKVersion: function(){\n            var json = JSON.parse(amazonObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\"GetSDKVersion\", null));\n            return json.sdkVersion;\n        },\n        getVersion: function(){\n            return version;\n        },\n    };\n})(window, console);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AmazonAdSDKBridge;->JAVASCRIPT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/ads/AdControlAccessor;Lcom/amazon/device/ads/JavascriptInteractor;)V
    .locals 2

    .line 128
    new-instance v0, Lcom/amazon/device/ads/WebUtils2;

    invoke-direct {v0}, Lcom/amazon/device/ads/WebUtils2;-><init>()V

    new-instance v1, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazon/device/ads/AmazonAdSDKBridge;-><init>(Lcom/amazon/device/ads/AdControlAccessor;Lcom/amazon/device/ads/JavascriptInteractor;Lcom/amazon/device/ads/WebUtils2;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AdControlAccessor;Lcom/amazon/device/ads/JavascriptInteractor;Lcom/amazon/device/ads/WebUtils2;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Lcom/amazon/device/ads/AmazonAdSDKBridge$AmazonAdSDKEventListener;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/AmazonAdSDKBridge$AmazonAdSDKEventListener;-><init>(Lcom/amazon/device/ads/AmazonAdSDKBridge;)V

    iput-object v0, p0, Lcom/amazon/device/ads/AmazonAdSDKBridge;->listener:Lcom/amazon/device/ads/AmazonAdSDKBridge$AmazonAdSDKEventListener;

    .line 132
    iput-object p1, p0, Lcom/amazon/device/ads/AmazonAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    .line 133
    iput-object p2, p0, Lcom/amazon/device/ads/AmazonAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    .line 134
    iput-object p3, p0, Lcom/amazon/device/ads/AmazonAdSDKBridge;->webUtils:Lcom/amazon/device/ads/WebUtils2;

    .line 135
    sget-object p1, Lcom/amazon/device/ads/AmazonAdSDKBridge;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p4, p1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/AmazonAdSDKBridge;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 136
    iget-object p1, p0, Lcom/amazon/device/ads/AmazonAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance p2, Lcom/amazon/device/ads/AmazonAdSDKBridge$EnableCloseButtonJSIF;

    invoke-direct {p2, p0}, Lcom/amazon/device/ads/AmazonAdSDKBridge$EnableCloseButtonJSIF;-><init>(Lcom/amazon/device/ads/AmazonAdSDKBridge;)V

    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 137
    iget-object p1, p0, Lcom/amazon/device/ads/AmazonAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance p2, Lcom/amazon/device/ads/AmazonAdSDKBridge$OverrideBackButtonJSIF;

    invoke-direct {p2, p0}, Lcom/amazon/device/ads/AmazonAdSDKBridge$OverrideBackButtonJSIF;-><init>(Lcom/amazon/device/ads/AmazonAdSDKBridge;)V

    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 138
    iget-object p1, p0, Lcom/amazon/device/ads/AmazonAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance p2, Lcom/amazon/device/ads/AmazonAdSDKBridge$OpenInExternalBrowserJSIF;

    invoke-direct {p2, p0}, Lcom/amazon/device/ads/AmazonAdSDKBridge$OpenInExternalBrowserJSIF;-><init>(Lcom/amazon/device/ads/AmazonAdSDKBridge;)V

    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 139
    iget-object p1, p0, Lcom/amazon/device/ads/AmazonAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance p2, Lcom/amazon/device/ads/AmazonAdSDKBridge$SDKVersionJSIF;

    invoke-direct {p2, p0}, Lcom/amazon/device/ads/AmazonAdSDKBridge$SDKVersionJSIF;-><init>(Lcom/amazon/device/ads/AmazonAdSDKBridge;)V

    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/AmazonAdSDKBridge;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/amazon/device/ads/AmazonAdSDKBridge;->onBackButton()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/device/ads/AmazonAdSDKBridge;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/AmazonAdSDKBridge;->enableCloseButton(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/device/ads/AmazonAdSDKBridge;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/AmazonAdSDKBridge;->overrideBackButton(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/device/ads/AmazonAdSDKBridge;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/AmazonAdSDKBridge;->openInExternalBrowser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/device/ads/AmazonAdSDKBridge;)Ljava/lang/String;
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/amazon/device/ads/AmazonAdSDKBridge;->getSDKVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private canHaveCloseButton()Z
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->isModal()Z

    move-result v0

    return v0
.end method

.method private enableCloseButton(Z)V
    .locals 1

    .line 184
    invoke-direct {p0}, Lcom/amazon/device/ads/AmazonAdSDKBridge;->canHaveCloseButton()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 190
    iget-object p1, p0, Lcom/amazon/device/ads/AmazonAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/AdControlAccessor;->enableCloseButton(Z)V

    goto :goto_0

    .line 194
    :cond_1
    iget-object p1, p0, Lcom/amazon/device/ads/AmazonAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdControlAccessor;->removeCloseButton()V

    :goto_0
    return-void
.end method

.method private fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const-string p1, "amazonBridge.error(\'%s\', \'%s\');"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method private getSDKVersion()Ljava/lang/String;
    .locals 1

    .line 210
    invoke-static {}, Lcom/amazon/device/ads/Version;->getRawSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onBackButton()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    const-string v1, "amazonBridge.backButton();"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method private openInExternalBrowser(Ljava/lang/String;)V
    .locals 4

    .line 215
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->isVisible()Z

    move-result v0

    const-string/jumbo v1, "open"

    if-nez v0, :cond_0

    const-string p1, "Unable to open a URL while the ad is not visible"

    .line 217
    invoke-direct {p0, p1, v1}, Lcom/amazon/device/ads/AmazonAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonAdSDKBridge;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opening URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonAdSDKBridge;->webUtils:Lcom/amazon/device/ads/WebUtils2;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/WebUtils2;->isUrlValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdControlAccessor;->openUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid URL"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 228
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonAdSDKBridge;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 229
    invoke-direct {p0, p1, v1}, Lcom/amazon/device/ads/AmazonAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private overrideBackButton(Z)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdControlAccessor;->overrideBackButton(Z)V

    return-void
.end method


# virtual methods
.method public getJavascript()Ljava/lang/String;
    .locals 1

    .line 157
    sget-object v0, Lcom/amazon/device/ads/AmazonAdSDKBridge;->JAVASCRIPT:Ljava/lang/String;

    return-object v0
.end method

.method public getJavascriptInteractorExecutor()Lcom/amazon/device/ads/JavascriptInteractor$Executor;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutor()Lcom/amazon/device/ads/JavascriptInteractor$Executor;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "amazonObject"

    return-object v0
.end method

.method public getSDKEventListener()Lcom/amazon/device/ads/SDKEventListener;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonAdSDKBridge;->listener:Lcom/amazon/device/ads/AmazonAdSDKBridge$AmazonAdSDKEventListener;

    return-object v0
.end method

.method public hasNativeExecution()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
