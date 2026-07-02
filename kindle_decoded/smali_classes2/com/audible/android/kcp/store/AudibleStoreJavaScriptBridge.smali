.class public Lcom/audible/android/kcp/store/AudibleStoreJavaScriptBridge;
.super Ljava/lang/Object;
.source "AudibleStoreJavaScriptBridge.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final gson:Lcom/google/gson/Gson;

.field private final javaScriptFunctionCaller:Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/store/AudibleStoreJavaScriptBridge;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/store/AudibleStoreJavaScriptBridge;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller;Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "The bridge name cannot be null"

    .line 46
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/audible/android/kcp/store/AudibleStoreJavaScriptBridge;->name:Ljava/lang/String;

    const-string p1, "javaScriptFunctionCaller cannot be null"

    .line 47
    invoke-static {p2, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller;

    iput-object p2, p0, Lcom/audible/android/kcp/store/AudibleStoreJavaScriptBridge;->javaScriptFunctionCaller:Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller;

    const-string p1, "context cannot be null"

    .line 48
    invoke-static {p3, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Landroid/content/Context;

    iput-object p3, p0, Lcom/audible/android/kcp/store/AudibleStoreJavaScriptBridge;->context:Landroid/content/Context;

    .line 49
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/audible/android/kcp/store/AudibleStoreJavaScriptBridge;->gson:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public onOrderComplete(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 86
    sget-object p1, Lcom/audible/android/kcp/store/AudibleStoreJavaScriptBridge;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "onOrderComplete JSB is called, starting recording TODO timer metric"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->TimeForTodoAfterWebviewPurchase:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/common/metric/MetricManager;->startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    return-void
.end method

.method public onOrderCompleteStartListening(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 62
    sget-object v0, Lcom/audible/android/kcp/store/AudibleStoreJavaScriptBridge;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "onOrderCompleteStartListening JSB is called"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/audible/android/kcp/store/AudibleStoreJavaScriptBridge;->gson:Lcom/google/gson/Gson;

    const-class v1, Lcom/audible/hushpuppy/common/network/AsinJSBParam;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/common/network/AsinJSBParam;

    if-eqz p1, :cond_1

    .line 65
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/network/AsinJSBParam;->getKindleAsin()Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/audible/android/kcp/store/AudibleStoreJavaScriptBridge;->context:Landroid/content/Context;

    instance-of v1, v0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    if-eqz v1, :cond_0

    .line 67
    check-cast v0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    .line 68
    sget-object v1, Lcom/audible/android/kcp/store/AudibleStoreJavaScriptBridge;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling openLibraryOrPlayer for kindleAsin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, p1}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->openLibraryOrPlayer(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_0
    sget-object p1, Lcom/audible/android/kcp/store/AudibleStoreJavaScriptBridge;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Can\'t open library or player due to invalid kindleAsin or not in AbstractAudibleStoreActivity."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_1
    sget-object p1, Lcom/audible/android/kcp/store/AudibleStoreJavaScriptBridge;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Asin params are null!"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onOrderRequested(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 99
    sget-object p1, Lcom/audible/android/kcp/store/AudibleStoreJavaScriptBridge;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "onOrderRequested JSB is called"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void
.end method
