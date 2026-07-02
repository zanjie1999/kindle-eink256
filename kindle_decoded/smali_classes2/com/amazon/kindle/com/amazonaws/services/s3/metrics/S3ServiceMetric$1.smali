.class final Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric$1;
.super Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;
.source "S3ServiceMetric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;-><init>(Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric$1;)V

    return-void
.end method
