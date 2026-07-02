.class public Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;
.super Ljava/lang/Object;
.source "MetricsHeaderProcessor.java"

# interfaces
.implements Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;


# static fields
.field private static final log:Lcom/amazon/dp/logger/DPLogger;


# instance fields
.field private mAction:Ljava/lang/String;

.field private final mAmazonPackageLookup:Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;

.field private final mMetricEvent:Lcom/amazon/client/metrics/common/MetricEvent;

.field private final mNextProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

.field private mProcessName:Ljava/lang/String;

.field private mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/amazon/dp/logger/DPLogger;

    const-string v1, "MetricsHeaderProcessor"

    invoke-direct {v0, v1}, Lcom/amazon/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;->log:Lcom/amazon/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;Lcom/amazon/client/metrics/common/MetricEvent;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;->mTag:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;->mProcessName:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;->mAction:Ljava/lang/String;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 41
    iput-object p1, p0, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;->mNextProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

    .line 42
    iput-object p2, p0, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;->mAmazonPackageLookup:Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;

    .line 43
    iput-object p3, p0, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;->mMetricEvent:Lcom/amazon/client/metrics/common/MetricEvent;

    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Metric Event must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Package lookup must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Next processor must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private emitMetrics(Ljava/lang/String;D)V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "BUILD_MAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;->mMetricEvent:Lcom/amazon/client/metrics/common/MetricEvent;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/client/metrics/common/MetricEvent;->addCounter(Ljava/lang/String;D)V

    return-void
.end method


# virtual methods
.method public getProcessName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    const-string v0, "Process"

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string v3, "."

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 87
    iput-object p2, p0, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;->mProcessName:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;->mAmazonPackageLookup:Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;

    iget-object v5, p0, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;->mProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->generateFriendlyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;->emitMetrics(Ljava/lang/String;D)V

    goto :goto_0

    :cond_0
    const-string v0, "hasForegroundActivities"

    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;->mProcessName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 104
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;->mAmazonPackageLookup:Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;

    iget-object v5, p0, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;->mProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;->generateFriendlyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".foreground"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;->emitMetrics(Ljava/lang/String;D)V

    goto :goto_0

    .line 112
    :cond_1
    sget-object v0, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;->log:Lcom/amazon/dp/logger/DPLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "header"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v2, "MetricsHeaderProcessor.process"

    const-string/jumbo v3, "unknown header. cannot process "

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;->mNextProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    return-void
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;->mAction:Ljava/lang/String;

    return-void
.end method

.method public setProcessTag(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;->mTag:Ljava/lang/String;

    return-void
.end method
