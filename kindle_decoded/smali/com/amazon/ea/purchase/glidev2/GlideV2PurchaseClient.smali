.class public Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;
.super Ljava/lang/Object;
.source "GlideV2PurchaseClient.java"

# interfaces
.implements Lcom/amazon/ea/purchase/PurchaseClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$AcquireOfferHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/ea/purchase/PurchaseClient<",
        "Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTION_TYPE_PREFERENCE:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.purchase.glidev2.GlideV2PurchaseClient"


# instance fields
.field private final storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    sget-object v0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;->BORROW:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    sget-object v1, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;->BUY:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;->ACTION_TYPE_PREFERENCE:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;->storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;Lcom/google/common/base/Optional;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;->printOfferDebug(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;Lcom/google/common/base/Optional;)V

    return-void
.end method

.method private printOfferDebug(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;Lcom/google/common/base/Optional;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;",
            "Lcom/google/common/base/Optional<",
            "Lcom/amazon/kindle/krx/glide/KRXAsinOffer;",
            ">;)V"
        }
    .end annotation

    .line 114
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    sget-object v0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Offers for [asin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p3}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    sget-object v0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No preferred offer for [asin="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;->getAsinOffers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    .line 120
    invoke-virtual {p2}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getOfferId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getOfferId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getOfferId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 121
    :goto_1
    sget-object v1, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preferred="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getActionType()Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", program="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getActionProgram()Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", price="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getPrice()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", conditional="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->isConditional()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", asin="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getAsin()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public borrow(Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;Ljava/lang/String;)Lcom/amazon/ea/purchase/PurchaseClient$Result;
    .locals 11

    .line 218
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v6

    .line 219
    iget-object v7, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;->storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;

    invoke-virtual {p1}, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->getAsin()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->getKrxOffer()Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    move-result-object v9

    new-instance v10, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$AcquireOfferHandler;

    const-string v2, "borrow"

    move-object v0, v10

    move-object v1, p0

    move-object v3, v6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$AcquireOfferHandler;-><init>(Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;Ljava/lang/String;Lcom/google/common/util/concurrent/SettableFuture;Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;Ljava/lang/String;)V

    const-string/jumbo v3, "reader-startandendactions"

    move-object v0, v7

    move-object v1, v8

    move-object v2, v9

    move-object v4, p2

    move-object v5, v10

    invoke-interface/range {v0 .. v5}, Lcom/amazon/kindle/krx/store/IStoreManager;->borrowOfferFromAsin(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/KRXAsinOffer;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;)V

    .line 220
    invoke-static {v6}, Lcom/google/common/util/concurrent/Futures;->getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/ea/purchase/PurchaseClient$Result;

    return-object p1
.end method

.method public bridge synthetic borrow(Lcom/amazon/ea/purchase/model/BookOffer;Ljava/lang/String;)Lcom/amazon/ea/purchase/PurchaseClient$Result;
    .locals 0

    .line 42
    check-cast p1, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;->borrow(Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;Ljava/lang/String;)Lcom/amazon/ea/purchase/PurchaseClient$Result;

    move-result-object p1

    return-object p1
.end method

.method public buy(Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;Ljava/lang/String;)Lcom/amazon/ea/purchase/PurchaseClient$Result;
    .locals 11

    .line 186
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v6

    const-string v0, "anyactions.debugsettings"

    const-string/jumbo v1, "purchase.client.glidev2.dontbuy"

    .line 187
    invoke-static {v0, v1}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getBooleanPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;

    invoke-virtual {p1}, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->UNKNOWN:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    invoke-virtual {v0, p1}, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;->buildFailure(Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;)Lcom/amazon/ea/purchase/PurchaseClient$Result;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    :cond_0
    iget-object v7, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;->storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;

    invoke-virtual {p1}, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->getAsin()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->getKrxOffer()Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    move-result-object v9

    new-instance v10, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$AcquireOfferHandler;

    const-string v2, "buy"

    move-object v0, v10

    move-object v1, p0

    move-object v3, v6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$AcquireOfferHandler;-><init>(Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;Ljava/lang/String;Lcom/google/common/util/concurrent/SettableFuture;Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;Ljava/lang/String;)V

    const-string/jumbo v3, "reader-startandendactions"

    move-object v0, v7

    move-object v1, v8

    move-object v2, v9

    move-object v4, p2

    move-object v5, v10

    invoke-interface/range {v0 .. v5}, Lcom/amazon/kindle/krx/store/IStoreManager;->buyOfferFromAsin(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/KRXAsinOffer;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;)V

    .line 193
    :goto_0
    invoke-static {v6}, Lcom/google/common/util/concurrent/Futures;->getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/ea/purchase/PurchaseClient$Result;

    return-object p1
.end method

.method public bridge synthetic buy(Lcom/amazon/ea/purchase/model/BookOffer;Ljava/lang/String;)Lcom/amazon/ea/purchase/PurchaseClient$Result;
    .locals 0

    .line 42
    check-cast p1, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;->buy(Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;Ljava/lang/String;)Lcom/amazon/ea/purchase/PurchaseClient$Result;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public getOffers(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;
    .locals 5
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
            "Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;",
            ">;>;>;"
        }
    .end annotation

    .line 64
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 67
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 68
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 70
    :cond_0
    iget-object v2, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;->storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;

    new-instance v3, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$1;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$1;-><init>(Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;Ljava/util/List;Ljava/util/Map;Lcom/google/common/util/concurrent/SettableFuture;)V

    const-string/jumbo v1, "reader-startandendactions"

    invoke-interface {v2, p1, v1, p2, v3}, Lcom/amazon/kindle/krx/store/IStoreManager;->getBatchOffersForAsins(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;)V

    .line 107
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method getPreferredOffer(Ljava/util/List;)Lcom/google/common/base/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/glide/KRXAsinOffer;",
            ">;)",
            "Lcom/google/common/base/Optional<",
            "Lcom/amazon/kindle/krx/glide/KRXAsinOffer;",
            ">;"
        }
    .end annotation

    .line 137
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 138
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    .line 140
    sget-object v1, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;->ACTION_TYPE_PREFERENCE:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getActionType()Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->isConditional()Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object p1

    return-object p1

    .line 145
    :cond_1
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object p1

    return-object p1
.end method

.method public unBuy(Ljava/lang/String;Lcom/amazon/ea/purchase/model/PurchaseRecord;Ljava/lang/String;)Lcom/amazon/ea/purchase/PurchaseClient$Result;
    .locals 9

    .line 198
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;->storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;

    iget-object v3, p2, Lcom/amazon/ea/purchase/model/PurchaseRecord;->orderId:Ljava/lang/String;

    iget-object p2, p2, Lcom/amazon/ea/purchase/model/PurchaseRecord;->orderItemId:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    new-instance v8, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$2;

    invoke-direct {v8, p0, p1, p3, v0}, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$2;-><init>(Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/util/concurrent/SettableFuture;)V

    const-string/jumbo v6, "reader-startandendactions"

    move-object v2, p1

    move-object v7, p3

    invoke-interface/range {v1 .. v8}, Lcom/amazon/kindle/krx/store/IStoreManager;->returnOfferForAsin(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;)V

    .line 213
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/ea/purchase/PurchaseClient$Result;

    return-object p1
.end method
