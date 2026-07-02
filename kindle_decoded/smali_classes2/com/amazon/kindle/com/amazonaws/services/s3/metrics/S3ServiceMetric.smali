.class public Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;
.super Lcom/amazon/kindle/com/amazonaws/metrics/SimpleMetricType;
.source "S3ServiceMetric.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/metrics/ServiceMetricType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;
    }
.end annotation


# static fields
.field public static final S3_DOWLOAD_THROUGHPUT:Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

.field public static final S3_DOWNLOAD_BYTE_COUNT:Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;

.field public static final S3_UPLOAD_BYTE_COUNT:Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;

.field public static final S3_UPLOAD_THROUGHPUT:Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

.field private static final VALUES:[Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 44
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric$1;

    const-string v1, "DownloadThroughput"

    .line 45
    invoke-static {v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;->metricName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;->S3_DOWLOAD_THROUGHPUT:Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

    .line 55
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;

    const-string v1, "DownloadByteCount"

    .line 56
    invoke-static {v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;->metricName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;->S3_DOWNLOAD_BYTE_COUNT:Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;

    .line 61
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric$2;

    const-string v1, "UploadThroughput"

    .line 62
    invoke-static {v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;->metricName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;->S3_UPLOAD_THROUGHPUT:Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

    .line 72
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;

    const-string v1, "UploadByteCount"

    .line 73
    invoke-static {v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;->metricName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;->S3_UPLOAD_BYTE_COUNT:Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;

    .line 75
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;->S3_DOWLOAD_THROUGHPUT:Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;->S3_DOWNLOAD_BYTE_COUNT:Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;->S3_UPLOAD_THROUGHPUT:Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;->VALUES:[Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/metrics/SimpleMetricType;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;->name:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static final metricName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "S3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;
    .locals 1

    .line 109
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;->VALUES:[Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;

    invoke-virtual {v0}, [Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;

    return-object v0
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;->name:Ljava/lang/String;

    return-object v0
.end method
