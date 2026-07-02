.class public Lcom/amazon/kindle/store/utils/PriceCache;
.super Ljava/lang/Object;
.source "PriceCache.java"


# static fields
.field private static final PREFERENCE_PURCHASE_PRICE_STORAGE:Ljava/lang/String; = "redding.preference.purchase.price.cache"

.field private static final TAG:Ljava/lang/String;

.field private static prefsLoaded:Z

.field private static priceCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/store/models/PriceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kindle/store/utils/PriceCache;->priceCache:Ljava/util/Map;

    const/4 v0, 0x0

    .line 39
    sput-boolean v0, Lcom/amazon/kindle/store/utils/PriceCache;->prefsLoaded:Z

    .line 43
    const-class v0, Lcom/amazon/kindle/store/utils/PriceCache;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/store/utils/PriceCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized addPriceInfo(Lcom/amazon/kindle/store/models/PriceInfo;)V
    .locals 3

    const-class v0, Lcom/amazon/kindle/store/utils/PriceCache;

    monitor-enter v0

    .line 455
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/store/utils/PriceCache;->priceCache:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/amazon/kindle/store/models/PriceInfo;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static cleanUserPrefs()V
    .locals 7

    .line 737
    sget-object v0, Lcom/amazon/kindle/store/utils/PriceCache;->priceCache:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 738
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "redding.preference.purchase.price.cache"

    .line 739
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 741
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/amazon/kindle/store/utils/PriceCache;->priceCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 743
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 744
    sget-object v3, Lcom/amazon/kindle/store/utils/PriceCache;->priceCache:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/store/models/PriceInfo;

    .line 746
    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 748
    invoke-virtual {v3}, Lcom/amazon/kindle/store/models/PriceInfo;->getCancelOverride()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 749
    invoke-virtual {v4, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 750
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 751
    sget-object v3, Lcom/amazon/kindle/store/utils/PriceCache;->priceCache:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 752
    :cond_1
    invoke-virtual {v3}, Lcom/amazon/kindle/store/models/PriceInfo;->getOrderTTL()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/amazon/kindle/store/models/PriceInfo;->getOrderTTL()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 753
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 754
    sget-object v3, Lcom/amazon/kindle/store/utils/PriceCache;->priceCache:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 755
    :cond_2
    invoke-virtual {v3}, Lcom/amazon/kindle/store/models/PriceInfo;->getPriceTTL()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcom/amazon/kindle/store/models/PriceInfo;->getPriceTTL()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 756
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 757
    sget-object v3, Lcom/amazon/kindle/store/utils/PriceCache;->priceCache:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static getAllPrices()[Lcom/amazon/kindle/store/models/PriceInfo;
    .locals 2

    .line 53
    sget-object v0, Lcom/amazon/kindle/store/utils/PriceCache;->priceCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/store/utils/PriceCache;->priceCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/amazon/kindle/store/models/PriceInfo;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/store/models/PriceInfo;

    return-object v0
.end method

.method public static initPrefs()V
    .locals 3

    .line 428
    sget-boolean v0, Lcom/amazon/kindle/store/utils/PriceCache;->prefsLoaded:Z

    if-nez v0, :cond_2

    .line 429
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "redding.preference.purchase.price.cache"

    .line 430
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 432
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 433
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 434
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 435
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 438
    invoke-static {v2, v1}, Lcom/amazon/kindle/store/utils/PriceCache;->parsePriceJson(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/store/models/PriceInfo;

    move-result-object v1

    .line 439
    invoke-static {v1}, Lcom/amazon/kindle/store/utils/PriceCache;->addPriceInfo(Lcom/amazon/kindle/store/models/PriceInfo;)V

    goto :goto_0

    .line 443
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/store/utils/PriceCache;->cleanUserPrefs()V

    const/4 v0, 0x1

    .line 445
    sput-boolean v0, Lcom/amazon/kindle/store/utils/PriceCache;->prefsLoaded:Z

    :cond_2
    return-void
.end method

.method private static parsePriceJson(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/store/models/PriceInfo;
    .locals 19

    const-string v0, "orderTTL"

    const-string v1, "orderItemID"

    const-string v2, "orderID"

    const-string v3, "cancelTTL"

    const-string v4, "currency"

    const-string v5, "xuid"

    const-string v6, "buyable"

    const-string v7, "formattedPrice"

    const-string v8, "priceAmount"

    const-string v9, "token"

    const-string v10, "sessionId"

    const-string v11, "price"

    const-string v12, "borrowable"

    const-string v13, "pricingTTL"

    .line 468
    :try_start_0
    new-instance v14, Lcom/amazon/kindle/store/models/PriceInfo;

    move-object/from16 v15, p0

    invoke-direct {v14, v15}, Lcom/amazon/kindle/store/models/PriceInfo;-><init>(Ljava/lang/String;)V

    .line 470
    new-instance v15, Lorg/json/JSONObject;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    new-instance v0, Ljava/util/Date;

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v0}, Lcom/amazon/kindle/store/models/PriceInfo;->setPriceTTL(Ljava/util/Date;)V

    goto :goto_0

    :cond_0
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .line 476
    :goto_0
    invoke-virtual {v15, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    invoke-virtual {v15, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v14, v0}, Lcom/amazon/kindle/store/models/PriceInfo;->setBorrowable(Z)V

    .line 480
    :cond_1
    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 481
    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/amazon/kindle/store/models/PriceInfo;->setPrice(Ljava/lang/String;)V

    .line 484
    :cond_2
    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 485
    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/amazon/kindle/store/models/PriceInfo;->setSessionId(Ljava/lang/String;)V

    .line 488
    :cond_3
    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 489
    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/amazon/kindle/store/models/PriceInfo;->setToken(Ljava/lang/String;)V

    .line 492
    :cond_4
    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 493
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v14, v0}, Lcom/amazon/kindle/store/models/PriceInfo;->setPriceAmount(Ljava/math/BigDecimal;)V

    .line 496
    :cond_5
    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 497
    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/amazon/kindle/store/models/PriceInfo;->setFormattedPrice(Ljava/lang/String;)V

    .line 500
    :cond_6
    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 501
    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v14, v0}, Lcom/amazon/kindle/store/models/PriceInfo;->setBuyable(Z)V

    .line 504
    :cond_7
    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 505
    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/amazon/kindle/store/models/PriceInfo;->setxUid(Ljava/lang/String;)V

    .line 508
    :cond_8
    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 509
    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/amazon/kindle/store/models/PriceInfo;->setCurrency(Ljava/lang/String;)V

    .line 512
    :cond_9
    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 513
    new-instance v0, Ljava/util/Date;

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v0}, Lcom/amazon/kindle/store/models/PriceInfo;->setCancelOverride(Ljava/util/Date;)V

    :cond_a
    move-object/from16 v0, v18

    .line 516
    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 517
    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/amazon/kindle/store/models/PriceInfo;->setOrderId(Ljava/lang/String;)V

    :cond_b
    move-object/from16 v0, v17

    .line 520
    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 521
    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/amazon/kindle/store/models/PriceInfo;->setOrderItemId(Ljava/lang/String;)V

    :cond_c
    move-object/from16 v0, v16

    .line 524
    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 525
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v1}, Lcom/amazon/kindle/store/models/PriceInfo;->setOrderTTL(Ljava/util/Date;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_d
    return-object v14

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
