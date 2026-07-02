.class final Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector$1;
.super Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;
.source "RequestMetricCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;-><init>()V

    return-void
.end method


# virtual methods
.method public collectMetrics(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Lcom/amazon/kindle/com/amazonaws/Response<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
