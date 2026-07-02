.class Lcom/amazon/device/ads/Metrics$1;
.super Ljava/lang/Object;
.source "Metrics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/Metrics;->sendMetrics(Lcom/amazon/device/ads/WebRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/Metrics;

.field final synthetic val$webRequest:Lcom/amazon/device/ads/WebRequest;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/Metrics;Lcom/amazon/device/ads/WebRequest;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/amazon/device/ads/Metrics$1;->this$0:Lcom/amazon/device/ads/Metrics;

    iput-object p2, p0, Lcom/amazon/device/ads/Metrics$1;->val$webRequest:Lcom/amazon/device/ads/WebRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 246
    iget-object v0, p0, Lcom/amazon/device/ads/Metrics$1;->val$webRequest:Lcom/amazon/device/ads/WebRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->enableLog(Z)V

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/ads/Metrics$1;->val$webRequest:Lcom/amazon/device/ads/WebRequest;

    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest;->makeCall()Lcom/amazon/device/ads/WebRequest$WebResponse;
    :try_end_0
    .catch Lcom/amazon/device/ads/WebRequest$WebRequestException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 256
    sget-object v2, Lcom/amazon/device/ads/Metrics$2;->$SwitchMap$com$amazon$device$ads$WebRequest$WebRequestStatus:[I

    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest$WebRequestException;->getStatus()Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    if-eq v2, v1, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    const/4 v4, 0x4

    if-eq v2, v4, :cond_1

    goto :goto_0

    .line 265
    :cond_0
    iget-object v2, p0, Lcom/amazon/device/ads/Metrics$1;->this$0:Lcom/amazon/device/ads/Metrics;

    invoke-static {v2}, Lcom/amazon/device/ads/Metrics;->access$000(Lcom/amazon/device/ads/Metrics;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "Unable to submit metrics for ad due to a Malformed Pixel URL, msg: %s"

    invoke-virtual {v2, v5, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    :cond_1
    iget-object v2, p0, Lcom/amazon/device/ads/Metrics$1;->this$0:Lcom/amazon/device/ads/Metrics;

    invoke-static {v2}, Lcom/amazon/device/ads/Metrics;->access$000(Lcom/amazon/device/ads/Metrics;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "Unable to submit metrics for ad because of unsupported character encoding, msg: %s"

    invoke-virtual {v2, v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 262
    :cond_2
    iget-object v2, p0, Lcom/amazon/device/ads/Metrics$1;->this$0:Lcom/amazon/device/ads/Metrics;

    invoke-static {v2}, Lcom/amazon/device/ads/Metrics;->access$000(Lcom/amazon/device/ads/Metrics;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "Unable to submit metrics for ad due to Network Failure, msg: %s"

    invoke-virtual {v2, v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 259
    :cond_3
    iget-object v2, p0, Lcom/amazon/device/ads/Metrics$1;->this$0:Lcom/amazon/device/ads/Metrics;

    invoke-static {v2}, Lcom/amazon/device/ads/Metrics;->access$000(Lcom/amazon/device/ads/Metrics;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "Unable to submit metrics for ad due to an Invalid Client Protocol, msg: %s"

    invoke-virtual {v2, v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
