.class public Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;
.super Ljava/lang/Object;
.source "LastStateSavingStatusTracker.java"

# interfaces
.implements Lcom/amazon/kindle/services/download/IStatusTracker;


# instance fields
.field protected final delegate:Lcom/amazon/kindle/services/download/IStatusTracker;

.field protected latestState:Ljava/lang/String;

.field protected latestSubstate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/services/download/IStatusTracker;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->delegate:Lcom/amazon/kindle/services/download/IStatusTracker;

    return-void
.end method


# virtual methods
.method public getLatestState()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->latestState:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestSubstate()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->latestSubstate:Ljava/lang/String;

    return-object v0
.end method

.method public reportCurrentProgress(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->delegate:Lcom/amazon/kindle/services/download/IStatusTracker;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/services/download/IStatusTracker;->reportCurrentProgress(J)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->delegate:Lcom/amazon/kindle/services/download/IStatusTracker;

    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IStatusTracker;->reset()V

    :cond_0
    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->latestState:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->latestSubstate:Ljava/lang/String;

    return-void
.end method

.method public setMaxProgress(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->delegate:Lcom/amazon/kindle/services/download/IStatusTracker;

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/services/download/IStatusTracker;->setMaxProgress(J)V

    :cond_0
    return-void
.end method
