.class public Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessorFactory;
.super Ljava/lang/Object;
.source "MetricsHeaderProcessorFactory.java"


# instance fields
.field private mAmazonPackageLookup:Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;

.field private mMetricEvent:Lcom/amazon/client/metrics/common/MetricEvent;


# direct methods
.method public constructor <init>(Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;Lcom/amazon/client/metrics/common/MetricEvent;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 23
    iput-object p1, p0, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessorFactory;->mAmazonPackageLookup:Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;

    .line 24
    iput-object p2, p0, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessorFactory;->mMetricEvent:Lcom/amazon/client/metrics/common/MetricEvent;

    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Metric event must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Amazon Package Lookup must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public construct(Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;)Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;
    .locals 3

    if-eqz p1, :cond_0

    .line 31
    new-instance v0, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;

    iget-object v1, p0, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessorFactory;->mAmazonPackageLookup:Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;

    iget-object v2, p0, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessorFactory;->mMetricEvent:Lcom/amazon/client/metrics/common/MetricEvent;

    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;-><init>(Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;Lcom/amazon/client/metrics/common/MetricEvent;)V

    return-object v0

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Header processor must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
