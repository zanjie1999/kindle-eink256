.class public Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;
.super Ljava/lang/Object;
.source "AudibleWebViewJavaScriptBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge$SampleState;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final gson:Lcom/google/gson/Gson;

.field private final handler:Landroid/os/Handler;

.field private final javaScriptFunctionCaller:Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller;

.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final locationSeekerController:Lcom/audible/hushpuppy/controller/LocationSeekerController;

.field private final name:Ljava/lang/String;

.field private final toaWebViewUpsellController:Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller;Ljava/lang/ref/WeakReference;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->kindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v5

    new-instance v6, Landroid/os/Handler;

    .line 70
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->locationSeekerController()Lcom/audible/hushpuppy/controller/LocationSeekerController;

    move-result-object v7

    .line 71
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->toaWebViewUpsellController()Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 69
    invoke-direct/range {v1 .. v8}, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;-><init>(Ljava/lang/String;Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller;Ljava/lang/ref/WeakReference;Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/os/Handler;Lcom/audible/hushpuppy/controller/LocationSeekerController;Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller;Ljava/lang/ref/WeakReference;Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/os/Handler;Lcom/audible/hushpuppy/controller/LocationSeekerController;Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Landroid/os/Handler;",
            "Lcom/audible/hushpuppy/controller/LocationSeekerController;",
            "Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;",
            ")V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "The bridge name cannot be null"

    .line 79
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->name:Ljava/lang/String;

    const-string p1, "javaScriptFunctionCaller cannot be null"

    .line 80
    invoke-static {p2, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller;

    iput-object p2, p0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->javaScriptFunctionCaller:Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller;

    const-string p1, "activityWeakReference cannot be null"

    .line 81
    invoke-static {p3, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->activity:Landroid/app/Activity;

    const-string p1, "kindleReaderSDK cannot be null"

    .line 83
    invoke-static {p4, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p4, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p4, p0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string p1, "handler can\'t be null"

    .line 84
    invoke-static {p5, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p5, Landroid/os/Handler;

    iput-object p5, p0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->handler:Landroid/os/Handler;

    const-string p1, "locationSeekerController can\'t be null"

    .line 85
    invoke-static {p6, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p6, Lcom/audible/hushpuppy/controller/LocationSeekerController;

    iput-object p6, p0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->locationSeekerController:Lcom/audible/hushpuppy/controller/LocationSeekerController;

    const-string p1, "toaWebViewUpsellController can\'t be null"

    .line 86
    invoke-static {p7, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p7, Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;

    iput-object p7, p0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->toaWebViewUpsellController:Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;

    .line 87
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;)Lcom/audible/hushpuppy/controller/LocationSeekerController;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->locationSeekerController:Lcom/audible/hushpuppy/controller/LocationSeekerController;

    return-object p0
.end method


# virtual methods
.method public onOrderComplete(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 217
    sget-object v0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrderComplete JSB is called, json is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 218
    iget-object p1, p0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->toaWebViewUpsellController:Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;->onOrderComplete()V

    return-void
.end method

.method public onOrderCompleteReadAndListen(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 195
    sget-object v0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrderCompleteReadAndListen JSB is called, json is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->gson:Lcom/google/gson/Gson;

    const-class v1, Lcom/audible/hushpuppy/common/network/AsinJSBParam;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/common/network/AsinJSBParam;

    if-eqz p1, :cond_1

    .line 198
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/network/AsinJSBParam;->getKindleAsin()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->toaWebViewUpsellController:Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;->onReadAndListenClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_0
    sget-object p1, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "kindle ebook Asin is null!"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_1
    sget-object p1, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Asin params are null!"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onOrderRequested(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 229
    sget-object p1, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "onOrderRequested JSB is called"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onPlaySampleClicked(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 152
    iget-object p1, p0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/hushpuppy/common/system/AndroidUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 153
    sget-object p1, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "No network, not playing sample!"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->locationSeekerController:Lcom/audible/hushpuppy/controller/LocationSeekerController;

    if-eqz p1, :cond_1

    .line 157
    iget-object p1, p0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge$1;

    invoke-direct {v0, p0}, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge$1;-><init>(Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onPlaySampleStateChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/hushpuppy/common/system/AndroidUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    sget-object p1, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "No network, not sending play sample state changed to web!"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void

    .line 180
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->javaScriptFunctionCaller:Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".onPlaySampleStateChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller;->call(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCallException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 182
    sget-object p2, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Failed to send updated play sample state over the JS bridge"

    invoke-interface {p2, v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onShowInfoModal(Ljava/lang/String;)V
    .locals 10
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 100
    sget-object v0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowInfoModal JSB is called, json is {}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/hushpuppy/common/system/AndroidUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    sget-object p1, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "No network, not showing info modal!"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->gson:Lcom/google/gson/Gson;

    const-class v1, Lcom/audible/hushpuppy/common/network/UrlJSBParam;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/common/network/UrlJSBParam;

    .line 107
    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->activity:Landroid/app/Activity;

    instance-of v0, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    .line 108
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/network/UrlJSBParam;->getView()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 109
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/network/UrlJSBParam;->getOrderId()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/network/UrlJSBParam;->getMfaInterstitialUrl()Ljava/lang/String;

    move-result-object v8

    .line 111
    iget-object v1, p0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    if-nez v1, :cond_1

    .line 113
    sget-object p1, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "current book is null, can\'t show info modal!"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 117
    :cond_1
    sget-object v2, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "opening popup modal from"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->activity:Landroid/app/Activity;

    check-cast v4, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 120
    invoke-static {v8}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 122
    iget-object v2, p0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v2

    const-class v3, Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;

    invoke-interface {v2, v3}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 124
    new-instance v3, Lcom/amazon/kindle/krx/events/AudibleStartActionsPlayClickedEvent;

    invoke-direct {v3}, Lcom/amazon/kindle/krx/events/AudibleStartActionsPlayClickedEvent;-><init>()V

    invoke-interface {v2, v3}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 125
    sget-object v2, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "Closing Start Actions dialog"

    invoke-interface {v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 129
    :cond_2
    iget-object v2, p0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAppType()Lcom/amazon/kindle/krx/application/AppType;

    move-result-object v2

    .line 130
    sget-object v3, Lcom/amazon/kindle/krx/application/AppType;->KRT:Lcom/amazon/kindle/krx/application/AppType;

    invoke-virtual {v3, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "true"

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    move-object v9, v2

    .line 131
    iget-object v2, p0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->activity:Landroid/app/Activity;

    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->TAG:Ljava/lang/String;

    iget-object v4, p0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v4}, Lcom/audible/hushpuppy/extensions/darkmode/DarkModeUtils;->getColorModeFromAppTheme(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v4

    iget-object v5, p0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 132
    invoke-interface {v5}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v5

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v6

    .line 133
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/network/UrlJSBParam;->getView()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, ""

    :goto_1
    move-object v7, v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, p1

    .line 131
    invoke-static/range {v1 .. v9}, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/theme/Theme;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 135
    :cond_5
    sget-object p1, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Invalid JSB params, can\'t show info modal!"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_2

    .line 138
    :cond_6
    sget-object p1, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Context is not an instance of FragmentActivity, can\'t show info modal!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
