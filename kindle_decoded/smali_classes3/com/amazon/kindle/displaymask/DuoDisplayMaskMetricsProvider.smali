.class public final Lcom/amazon/kindle/displaymask/DuoDisplayMaskMetricsProvider;
.super Ljava/lang/Object;
.source "DuoDisplayMaskMetrics.kt"

# interfaces
.implements Lcom/amazon/kindle/displaymask/DisplayMaskMetricsProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetrics()Lcom/amazon/kindle/displaymask/DisplayMaskMetrics;
    .locals 3

    .line 36
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->deviceSupportsDisplayMask()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 40
    :cond_0
    const-class v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-nez v0, :cond_1

    .line 42
    invoke-static {}, Lcom/amazon/kindle/displaymask/DuoDisplayMaskMetricsKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FastMetrics not found, no Duo metrics collected"

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 46
    :cond_1
    new-instance v1, Lcom/amazon/kindle/displaymask/DuoDisplayMaskMetrics;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/displaymask/DuoDisplayMaskMetrics;-><init>(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;)V

    return-object v1
.end method
