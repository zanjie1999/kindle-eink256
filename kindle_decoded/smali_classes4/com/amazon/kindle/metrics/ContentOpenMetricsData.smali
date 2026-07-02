.class public Lcom/amazon/kindle/metrics/ContentOpenMetricsData;
.super Lcom/amazon/kindle/krx/metrics/MetricsData;
.source "ContentOpenMetricsData.java"


# static fields
.field private static final ASIN:Ljava/lang/String; = "asin"

.field private static final IS_SAMPLE:Ljava/lang/String; = "isSample"

.field private static final SOURCE:Ljava/lang/String; = "KindleContentOpenExperience"

.field private static final TAP_TIMESTAMP:Ljava/lang/String; = "tapTimestamp"


# instance fields
.field private final isSample:Z

.field private final tapTimestamp:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KindleContentOpenExperience_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iput-wide p5, p0, Lcom/amazon/kindle/metrics/ContentOpenMetricsData;->tapTimestamp:J

    .line 79
    iput-boolean p4, p0, Lcom/amazon/kindle/metrics/ContentOpenMetricsData;->isSample:Z

    .line 80
    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "tapTimestamp"

    invoke-virtual {p0, p2, p1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    const-string p1, "asin"

    .line 81
    invoke-virtual {p0, p1, p3}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 82
    invoke-static {p4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "isSample"

    invoke-virtual {p0, p2, p1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    return-void
.end method


# virtual methods
.method public getTapTimestamp()J
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/amazon/kindle/metrics/ContentOpenMetricsData;->tapTimestamp:J

    return-wide v0
.end method
