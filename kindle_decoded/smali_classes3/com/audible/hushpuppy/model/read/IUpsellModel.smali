.class public interface abstract Lcom/audible/hushpuppy/model/read/IUpsellModel;
.super Ljava/lang/Object;
.source "IUpsellModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;,
        Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;
    }
.end annotation


# virtual methods
.method public abstract getAudiobookAsin()Lcom/audible/mobile/domain/Asin;
.end method

.method public abstract getExpectedPrice()Lcom/audible/hushpuppy/common/upsell/PriceData;
.end method

.method public abstract getInputPerformed()Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;
.end method

.method public abstract getUpsellState()Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;
.end method

.method public abstract isUpsellInProgress()Z
.end method

.method public abstract reset()V
.end method
