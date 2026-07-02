.class public Lcom/amazon/ea/purchase/cache/RecentFailCache;
.super Ljava/lang/Object;
.source "RecentFailCache.java"


# static fields
.field private static final NUM_FIELDS:I = 0x5

.field private static final PREFERENCE_RECENT_FAIL_CACHE:Ljava/lang/String; = "endactions.preference.purchase.recent.fail.cache"

.field private static final RECENT_FAIL_KEY_PREFIX:Ljava/lang/String; = "fail-"

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.purchase.cache.RecentFailCache"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static cleanup()V
    .locals 4

    .line 79
    invoke-static {}, Lcom/amazon/ea/purchase/cache/RecentFailCache;->getSharedPreferences()Landroid/content/SharedPreferences;

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

    .line 80
    invoke-static {}, Lcom/amazon/ea/purchase/cache/RecentFailCache;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/ea/purchase/model/FailRecord;->fromSerializableString(Ljava/lang/String;)Lcom/amazon/ea/purchase/model/FailRecord;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 81
    invoke-virtual {v2}, Lcom/amazon/ea/purchase/model/FailRecord;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    :cond_1
    invoke-static {}, Lcom/amazon/ea/purchase/cache/RecentFailCache;->getSharedPreferences()Landroid/content/SharedPreferences;

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

    .line 91
    invoke-static {}, Lcom/amazon/ea/purchase/cache/RecentFailCache;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static clearFailRecord(Ljava/lang/String;)V
    .locals 3

    .line 72
    invoke-static {}, Lcom/amazon/ea/purchase/cache/RecentFailCache;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static getFailRecord(Ljava/lang/String;)Lcom/amazon/ea/purchase/model/FailRecord;
    .locals 3

    .line 42
    invoke-static {}, Lcom/amazon/ea/purchase/cache/RecentFailCache;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/amazon/ea/purchase/model/FailRecord;->fromSerializableString(Ljava/lang/String;)Lcom/amazon/ea/purchase/model/FailRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {v0}, Lcom/amazon/ea/purchase/model/FailRecord;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 46
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/amazon/ea/purchase/cache/RecentFailCache;->clearFailRecord(Ljava/lang/String;)V

    return-object v2
.end method

.method private static getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 98
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "endactions.preference.purchase.recent.fail.cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static setFailRecord(Ljava/lang/String;Lcom/amazon/ea/purchase/model/FailRecord;)V
    .locals 3

    .line 62
    invoke-static {}, Lcom/amazon/ea/purchase/cache/RecentFailCache;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/FailRecord;->toSerializableString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
