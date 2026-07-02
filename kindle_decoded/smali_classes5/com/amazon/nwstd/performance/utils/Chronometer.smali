.class public Lcom/amazon/nwstd/performance/utils/Chronometer;
.super Ljava/lang/Object;
.source "Chronometer.java"


# instance fields
.field private end:J

.field private start:J

.field private started:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/amazon/nwstd/performance/utils/Chronometer;->started:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/amazon/nwstd/performance/utils/Chronometer;->started:Z

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/amazon/nwstd/performance/utils/Chronometer;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public elapsedTime()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    iget-boolean v0, p0, Lcom/amazon/nwstd/performance/utils/Chronometer;->started:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/nwstd/performance/utils/Chronometer;->end:J

    .line 44
    iget-wide v2, p0, Lcom/amazon/nwstd/performance/utils/Chronometer;->start:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Chronometer not started"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public start()V
    .locals 2

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/amazon/nwstd/performance/utils/Chronometer;->started:Z

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/nwstd/performance/utils/Chronometer;->start:J

    return-void
.end method
