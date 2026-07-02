.class public Lcom/amazon/ea/purchase/cache/RecentPurchaseCache;
.super Ljava/lang/Object;
.source "RecentPurchaseCache.java"


# static fields
.field private static final CACHE_STRING_FIELD_SEPARATOR:Ljava/lang/String; = "@@"

.field private static final NUM_FIELDS:I = 0x2

.field private static final PREFERENCE_RECENT_PURCHASE_CACHE:Ljava/lang/String; = "endactions.preference.purchase.recent.purchase.cache"

.field private static final RECENT_PURCHASE_KEY_PREFIX:Ljava/lang/String; = "order-"

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.purchase.cache.RecentPurchaseCache"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static clear()V
    .locals 1

    .line 78
    invoke-static {}, Lcom/amazon/ea/purchase/cache/RecentPurchaseCache;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static clearPurchaseRecord(Ljava/lang/String;)V
    .locals 3

    .line 71
    invoke-static {}, Lcom/amazon/ea/purchase/cache/RecentPurchaseCache;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "order-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static fromCacheString(Ljava/lang/String;)Lcom/amazon/ea/purchase/model/PurchaseRecord;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "@@"

    .line 98
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 99
    array-length v1, p0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 100
    sget-object p0, Lcom/amazon/ea/purchase/cache/RecentPurchaseCache;->TAG:Ljava/lang/String;

    const-string v1, "Incorrect number of fields in cache string"

    invoke-static {p0, v1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 104
    aget-object v1, p0, v1

    const/4 v2, 0x1

    .line 105
    aget-object p0, p0, v2

    .line 107
    new-instance v2, Lcom/amazon/ea/purchase/model/PurchaseRecord;

    invoke-direct {v2, v1, p0}, Lcom/amazon/ea/purchase/model/PurchaseRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 109
    :catch_0
    sget-object p0, Lcom/amazon/ea/purchase/cache/RecentPurchaseCache;->TAG:Ljava/lang/String;

    const-string v1, "Exception retrieving recent purchase from cache string"

    invoke-static {p0, v1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPurchaseRecord(Ljava/lang/String;)Lcom/amazon/ea/purchase/model/PurchaseRecord;
    .locals 3

    .line 38
    invoke-static {}, Lcom/amazon/ea/purchase/cache/RecentPurchaseCache;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "order-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    .line 44
    :cond_0
    invoke-static {v0}, Lcom/amazon/ea/purchase/cache/RecentPurchaseCache;->fromCacheString(Ljava/lang/String;)Lcom/amazon/ea/purchase/model/PurchaseRecord;

    move-result-object v0

    if-nez v0, :cond_1

    .line 46
    invoke-static {p0}, Lcom/amazon/ea/purchase/cache/RecentPurchaseCache;->clearPurchaseRecord(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private static getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 85
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "endactions.preference.purchase.recent.purchase.cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static setPurchaseRecord(Ljava/lang/String;Lcom/amazon/ea/purchase/model/PurchaseRecord;)V
    .locals 3

    .line 61
    invoke-static {}, Lcom/amazon/ea/purchase/cache/RecentPurchaseCache;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "order-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/amazon/ea/purchase/cache/RecentPurchaseCache;->toCacheString(Lcom/amazon/ea/purchase/model/PurchaseRecord;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static toCacheString(Lcom/amazon/ea/purchase/model/PurchaseRecord;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 122
    iget-object v1, p0, Lcom/amazon/ea/purchase/model/PurchaseRecord;->orderId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/amazon/ea/purchase/model/PurchaseRecord;->orderItemId:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "@@"

    .line 125
    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
