.class public Lcom/amazon/whisperjoin/metrics/MetricTimer;
.super Ljava/lang/Object;
.source "MetricTimer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MetricTimer"


# instance fields
.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 14
    iput-wide v0, p0, Lcom/amazon/whisperjoin/metrics/MetricTimer;->mStartTime:J

    return-void
.end method


# virtual methods
.method public start()V
    .locals 5

    .line 20
    iget-wide v0, p0, Lcom/amazon/whisperjoin/metrics/MetricTimer;->mStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 22
    sget-object v0, Lcom/amazon/whisperjoin/metrics/MetricTimer;->TAG:Ljava/lang/String;

    const-string v1, " recorder start called again before terminal event"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/whisperjoin/metrics/MetricTimer;->mStartTime:J

    return-void
.end method

.method public stop()J
    .locals 6

    .line 32
    iget-wide v0, p0, Lcom/amazon/whisperjoin/metrics/MetricTimer;->mStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v0

    .line 36
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/amazon/whisperjoin/metrics/MetricTimer;->mStartTime:J

    sub-long/2addr v0, v4

    .line 37
    iput-wide v2, p0, Lcom/amazon/whisperjoin/metrics/MetricTimer;->mStartTime:J

    return-wide v0
.end method
