.class public Lcom/amazon/whispersync/dcp/metrics/MetricsComponent;
.super Ljava/lang/Object;
.source "MetricsComponent.java"


# static fields
.field public static final DEFAULT_METRICS_DOMAIN:Ljava/lang/String; = "GenericMetrics"

.field public static final METRICS_STRING_DOMAIN_NAME:Ljava/lang/String; = "MetricsDomain"

.field private static final TAG:Ljava/lang/String; = "com.amazon.whispersync.dcp.metrics.MetricsComponent"


# instance fields
.field private final mComponentName:Ljava/lang/String;

.field private final mDomain:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/metrics/MetricsComponent;->mComponentName:Ljava/lang/String;

    .line 21
    invoke-static {p2}, Lcom/amazon/whispersync/dcp/metrics/MetricsComponent;->getDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/metrics/MetricsComponent;->mDomain:Ljava/lang/String;

    return-void
.end method

.method public static getDomain(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MetricsDomain"

    const-string/jumbo v2, "string"

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    .line 45
    sget-object p0, Lcom/amazon/whispersync/dcp/metrics/MetricsComponent;->TAG:Ljava/lang/String;

    const-string v0, "A metrics domain has not been set. Defaulting to a generic domain name."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "GenericMetrics"

    return-object p0

    .line 49
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public generateMetric(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier$Level;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;
    .locals 3

    .line 36
    new-instance v0, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/metrics/MetricsComponent;->mDomain:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/metrics/MetricsComponent;->mComponentName:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;-><init>(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public generateMetric(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;
    .locals 3

    .line 31
    new-instance v0, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/metrics/MetricsComponent;->mDomain:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/metrics/MetricsComponent;->mComponentName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getComponent()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/metrics/MetricsComponent;->mComponentName:Ljava/lang/String;

    return-object v0
.end method
