.class public Lcom/amazon/ea/purchase/cache/RecentCancelCache;
.super Ljava/lang/Object;
.source "RecentCancelCache.java"


# static fields
.field private static final NUM_FIELDS:I = 0x3

.field private static final PREFERENCE_RECENT_CANCEL_CACHE:Ljava/lang/String; = "endactions.preference.purchase.recent.cancel.cache"

.field private static final RECENT_CANCEL_KEY_PREFIX:Ljava/lang/String; = "cancel-"

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.purchase.cache.RecentCancelCache"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static cleanup()V
    .locals 4

    .line 78
    invoke-static {}, Lcom/amazon/ea/purchase/cache/RecentCancelCache;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 79
    invoke-static {}, Lcom/amazon/ea/purchase/cache/RecentCancelCache;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/ea/purchase/cache/RecentCancelCache;->fromCacheString(Ljava/lang/String;)Lcom/amazon/ea/purchase/model/CancelRecord;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 80
    invoke-virtual {v2}, Lcom/amazon/ea/purchase/model/CancelRecord;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    :cond_1
    invoke-static {}, Lcom/amazon/ea/purchase/cache/RecentCancelCache;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static clear()V
    .locals 1

    .line 90
    invoke-static {}, Lcom/amazon/ea/purchase/cache/RecentCancelCache;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static clearCancelRecord(Ljava/lang/String;)V
    .locals 3

    .line 71
    invoke-static {}, Lcom/amazon/ea/purchase/cache/RecentCancelCache;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static fromCacheString(Ljava/lang/String;)Lcom/amazon/ea/purchase/model/CancelRecord;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "@@"

    .line 110
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 111
    array-length v1, p0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 112
    sget-object p0, Lcom/amazon/ea/purchase/cache/RecentCancelCache;->TAG:Ljava/lang/String;

    const-string v1, "Incorrect number of fields in cache string"

    invoke-static {p0, v1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 116
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    const/4 v1, 0x1

    .line 117
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v1, 0x2

    .line 118
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 120
    new-instance p0, Lcom/amazon/ea/purchase/model/CancelRecord;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/amazon/ea/purchase/model/CancelRecord;-><init>(ZJJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 122
    :catch_0
    sget-object p0, Lcom/amazon/ea/purchase/cache/RecentCancelCache;->TAG:Ljava/lang/String;

    const-string v1, "Exception retrieving cancel record from cache string"

    invoke-static {p0, v1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getCancelRecord(Ljava/lang/String;)Lcom/amazon/ea/purchase/model/CancelRecord;
    .locals 3

    .line 38
    invoke-static {}, Lcom/amazon/ea/purchase/cache/RecentCancelCache;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    .line 43
    :cond_0
    invoke-static {v0}, Lcom/amazon/ea/purchase/cache/RecentCancelCache;->fromCacheString(Ljava/lang/String;)Lcom/amazon/ea/purchase/model/CancelRecord;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 44
    invoke-virtual {v0}, Lcom/amazon/ea/purchase/model/CancelRecord;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    .line 45
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/amazon/ea/purchase/cache/RecentCancelCache;->clearCancelRecord(Ljava/lang/String;)V

    return-object v2
.end method

.method private static getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 97
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "endactions.preference.purchase.recent.cancel.cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static setCancelRecord(Ljava/lang/String;Lcom/amazon/ea/purchase/model/CancelRecord;)V
    .locals 3

    .line 61
    invoke-static {}, Lcom/amazon/ea/purchase/cache/RecentCancelCache;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/amazon/ea/purchase/cache/RecentCancelCache;->toCacheString(Lcom/amazon/ea/purchase/model/CancelRecord;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static toCacheString(Lcom/amazon/ea/purchase/model/CancelRecord;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 135
    iget-boolean v1, p0, Lcom/amazon/ea/purchase/model/CancelRecord;->success:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/amazon/ea/purchase/model/CancelRecord;->maxAge:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/amazon/ea/purchase/model/CancelRecord;->timeCached:J

    .line 136
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-string p0, "@@"

    .line 137
    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
