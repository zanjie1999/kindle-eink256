.class Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;
.super Ljava/lang/Object;
.source "AwsSdkMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MetricRegistry"
.end annotation


# instance fields
.field private final metricTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;",
            ">;"
        }
    .end annotation
.end field

.field private volatile readOnly:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    .line 759
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 760
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->Exception:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 761
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->HttpClientRetryCount:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 762
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->HttpRequestTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 763
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->RequestCount:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 766
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->RetryCount:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 767
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->HttpClientSendRequestTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 768
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->HttpClientReceiveResponseTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 769
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->HttpClientPoolAvailableCount:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 770
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->HttpClientPoolLeasedCount:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 771
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->HttpClientPoolPendingCount:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 772
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSServiceMetrics;->HttpClientGetConnectionTime:Lcom/amazon/kindle/com/amazonaws/util/AWSServiceMetrics;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 773
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->syncReadOnly()V

    return-void
.end method

.method private syncReadOnly()V
    .locals 2

    .line 777
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->readOnly:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addMetricTypes(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)Z"
        }
    .end annotation

    .line 790
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    monitor-enter v0

    .line 791
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->metricTypes:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 793
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->syncReadOnly()V

    .line 794
    :cond_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 795
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
