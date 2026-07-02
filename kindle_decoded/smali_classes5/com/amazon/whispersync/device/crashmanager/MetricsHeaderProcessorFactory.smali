.class Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessorFactory;
.super Ljava/lang/Object;
.source "MetricsHeaderProcessorFactory.java"


# instance fields
.field private mAmazonPackageLookup:Lcom/amazon/whispersync/device/crashmanager/AmazonPackageLookup;

.field private mMetricEvent:Lcom/amazon/whispersync/client/metrics/MetricEvent;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/device/crashmanager/AmazonPackageLookup;Lcom/amazon/whispersync/client/metrics/MetricEvent;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 22
    iput-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessorFactory;->mAmazonPackageLookup:Lcom/amazon/whispersync/device/crashmanager/AmazonPackageLookup;

    .line 23
    iput-object p2, p0, Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessorFactory;->mMetricEvent:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Metric event must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Amazon Package Lookup must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public construct(Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;)Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;
    .locals 3

    if-eqz p1, :cond_0

    .line 30
    new-instance v0, Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;

    iget-object v1, p0, Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessorFactory;->mAmazonPackageLookup:Lcom/amazon/whispersync/device/crashmanager/AmazonPackageLookup;

    iget-object v2, p0, Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessorFactory;->mMetricEvent:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;-><init>(Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;Lcom/amazon/whispersync/device/crashmanager/AmazonPackageLookup;Lcom/amazon/whispersync/client/metrics/MetricEvent;)V

    return-object v0

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Header processor must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
