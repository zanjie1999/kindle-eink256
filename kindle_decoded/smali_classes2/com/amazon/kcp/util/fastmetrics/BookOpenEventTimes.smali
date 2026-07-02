.class public final Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;
.super Ljava/lang/Object;
.source "RecordBookOpenMetrics.kt"


# instance fields
.field private openCanceledTimestamp:Ljava/lang/Long;

.field private final openTriggeredTimestamp:J

.field private splashScreenVisibleTimestamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;->openTriggeredTimestamp:J

    return-void
.end method


# virtual methods
.method public final collectTimes()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
            "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes$collectTimes$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes$collectTimes$1;-><init>(Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;

    iget-wide v0, p0, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;->openTriggeredTimestamp:J

    iget-wide v2, p1, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;->openTriggeredTimestamp:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getOpenCanceledTimestamp()Ljava/lang/Long;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;->openCanceledTimestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public final getOpenTriggeredTimestamp()J
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;->openTriggeredTimestamp:J

    return-wide v0
.end method

.method public final getSplashScreenVisibleTimestamp()Ljava/lang/Long;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;->splashScreenVisibleTimestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;->openTriggeredTimestamp:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public final setOpenCanceledTimestamp(Ljava/lang/Long;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;->openCanceledTimestamp:Ljava/lang/Long;

    return-void
.end method

.method public final setSplashScreenVisibleTimestamp(Ljava/lang/Long;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;->splashScreenVisibleTimestamp:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BookOpenEventTimes(openTriggeredTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;->openTriggeredTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
