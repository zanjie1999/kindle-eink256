.class abstract Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;
.super Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;
.source "S3ServiceMetric.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/metrics/ThroughputMetricType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "S3ThroughputMetric"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;-><init>(Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric$1;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric$1;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;-><init>(Ljava/lang/String;)V

    return-void
.end method
