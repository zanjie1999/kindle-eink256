.class public interface abstract Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;
.super Ljava/lang/Object;
.source "IPlayerStateContext.java"

# interfaces
.implements Lcom/audible/hushpuppy/model/write/IStateContext;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/hushpuppy/model/write/IStateContext<",
        "Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getAudioPosition()I
.end method

.method public abstract getErrorState()Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;
.end method

.method public abstract getPauseState()Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;
.end method

.method public abstract getPlayState()Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;
.end method

.method public abstract updateAudioPosition(I)V
.end method

.method public abstract updateErrorState()V
.end method

.method public abstract updatePauseState()V
.end method

.method public abstract updatePlayState()V
.end method
