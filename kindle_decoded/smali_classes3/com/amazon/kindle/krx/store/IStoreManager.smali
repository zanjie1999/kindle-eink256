.class public interface abstract Lcom/amazon/kindle/krx/store/IStoreManager;
.super Ljava/lang/Object;
.source "IStoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;,
        Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;
    }
.end annotation


# static fields
.field public static final ALREADY_PURCHASED:Ljava/lang/String; = "already-purchased"

.field public static final CANCEL_DEFAULT_TTL:J = 0x493e0L

.field public static final INVALID_ASIN:Ljava/lang/String; = "invalid-asin"

.field public static final MISSING_ORDER_INFO:Ljava/lang/String; = "order-info-missing"

.field public static final NEED_BILLING_INFO:Ljava/lang/String; = "need-billing-address"

.field public static final NEED_CREDIT_CARD:Ljava/lang/String; = "need-credit-card"

.field public static final NO_PRICING_INFO:Ljava/lang/String; = "pricing-info-missing"

.field public static final ORDER_CANCELED:Ljava/lang/String; = "order-canceled"

.field public static final ORDER_CREATED:Ljava/lang/String; = "order-created"

.field public static final ORDER_ERROR:Ljava/lang/String; = "order-error"

.field public static final PREPAREBUY_DEFAULT_TTL:J = 0xdbba0L

.field public static final PRICE_INCREASED:Ljava/lang/String; = "price-increased"

.field public static final PURCHASE_RESTRICTED:Ljava/lang/String; = "purchase-restricted"

.field public static final UNBUY_ERROR:Ljava/lang/String; = "unbuy-error"


# virtual methods
.method public abstract borrowOfferFromAsin(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/KRXAsinOffer;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;)V
.end method

.method public abstract buyOfferFromAsin(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/KRXAsinOffer;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;)V
.end method

.method public abstract downloadBook(Lcom/amazon/kindle/krx/content/IBook;)V
.end method

.method public abstract downloadBookSample(Lcom/amazon/kindle/krx/content/IBook;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract downloadBookSample(Ljava/lang/String;)V
.end method

.method public abstract executeBuy(Ljava/lang/String;Lcom/amazon/kindle/krx/store/BuyListener;)V
.end method

.method public abstract executeUnbuy(Ljava/lang/String;Lcom/amazon/kindle/krx/store/BuyListener;)V
.end method

.method public varargs abstract fetchPrice(Lcom/amazon/kindle/krx/store/PriceUpdateListener;[Ljava/lang/String;)V
.end method

.method public abstract getBatchOffersForAsins(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getOffersForAsin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;)V
.end method

.method public abstract getStoreHostnameFromPfm(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract initiateBookDownload(Lcom/amazon/kindle/krx/content/IBook;)Z
.end method

.method public abstract loadAuthorPage(Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract loadAuthorPage(Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract loadBrowseNode(Ljava/lang/String;Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract loadDetailPage(Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract loadDetailPage(Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/content/ContentType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract loadFeatureDoc(Ljava/lang/String;Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract loadInitiatePurchase(Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract loadInitiatePurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract loadSearchResults(Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract loadStoreFront(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract loadStoreUrl(Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract returnAsin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;)V
.end method

.method public abstract returnOfferForAsin(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;)V
.end method

.method public abstract supports(Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;)Z
.end method
