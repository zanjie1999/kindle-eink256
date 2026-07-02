.class public Lcom/amazon/sitb/android/purchase/GlideClient;
.super Ljava/lang/Object;
.source "GlideClient.java"


# static fields
.field private static final ACTION_TYPE_PREFERENCE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_RESULT_LOG_FORMATTER:Ljava/lang/String; = "glide call=%s received empty result. asin=%s, refTag=%s"

.field private static final ERROR_LOG_FORMATTER:Ljava/lang/String; = "glide call=%s failed. asin=%s, error=%s"

.field private static final GLIDE_CLIENT_ID:Ljava/lang/String; = "default"

.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private final storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/purchase/GlideClient;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/purchase/GlideClient;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    .line 42
    sget-object v1, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;->BORROW:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;->BUY:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 43
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 42
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/purchase/GlideClient;->ACTION_TYPE_PREFERENCE:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/store/IStoreManager;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/amazon/sitb/android/purchase/GlideClient;->storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;

    return-void
.end method

.method static synthetic access$000()Lcom/amazon/sitb/android/ISamplingLogger;
    .locals 1

    .line 34
    sget-object v0, Lcom/amazon/sitb/android/purchase/GlideClient;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/sitb/android/purchase/GlideClient;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer;
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/amazon/sitb/android/purchase/GlideClient;->getBestOffer(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    move-result-object p0

    return-object p0
.end method

.method private getBestOffer(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer;
    .locals 3

    if-eqz p2, :cond_2

    .line 112
    invoke-virtual {p2}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;->getAsinOffers()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;->getAsinOffers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 117
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 118
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    .line 119
    sget-object v0, Lcom/amazon/sitb/android/purchase/GlideClient;->ACTION_TYPE_PREFERENCE:Ljava/util/List;

    invoke-virtual {p2}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getActionType()Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->isConditional()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p2

    .line 113
    :cond_2
    :goto_0
    sget-object p2, Lcom/amazon/sitb/android/purchase/GlideClient;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "getOffersFromAsin"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "No offer provided for glide call=%s with asin=%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private getBuyOfferCallBack(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/util/concurrent/SettableFuture;)Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Lcom/amazon/sitb/android/BuyAsinResult;",
            ">;)",
            "Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;"
        }
    .end annotation

    .line 148
    new-instance v0, Lcom/amazon/sitb/android/purchase/GlideClient$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/sitb/android/purchase/GlideClient$2;-><init>(Lcom/amazon/sitb/android/purchase/GlideClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/util/concurrent/SettableFuture;)V

    return-object v0
.end method

.method private getGetOfferCallBack(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/util/concurrent/SettableFuture;)Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Lcom/amazon/kindle/krx/glide/KRXAsinOffer;",
            ">;)",
            "Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;"
        }
    .end annotation

    .line 128
    new-instance v0, Lcom/amazon/sitb/android/purchase/GlideClient$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/sitb/android/purchase/GlideClient$1;-><init>(Lcom/amazon/sitb/android/purchase/GlideClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/util/concurrent/SettableFuture;)V

    return-object v0
.end method

.method private getReturnOfferCallBack(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/util/concurrent/SettableFuture;)Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Lcom/amazon/sitb/android/UnBuyResult;",
            ">;)",
            "Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;"
        }
    .end annotation

    .line 172
    new-instance v0, Lcom/amazon/sitb/android/purchase/GlideClient$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/sitb/android/purchase/GlideClient$3;-><init>(Lcom/amazon/sitb/android/purchase/GlideClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/util/concurrent/SettableFuture;)V

    return-object v0
.end method


# virtual methods
.method public buyAsinFromOffer(Ljava/lang/String;Lcom/amazon/sitb/android/BookPrice;Ljava/lang/String;)Lcom/amazon/sitb/android/BuyAsinResult;
    .locals 6

    .line 76
    invoke-static {p2}, Lcom/amazon/sitb/android/utils/BookPriceUtils;->convertBookPriceToGlideOffer(Lcom/amazon/sitb/android/BookPrice;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    move-result-object v2

    .line 78
    sget-object p2, Lcom/amazon/sitb/android/purchase/GlideClient;->ACTION_TYPE_PREFERENCE:Ljava/util/List;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getActionType()Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 79
    sget-object p1, Lcom/amazon/sitb/android/BuyAsinResult;->GENERAL_FAILURE:Lcom/amazon/sitb/android/BuyAsinResult;

    return-object p1

    .line 82
    :cond_0
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object p2

    .line 83
    invoke-direct {p0, p1, p3, p2}, Lcom/amazon/sitb/android/purchase/GlideClient;->getBuyOfferCallBack(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/util/concurrent/SettableFuture;)Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;

    move-result-object v5

    .line 84
    iget-object v0, p0, Lcom/amazon/sitb/android/purchase/GlideClient;->storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;

    const-string v3, "default"

    move-object v1, p1

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/amazon/kindle/krx/store/IStoreManager;->buyOfferFromAsin(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/KRXAsinOffer;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;)V

    .line 86
    invoke-static {p2}, Lcom/google/common/util/concurrent/Futures;->getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/sitb/android/BuyAsinResult;

    return-object p1
.end method

.method public getOfferFromAsin(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/sitb/android/BookPrice;
    .locals 4

    .line 57
    invoke-static {p1}, Lcom/amazon/sitb/android/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/amazon/sitb/android/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/sitb/android/purchase/GlideClient;->getGetOfferCallBack(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/util/concurrent/SettableFuture;)Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;

    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/amazon/sitb/android/purchase/GlideClient;->storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;

    const-string v3, "default"

    invoke-interface {v2, p1, v3, p2, v1}, Lcom/amazon/kindle/krx/store/IStoreManager;->getOffersForAsin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;)V

    .line 65
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    .line 66
    invoke-static {p1}, Lcom/amazon/sitb/android/utils/BookPriceUtils;->convertGlideOfferToBookPrice(Lcom/amazon/kindle/krx/glide/KRXAsinOffer;)Lcom/amazon/sitb/android/BookPrice;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public returnAsin(Ljava/lang/String;Lcom/amazon/sitb/android/PurchaseRecord;Ljava/lang/String;)Lcom/amazon/sitb/android/UnBuyResult;
    .locals 3

    if-eqz p2, :cond_1

    .line 95
    invoke-virtual {p2}, Lcom/amazon/sitb/android/PurchaseRecord;->isSuccess()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object p2

    .line 100
    invoke-direct {p0, p1, p3, p2}, Lcom/amazon/sitb/android/purchase/GlideClient;->getReturnOfferCallBack(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/util/concurrent/SettableFuture;)Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/amazon/sitb/android/purchase/GlideClient;->storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;

    const-string v2, "default"

    invoke-interface {v1, p1, v2, p3, v0}, Lcom/amazon/kindle/krx/store/IStoreManager;->returnAsin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;)V

    .line 104
    invoke-static {p2}, Lcom/google/common/util/concurrent/Futures;->getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/sitb/android/UnBuyResult;

    return-object p1

    .line 96
    :cond_1
    :goto_0
    sget-object p1, Lcom/amazon/sitb/android/UnBuyResult;->GENERAL_FAILURE:Lcom/amazon/sitb/android/UnBuyResult;

    return-object p1
.end method
