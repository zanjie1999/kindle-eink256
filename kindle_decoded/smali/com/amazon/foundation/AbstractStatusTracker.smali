.class public abstract Lcom/amazon/foundation/AbstractStatusTracker;
.super Ljava/lang/Object;
.source "AbstractStatusTracker.java"

# interfaces
.implements Lcom/amazon/kindle/services/download/IStatusTracker;


# instance fields
.field private max:J

.field private progress:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lcom/amazon/foundation/AbstractStatusTracker;->max:J

    .line 32
    iput-wide v0, p0, Lcom/amazon/foundation/AbstractStatusTracker;->progress:J

    return-void
.end method


# virtual methods
.method public getMax()J
    .locals 2

    .line 111
    iget-wide v0, p0, Lcom/amazon/foundation/AbstractStatusTracker;->max:J

    return-wide v0
.end method

.method public getProgress()J
    .locals 2

    .line 103
    iget-wide v0, p0, Lcom/amazon/foundation/AbstractStatusTracker;->progress:J

    return-wide v0
.end method

.method public reportCurrentProgress(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 48
    iget-wide v0, p0, Lcom/amazon/foundation/AbstractStatusTracker;->max:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 51
    iget-wide v0, p0, Lcom/amazon/foundation/AbstractStatusTracker;->progress:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 54
    :cond_0
    iget-wide v0, p0, Lcom/amazon/foundation/AbstractStatusTracker;->max:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    move-wide p1, v0

    .line 58
    :cond_1
    iput-wide p1, p0, Lcom/amazon/foundation/AbstractStatusTracker;->progress:J

    return-void

    .line 49
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public reportState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 67
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 94
    iput-wide v0, p0, Lcom/amazon/foundation/AbstractStatusTracker;->max:J

    .line 95
    iput-wide v0, p0, Lcom/amazon/foundation/AbstractStatusTracker;->progress:J

    return-void
.end method

.method public setMaxProgress(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 86
    iput-wide p1, p0, Lcom/amazon/foundation/AbstractStatusTracker;->max:J

    .line 87
    iget-wide v0, p0, Lcom/amazon/foundation/AbstractStatusTracker;->progress:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    .line 88
    iput-wide p1, p0, Lcom/amazon/foundation/AbstractStatusTracker;->progress:J

    :cond_0
    return-void

    .line 83
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
