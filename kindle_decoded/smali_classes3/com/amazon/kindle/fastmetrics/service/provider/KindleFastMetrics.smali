.class public Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetrics;
.super Ljava/lang/Object;
.source "KindleFastMetrics.java"

# interfaces
.implements Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;


# static fields
.field private static final TAG:Ljava/lang/String; = "KindleFastMetrics"


# instance fields
.field sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field final service:Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-static {}, Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;->getInstance()Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kindle/fastmetrics/service/provider/FastMetricsPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetrics;-><init>(Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetrics;->service:Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;

    .line 24
    iput-object p2, p0, Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetrics;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method


# virtual methods
.method public getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;
    .locals 1

    .line 30
    new-instance v0, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetrics;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-nez v0, :cond_0

    .line 37
    invoke-static {}, Lcom/amazon/kindle/fastmetrics/service/provider/FastMetricsPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetrics;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetrics;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getReaderSettings()Lcom/amazon/kindle/krx/reader/IReaderSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderSettings;->isAnnotationsSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetrics;->service:Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;

    if-nez v0, :cond_2

    return-void

    .line 53
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;->getNativeService()Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;

    move-result-object v0

    .line 54
    move-object v1, p1

    check-cast v1, Lcom/amazon/kindle/fastmetrics/service/provider/Payload;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 55
    invoke-virtual {v1}, Lcom/amazon/kindle/fastmetrics/service/provider/Payload;->getNativePayload()Lcom/amazon/kindle/fastmetrics/jni/Payload;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 56
    invoke-virtual {v1}, Lcom/amazon/kindle/fastmetrics/service/provider/Payload;->getNativePayload()Lcom/amazon/kindle/fastmetrics/jni/Payload;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;->EmitRecord(Lcom/amazon/kindle/fastmetrics/jni/Payload;)V

    :cond_3
    :goto_0
    return-void
.end method
