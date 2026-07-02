.class public interface abstract Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;
.super Ljava/lang/Object;
.source "IReaderStateContext.java"

# interfaces
.implements Lcom/audible/hushpuppy/model/write/IStateContext;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/hushpuppy/model/write/IStateContext<",
        "Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract applicationBackgrounded()V
.end method

.method public abstract applicationForegrounded()V
.end method

.method public abstract deviceUnlocked()V
.end method

.method public abstract getBookReaderMode()Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;
.end method

.method public abstract getFullPlayerState()Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;
.end method

.method public abstract getInsideBookState()Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;
.end method

.method public abstract getLockScreenState()Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;
.end method

.method public abstract getOutsideApplicationState()Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;
.end method

.method public abstract getOutsideBookState()Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;
.end method

.method public abstract readerActivityBackgrounded()V
.end method

.method public abstract readerActivityForegrounded()V
.end method

.method public abstract screenOff()V
.end method

.method public abstract switchToInsideBookMode()V
.end method

.method public abstract switchToPlayerMode()V
.end method
