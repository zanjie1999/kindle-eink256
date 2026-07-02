.class Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest;
.super Lcom/amazon/kindle/webservices/BaseWebRequest;
.source "WikipediaInfoCardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WikipediaWebRequest"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest;->this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;

    .line 163
    invoke-direct {p0, p2}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;Ljava/lang/String;Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$1;)V
    .locals 0

    .line 161
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest;-><init>(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onRequestComplete()Z
    .locals 6

    .line 169
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/webservices/ResultResponseHandler;

    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/ResultResponseHandler;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest$1;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest$1;-><init>(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1

    :cond_0
    const-string v2, "status"

    .line 186
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xc8

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 187
    :cond_1
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest;->this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->access$700(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;Lorg/json/JSONObject;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    .line 189
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest$2;

    invoke-direct {v5, p0, v2, v0}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest$2;-><init>(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v2, "INFO_CARD_WIKIPEDIA"

    const-string v3, "WikipediaInfoCard"

    if-eqz v1, :cond_2

    .line 218
    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v5, "Success"

    invoke-virtual {v0, v2, v5, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 219
    invoke-static {v3, v5}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->setLookupResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_2
    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->WARN:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v5, "Failure"

    invoke-virtual {v0, v2, v5, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    const-string v0, "FailureWikipediaHttpStatusNotOk"

    .line 223
    invoke-static {v3, v0}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->setLookupResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->getContext()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 230
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "QuickLookup"

    .line 231
    invoke-static {v0}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->emitMetric(Ljava/lang/String;)V

    :cond_3
    return v4
.end method
