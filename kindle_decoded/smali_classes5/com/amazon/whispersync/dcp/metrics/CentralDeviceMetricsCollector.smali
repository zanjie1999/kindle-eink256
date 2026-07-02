.class public Lcom/amazon/whispersync/dcp/metrics/CentralDeviceMetricsCollector;
.super Lcom/amazon/whispersync/dcp/metrics/MultiSinkMetricsCollector;
.source "CentralDeviceMetricsCollector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.whispersync.dcp.metrics.CentralDeviceMetricsCollector"


# instance fields
.field private final mCollectors:[Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/metrics/MultiSinkMetricsCollector;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;

    .line 25
    new-instance v1, Lcom/amazon/whispersync/dcp/metrics/LoggingMetricsCollector;

    sget-object v2, Lcom/amazon/whispersync/dcp/metrics/CentralDeviceMetricsCollector;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/amazon/whispersync/dcp/metrics/LoggingMetricsCollector;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/whispersync/dcp/metrics/IntentBasedMetricsCollector;

    invoke-static {p1}, Lcom/amazon/whispersync/dcp/metrics/MetricsServiceIntentFactory;->findMetricsService(Landroid/content/Context;)Lcom/amazon/whispersync/dcp/metrics/MetricsServiceIntentFactory;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/amazon/whispersync/dcp/metrics/IntentBasedMetricsCollector;-><init>(Landroid/content/Context;Lcom/amazon/whispersync/dcp/metrics/MetricsServiceIntentFactory;)V

    const/4 p1, 0x1

    aput-object v1, v0, p1

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/metrics/CentralDeviceMetricsCollector;->mCollectors:[Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;

    return-void
.end method


# virtual methods
.method protected getCollectors()[Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/metrics/CentralDeviceMetricsCollector;->mCollectors:[Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;

    return-object v0
.end method
