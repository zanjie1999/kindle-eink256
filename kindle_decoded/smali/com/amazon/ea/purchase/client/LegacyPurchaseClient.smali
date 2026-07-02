.class public Lcom/amazon/ea/purchase/client/LegacyPurchaseClient;
.super Ljava/lang/Object;
.source "LegacyPurchaseClient.java"

# interfaces
.implements Lcom/amazon/ea/purchase/PurchaseClient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/ea/purchase/PurchaseClient<",
        "Lcom/amazon/ea/purchase/model/LegacyBookOffer;",
        ">;"
    }
.end annotation


# static fields
.field private static final BORROW_ENDPOINT:Ljava/lang/String; = "/gp/product/features/glide.html/?action=KUborrow&asin=%s&gi_csrf=%s&ref=%s&responseFormat=json"

.field private static final GET_OFFER_ENDPOINT:Ljava/lang/String; = "/gp/kindle/public/getOffer/v1.html?asin=%s"

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.purchase.client.LegacyPurchaseClient"


# instance fields
.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/amazon/ea/purchase/client/LegacyPurchaseClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method private executeBuyRequest(Ljava/lang/String;Lcom/amazon/ea/purchase/model/BookOffer;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/response/BuyResponse;
    .locals 2

    .line 83
    new-instance v0, Lcom/amazon/ea/purchase/client/request/BuyRequest;

    iget-object v1, p0, Lcom/amazon/ea/purchase/client/LegacyPurchaseClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, v1}, Lcom/amazon/ea/purchase/client/request/BuyRequest;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 84
    invoke-virtual {v0, p1}, Lcom/amazon/ea/purchase/client/request/BuyRequest;->setAsin(Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BuyRequest;

    .line 85
    invoke-interface {p2}, Lcom/amazon/ea/purchase/model/BookOffer;->getPriceAmount()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-interface {p2}, Lcom/amazon/ea/purchase/model/BookOffer;->getCurrencyCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/amazon/ea/purchase/client/request/BuyRequest;->setPrice(Ljava/math/BigDecimal;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BuyRequest;

    .line 86
    invoke-virtual {v0, p3}, Lcom/amazon/ea/purchase/client/request/BuyRequest;->setRefTag(Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BuyRequest;

    .line 87
    invoke-static {}, Lcom/amazon/ea/purchase/cache/TokenCache;->getPrepareBuyTokens()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/ea/purchase/client/request/BuyRequest;->setTokens(Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BuyRequest;

    .line 88
    invoke-static {}, Lcom/amazon/ea/purchase/cache/TokenCache;->getSessionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/ea/purchase/client/request/BuyRequest;->setSessionId(Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BuyRequest;

    .line 89
    invoke-virtual {v0}, Lcom/amazon/ea/purchase/client/request/BuyRequest;->execute()Lcom/amazon/ea/purchase/client/response/BuyResponse;

    move-result-object p1

    return-object p1
.end method

.method static final getCSRFToken(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "asinInfo"

    .line 189
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "actions"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v0, 0x0

    .line 190
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 191
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "actionType"

    .line 192
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p0, "csrfToken"

    .line 194
    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public bridge synthetic borrow(Lcom/amazon/ea/purchase/model/BookOffer;Ljava/lang/String;)Lcom/amazon/ea/purchase/PurchaseClient$Result;
    .locals 0

    .line 43
    check-cast p1, Lcom/amazon/ea/purchase/model/LegacyBookOffer;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/ea/purchase/client/LegacyPurchaseClient;->borrow(Lcom/amazon/ea/purchase/model/LegacyBookOffer;Ljava/lang/String;)Lcom/amazon/ea/purchase/PurchaseClient$Result;

    move-result-object p1

    return-object p1
.end method

.method public borrow(Lcom/amazon/ea/purchase/model/LegacyBookOffer;Ljava/lang/String;)Lcom/amazon/ea/purchase/PurchaseClient$Result;
    .locals 6

    .line 153
    new-instance v0, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;

    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "/gp/kindle/public/getOffer/v1.html?asin=%s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 155
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->getAsin()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/ea/util/AjaxMessagingManager;->authenticatedGet(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "Borrow"

    .line 156
    invoke-static {v1, v3}, Lcom/amazon/ea/purchase/client/LegacyPurchaseClient;->getCSRFToken(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "/gp/product/features/glide.html/?action=KUborrow&asin=%s&gi_csrf=%s&ref=%s&responseFormat=json"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 158
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->getAsin()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v5

    aput-object v1, v4, v2

    const/4 p1, 0x2

    aput-object p2, v4, p1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/ea/util/AjaxMessagingManager;->authenticatedGet(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string/jumbo p2, "status"

    .line 160
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "success"

    .line 161
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;->buildSuccess()Lcom/amazon/ea/purchase/PurchaseClient$Result;

    move-result-object p1

    return-object p1

    .line 165
    :cond_0
    sget-object p1, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->UNKNOWN:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    invoke-virtual {v0, p1}, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;->buildFailure(Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;)Lcom/amazon/ea/purchase/PurchaseClient$Result;

    move-result-object p1

    return-object p1

    .line 168
    :cond_1
    sget-object p1, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->AUTHENTICATION_FAILED:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    invoke-virtual {v0, p1}, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;->buildFailure(Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;)Lcom/amazon/ea/purchase/PurchaseClient$Result;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 171
    sget-object p2, Lcom/amazon/ea/purchase/client/LegacyPurchaseClient;->TAG:Ljava/lang/String;

    const-string v1, "Exception in borrow"

    invoke-static {p2, v1, p1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    sget-object p1, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->UNKNOWN:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    invoke-virtual {v0, p1}, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;->buildFailure(Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;)Lcom/amazon/ea/purchase/PurchaseClient$Result;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buy(Lcom/amazon/ea/purchase/model/BookOffer;Ljava/lang/String;)Lcom/amazon/ea/purchase/PurchaseClient$Result;
    .locals 0

    .line 43
    check-cast p1, Lcom/amazon/ea/purchase/model/LegacyBookOffer;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/ea/purchase/client/LegacyPurchaseClient;->buy(Lcom/amazon/ea/purchase/model/LegacyBookOffer;Ljava/lang/String;)Lcom/amazon/ea/purchase/PurchaseClient$Result;

    move-result-object p1

    return-object p1
.end method

.method public buy(Lcom/amazon/ea/purchase/model/LegacyBookOffer;Ljava/lang/String;)Lcom/amazon/ea/purchase/PurchaseClient$Result;
    .locals 2

    .line 94
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/ea/purchase/client/LegacyPurchaseClient;->executeBuyRequest(Ljava/lang/String;Lcom/amazon/ea/purchase/model/BookOffer;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/response/BuyResponse;

    move-result-object v0

    .line 96
    iget-boolean v1, v0, Lcom/amazon/ea/purchase/client/response/BuyResponse;->success:Z

    if-nez v1, :cond_0

    .line 100
    iget-boolean v1, v0, Lcom/amazon/ea/purchase/client/response/BuyResponse;->mfaChallengeRequired:Z

    if-nez v1, :cond_0

    .line 104
    sget-object v0, Lcom/amazon/ea/purchase/client/LegacyPurchaseClient;->TAG:Ljava/lang/String;

    const-string v1, "Buy failed, refreshing cookies and trying again..."

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/amazon/ea/purchase/client/LegacyPurchaseClient;->getOffers(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;

    .line 106
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/ea/purchase/client/LegacyPurchaseClient;->executeBuyRequest(Ljava/lang/String;Lcom/amazon/ea/purchase/model/BookOffer;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/response/BuyResponse;

    move-result-object v0

    .line 110
    :cond_0
    new-instance v1, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;

    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/LegacyBookOffer;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-boolean p1, v0, Lcom/amazon/ea/purchase/client/response/BuyResponse;->success:Z

    if-eqz p1, :cond_1

    .line 112
    invoke-virtual {v1}, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;->buildSuccess()Lcom/amazon/ea/purchase/PurchaseClient$Result;

    move-result-object p1

    return-object p1

    .line 114
    :cond_1
    iget-boolean p1, v0, Lcom/amazon/ea/purchase/client/response/BuyResponse;->priceIncreased:Z

    if-eqz p1, :cond_2

    .line 115
    sget-object p1, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->PRICE_INCREASED:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    invoke-virtual {v1, p1}, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;->buildFailure(Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;)Lcom/amazon/ea/purchase/PurchaseClient$Result;

    move-result-object p1

    return-object p1

    .line 116
    :cond_2
    iget-boolean p1, v0, Lcom/amazon/ea/purchase/client/response/BuyResponse;->needCreditCard:Z

    if-eqz p1, :cond_3

    .line 117
    sget-object p1, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->NEED_CREDIT_CARD:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    invoke-virtual {v1, p1}, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;->buildFailure(Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;)Lcom/amazon/ea/purchase/PurchaseClient$Result;

    move-result-object p1

    return-object p1

    .line 118
    :cond_3
    iget-boolean p1, v0, Lcom/amazon/ea/purchase/client/response/BuyResponse;->needBillingAddress:Z

    if-eqz p1, :cond_4

    .line 119
    sget-object p1, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->NEED_BILLING_ADDRESS:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    invoke-virtual {v1, p1}, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;->buildFailure(Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;)Lcom/amazon/ea/purchase/PurchaseClient$Result;

    move-result-object p1

    return-object p1

    .line 120
    :cond_4
    iget-boolean p1, v0, Lcom/amazon/ea/purchase/client/response/BuyResponse;->mfaChallengeRequired:Z

    if-eqz p1, :cond_5

    .line 121
    sget-object p1, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->MFA_CHALLENGE_REQUIRED:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    invoke-virtual {v1, p1}, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;->buildFailure(Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;)Lcom/amazon/ea/purchase/PurchaseClient$Result;

    move-result-object p1

    return-object p1

    .line 123
    :cond_5
    sget-object p1, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->UNKNOWN:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    invoke-virtual {v1, p1}, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;->buildFailure(Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;)Lcom/amazon/ea/purchase/PurchaseClient$Result;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 0

    .line 202
    invoke-static {}, Lcom/amazon/ea/purchase/cache/TokenCache;->clear()V

    return-void
.end method

.method public getOffers(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;
    .locals 18
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
            "Lcom/amazon/ea/purchase/model/LegacyBookOffer;",
            ">;>;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 58
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 59
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 62
    :cond_0
    new-instance v2, Lcom/amazon/ea/purchase/client/request/PrepareBuyRequest;

    iget-object v3, v0, Lcom/amazon/ea/purchase/client/LegacyPurchaseClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v2, v3}, Lcom/amazon/ea/purchase/client/request/PrepareBuyRequest;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    move-object/from16 v3, p1

    .line 63
    invoke-virtual {v2, v3}, Lcom/amazon/ea/purchase/client/request/PrepareBuyRequest;->setAsins(Ljava/util/List;)Lcom/amazon/ea/purchase/client/request/PrepareBuyRequest;

    move-object/from16 v4, p2

    .line 64
    invoke-virtual {v2, v4}, Lcom/amazon/ea/purchase/client/request/PrepareBuyRequest;->setRefTag(Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/PrepareBuyRequest;

    .line 65
    invoke-virtual {v2}, Lcom/amazon/ea/purchase/client/request/PrepareBuyRequest;->execute()Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse;

    move-result-object v2

    .line 66
    iget-boolean v4, v2, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse;->success:Z

    if-nez v4, :cond_1

    return-object v1

    .line 69
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 70
    iget-object v5, v2, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse;->preparedBooks:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse$PreparedBook;

    if-eqz v5, :cond_2

    .line 72
    new-instance v15, Lcom/amazon/ea/purchase/model/LegacyBookOffer;

    iget-object v7, v5, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse$PreparedBook;->priceAmount:Ljava/math/BigDecimal;

    iget-object v8, v5, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse$PreparedBook;->currencyCode:Ljava/lang/String;

    iget-object v9, v5, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse$PreparedBook;->formattedPrice:Ljava/lang/String;

    iget-boolean v10, v5, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse$PreparedBook;->buyable:Z

    iget-boolean v11, v5, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse$PreparedBook;->borrowable:Z

    iget-boolean v12, v5, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse$PreparedBook;->isKUBook:Z

    iget-wide v13, v2, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse;->maxAge:J

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object v5, v15

    move-object v6, v4

    move-object/from16 p1, v3

    move-object v3, v15

    move-wide/from16 v15, v16

    invoke-direct/range {v5 .. v16}, Lcom/amazon/ea/purchase/model/LegacyBookOffer;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;ZZZJJ)V

    .line 74
    new-instance v5, Lcom/amazon/ea/purchase/cache/CachedBookOffer;

    invoke-static {}, Lcom/amazon/ea/purchase/cache/OfferCache;->getLegacyCache()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-direct {v5, v3, v0, v6}, Lcom/amazon/ea/purchase/cache/CachedBookOffer;-><init>(Lcom/amazon/ea/purchase/model/BookOffer;Lcom/amazon/ea/purchase/PurchaseClient;Landroid/content/SharedPreferences;)V

    invoke-static {v5}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    move-object/from16 p1, v3

    :goto_2
    move-object/from16 v3, p1

    goto :goto_1

    .line 77
    :cond_3
    iget-object v3, v2, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse;->tokens:Ljava/lang/String;

    invoke-static {v3}, Lcom/amazon/ea/purchase/cache/TokenCache;->setPrepareBuyTokens(Ljava/lang/String;)V

    .line 78
    iget-object v2, v2, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse;->sessionId:Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/ea/purchase/cache/TokenCache;->setSessionId(Ljava/lang/String;)V

    return-object v1
.end method

.method public unBuy(Ljava/lang/String;Lcom/amazon/ea/purchase/model/PurchaseRecord;Ljava/lang/String;)Lcom/amazon/ea/purchase/PurchaseClient$Result;
    .locals 2

    .line 131
    new-instance v0, Lcom/amazon/ea/purchase/client/request/UnBuyRequest;

    iget-object v1, p0, Lcom/amazon/ea/purchase/client/LegacyPurchaseClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, v1}, Lcom/amazon/ea/purchase/client/request/UnBuyRequest;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 132
    invoke-virtual {v0, p1}, Lcom/amazon/ea/purchase/client/request/UnBuyRequest;->setAsin(Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/UnBuyRequest;

    iget-object v1, p2, Lcom/amazon/ea/purchase/model/PurchaseRecord;->orderId:Ljava/lang/String;

    iget-object p2, p2, Lcom/amazon/ea/purchase/model/PurchaseRecord;->orderItemId:Ljava/lang/String;

    .line 133
    invoke-virtual {v0, v1, p2}, Lcom/amazon/ea/purchase/client/request/UnBuyRequest;->setOrderId(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/UnBuyRequest;

    .line 134
    invoke-static {}, Lcom/amazon/ea/purchase/cache/TokenCache;->getSessionId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazon/ea/purchase/client/request/UnBuyRequest;->setSessionId(Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/UnBuyRequest;

    .line 135
    invoke-static {}, Lcom/amazon/ea/purchase/cache/TokenCache;->getPrepareBuyTokens()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazon/ea/purchase/client/request/UnBuyRequest;->setTokens(Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/UnBuyRequest;

    .line 136
    invoke-virtual {v0, p3}, Lcom/amazon/ea/purchase/client/request/UnBuyRequest;->setRefTag(Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/UnBuyRequest;

    .line 137
    invoke-virtual {v0}, Lcom/amazon/ea/purchase/client/request/UnBuyRequest;->execute()Lcom/amazon/ea/purchase/client/response/UnBuyResponse;

    move-result-object p2

    .line 138
    new-instance v0, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;

    invoke-direct {v0, p1, p3}, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-boolean p1, p2, Lcom/amazon/ea/purchase/client/response/UnBuyResponse;->success:Z

    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {v0}, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;->buildSuccess()Lcom/amazon/ea/purchase/PurchaseClient$Result;

    move-result-object p1

    return-object p1

    .line 142
    :cond_0
    sget-object p1, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->UNKNOWN:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    invoke-virtual {v0, p1}, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;->buildFailure(Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;)Lcom/amazon/ea/purchase/PurchaseClient$Result;

    move-result-object p1

    return-object p1
.end method
