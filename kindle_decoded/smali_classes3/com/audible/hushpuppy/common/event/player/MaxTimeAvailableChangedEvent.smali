.class public final Lcom/audible/hushpuppy/common/event/player/MaxTimeAvailableChangedEvent;
.super Ljava/lang/Object;
.source "MaxTimeAvailableChangedEvent.java"


# instance fields
.field private final maxTimeAvailableMilliseconds:I


# virtual methods
.method public getMaxTimeAvailableMilliseconds()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/audible/hushpuppy/common/event/player/MaxTimeAvailableChangedEvent;->maxTimeAvailableMilliseconds:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MaxTimeAvailableChangedEvent{maxTimeAvailableMilliseconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/audible/hushpuppy/common/event/player/MaxTimeAvailableChangedEvent;->maxTimeAvailableMilliseconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
