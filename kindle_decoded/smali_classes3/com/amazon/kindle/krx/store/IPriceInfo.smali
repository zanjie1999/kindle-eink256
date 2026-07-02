.class public interface abstract Lcom/amazon/kindle/krx/store/IPriceInfo;
.super Ljava/lang/Object;
.source "IPriceInfo.java"


# virtual methods
.method public abstract getAsin()Ljava/lang/String;
.end method

.method public abstract getCurrency()Ljava/lang/String;
.end method

.method public abstract getFormattedPrice()Ljava/lang/String;
.end method

.method public abstract getPrice()Ljava/lang/String;
.end method

.method public abstract getPriceAmount()Ljava/math/BigDecimal;
.end method

.method public abstract getPriceTTL()Ljava/util/Date;
.end method

.method public abstract getState()Lcom/amazon/kindle/krx/store/PurchaseState;
.end method

.method public abstract isBorrowable()Z
.end method

.method public abstract isBuyable()Z
.end method

.method public abstract isExpired()Z
.end method

.method public abstract isExpiringSoon()Z
.end method

.method public abstract isOwned()Z
.end method

.method public abstract isUnbuyable()Z
.end method
