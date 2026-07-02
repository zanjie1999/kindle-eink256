.class public interface abstract Lcom/amazon/ea/purchase/model/BookOffer;
.super Ljava/lang/Object;
.source "BookOffer.java"


# virtual methods
.method public abstract getAsin()Ljava/lang/String;
.end method

.method public abstract getBookCoverUrl(Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ColorMode;Z)Ljava/lang/String;
.end method

.method public abstract getCurrencyCode()Ljava/lang/String;
.end method

.method public abstract getFormattedPrice()Ljava/lang/String;
.end method

.method public abstract getPriceAmount()Ljava/math/BigDecimal;
.end method

.method public abstract isAcquirable()Z
.end method

.method public abstract isBorrowable()Z
.end method

.method public abstract isExpired()Z
.end method

.method public abstract isExpiringSoon()Z
.end method

.method public abstract isKuBook()Z
.end method

.method public abstract isPrBook()Z
.end method

.method public abstract toCacheString()Ljava/lang/String;
.end method

.method public abstract usesSidecarBorrowSetting()Z
.end method
