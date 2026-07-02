.class Lcom/amazon/weblab/mobile/cache/OnFirstPolicy;
.super Lcom/amazon/weblab/mobile/cache/LocalPolicy;
.source "OnFirstPolicy.java"


# direct methods
.method public constructor <init>(Lcom/amazon/weblab/mobile/settings/Interval;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/amazon/weblab/mobile/cache/LocalPolicy;-><init>(Lcom/amazon/weblab/mobile/settings/Interval;)V

    return-void
.end method


# virtual methods
.method public hasExpired(Lcom/amazon/weblab/mobile/model/TreatmentAssignment;)Z
    .locals 5

    if-eqz p1, :cond_0

    .line 30
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getDateModified()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object p1, p0, Lcom/amazon/weblab/mobile/cache/LocalPolicy;->mTtl:Lcom/amazon/weblab/mobile/settings/Interval;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v3}, Lcom/amazon/weblab/mobile/settings/Interval;->convertTo(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 31
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    return p1

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "treatment can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
