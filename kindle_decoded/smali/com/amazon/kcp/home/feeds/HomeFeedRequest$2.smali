.class public final Lcom/amazon/kcp/home/feeds/HomeFeedRequest$2;
.super Lcom/amazon/kindle/webservices/BaseResponseHandler;
.source "HomeFeedRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/feeds/HomeFeedRequest;-><init>(Lcom/amazon/kcp/application/Marketplace;Ljava/util/Collection;ZLkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/feeds/HomeFeedRequest;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/feeds/HomeFeedRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedRequest$2;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedRequest;

    invoke-direct {p0}, Lcom/amazon/kindle/webservices/BaseResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputStream(Ljava/io/InputStream;)V
    .locals 7

    const-string v0, "VoltronHomefeedJsonParsingFailed"

    const-string v1, "input"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "VoltronHomeRequestLatency"

    const-string v3, "com.amazon.kcp.home.feeds.HomeFeedRequest"

    invoke-virtual {v1, v3, v2, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VoltronHomeRequestLatency."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/amazon/kcp/home/feeds/HomeFeedRequest$2;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedRequest;

    invoke-static {v6}, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;->access$getMarketplace$p(Lcom/amazon/kcp/home/feeds/HomeFeedRequest;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazon/kcp/application/Marketplace;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 109
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/amazon/kcp/home/feeds/HomeFeedRequest$2;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedRequest;

    invoke-static {v5}, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;->access$getMarketplace$p(Lcom/amazon/kcp/home/feeds/HomeFeedRequest;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/kcp/application/Marketplace;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 108
    invoke-virtual {v1, v3, v4, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 110
    invoke-static {v2, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    const/16 v1, 0xc8

    .line 112
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseResponseHandler;->getHttpStatusCode()I

    move-result v2

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status code was not OK, it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseResponseHandler;->getHttpStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedRequest$2;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedRequest;

    invoke-static {v1}, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;->access$getCompletion$p(Lcom/amazon/kcp/home/feeds/HomeFeedRequest;)Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-interface {v1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-void

    .line 119
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedRequest$2;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedRequest;

    invoke-static {v1}, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;->access$getGSON$p(Lcom/amazon/kcp/home/feeds/HomeFeedRequest;)Lcom/google/gson/Gson;

    move-result-object v1

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const-class v5, Lcom/amazon/kcp/home/models/voltron/SidekickResponse;

    invoke-virtual {v1, v2, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/home/models/voltron/SidekickResponse;

    if-eqz v1, :cond_1

    .line 120
    iget-object v2, p0, Lcom/amazon/kcp/home/feeds/HomeFeedRequest$2;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedRequest;

    invoke-virtual {v2, v1}, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;->setResponse(Lcom/amazon/kcp/home/database/HomeFeedData;)V

    .line 121
    iget-object v2, p0, Lcom/amazon/kcp/home/feeds/HomeFeedRequest$2;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedRequest;

    invoke-static {v2}, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;->access$getMessageQueue$p(Lcom/amazon/kcp/home/feeds/HomeFeedRequest;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v2

    new-instance v4, Lcom/amazon/kcp/home/events/HomeFeedEvent;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/amazon/kcp/home/events/HomeFeedEvent;-><init>(I)V

    invoke-interface {v2, v4}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 122
    iget-object v2, p0, Lcom/amazon/kcp/home/feeds/HomeFeedRequest$2;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedRequest;

    invoke-static {v2}, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;->access$getCompletion$p(Lcom/amazon/kcp/home/feeds/HomeFeedRequest;)Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/gson/JsonParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-void

    .line 127
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedRequest$2;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedRequest;

    sget-object v2, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->APP_INTERNAL_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    .line 129
    iget-object v1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedRequest$2;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedRequest;

    invoke-static {v1}, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;->access$getCompletion$p(Lcom/amazon/kcp/home/feeds/HomeFeedRequest;)Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-interface {v1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/google/gson/JsonParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 131
    :catch_0
    :try_start_3
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedRequest$2;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedRequest;

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->APP_INTERNAL_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    :goto_0
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-void

    :goto_1
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0
.end method
