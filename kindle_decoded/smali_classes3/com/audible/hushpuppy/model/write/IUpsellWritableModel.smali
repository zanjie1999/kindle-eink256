.class public interface abstract Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;
.super Ljava/lang/Object;
.source "IUpsellWritableModel.java"

# interfaces
.implements Lcom/audible/hushpuppy/model/read/IUpsellModel;
.implements Lcom/audible/hushpuppy/model/ITimeOutCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/hushpuppy/model/read/IUpsellModel;",
        "Lcom/audible/hushpuppy/model/ITimeOutCallback<",
        "Lcom/audible/mobile/domain/Asin;",
        "Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract init(Lcom/audible/mobile/domain/Asin;)Z
.end method

.method public abstract setExpectedPrice(Lcom/audible/hushpuppy/common/upsell/PriceData;)V
.end method

.method public abstract setInputPerformed(Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;)V
.end method

.method public abstract setUpsellState(Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;)V
.end method
