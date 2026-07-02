.class final Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask$3;
.super Ljava/lang/Object;
.source "MobileWeblabMetricTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logErrorMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$clientIdentifier:Ljava/lang/String;

.field final synthetic val$count:I

.field final synthetic val$errorMessage:Ljava/lang/String;

.field final synthetic val$metricName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask$3;->val$clientIdentifier:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask$3;->val$metricName:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask$3;->val$errorMessage:Ljava/lang/String;

    iput p4, p0, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask$3;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask$3;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask$3;->val$clientIdentifier:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricsUtil;->createMobileWeblabMetric(Ljava/lang/String;)Lcom/amazon/weblab/mobile/metrics/IMobileWeblabMetric;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask$3;->val$metricName:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask$3;->val$errorMessage:Ljava/lang/String;

    iget v3, p0, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask$3;->val$count:I

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/weblab/mobile/metrics/IMobileWeblabMetric;->logError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 71
    invoke-static {v0}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricsUtil;->recordMobileWeblabMetric(Lcom/amazon/weblab/mobile/metrics/IMobileWeblabMetric;)V

    const/4 v0, 0x0

    return-object v0
.end method
