.class public interface abstract Lcom/amazon/ea/purchase/PurchaseClient;
.super Ljava/lang/Object;
.source "PurchaseClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ea/purchase/PurchaseClient$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/amazon/ea/purchase/model/BookOffer;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract borrow(Lcom/amazon/ea/purchase/model/BookOffer;Ljava/lang/String;)Lcom/amazon/ea/purchase/PurchaseClient$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/ea/purchase/PurchaseClient$Result;"
        }
    .end annotation
.end method

.method public abstract buy(Lcom/amazon/ea/purchase/model/BookOffer;Ljava/lang/String;)Lcom/amazon/ea/purchase/PurchaseClient$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/ea/purchase/PurchaseClient$Result;"
        }
    .end annotation
.end method

.method public abstract clear()V
.end method

.method public abstract getOffers(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/common/base/Optional<",
            "Lcom/amazon/ea/purchase/cache/CachedBookOffer<",
            "TO;>;>;>;"
        }
    .end annotation
.end method

.method public abstract unBuy(Ljava/lang/String;Lcom/amazon/ea/purchase/model/PurchaseRecord;Ljava/lang/String;)Lcom/amazon/ea/purchase/PurchaseClient$Result;
.end method
