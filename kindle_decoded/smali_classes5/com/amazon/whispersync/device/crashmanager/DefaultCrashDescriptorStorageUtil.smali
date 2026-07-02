.class public Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;
.super Ljava/lang/Object;
.source "DefaultCrashDescriptorStorageUtil.java"

# interfaces
.implements Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$DescriptorCount;,
        Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$LRUCache;
    }
.end annotation


# static fields
.field private static final KEY:Ljava/lang/String; = "crashDescriptors"

.field private static final LAST_CACHE_CLEANUP_KEY:Ljava/lang/String; = "lastCacheCleaned"

.field private static final MAX_DEDUPE_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "CrashDescriptorStorageUtil"

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private final mCache:Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$LRUCache<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$DescriptorCount;",
            ">;"
        }
    .end annotation
.end field

.field private final mCacheExpirationTimeMs:J

.field private final mCheckExpirationTimeMs:J

.field private mLastCacheCleanupMs:J

.field private final mMaxCapacity:I

.field private final mMaxDedupeTimeMs:J

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "CrashDescriptorStorageUtil"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;IJ)V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-lt p2, v0, :cond_1

    const-wide/16 v0, 0x1

    cmp-long v2, p3, v0

    if-ltz v2, :cond_0

    .line 55
    iput-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 56
    iput p2, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mMaxCapacity:I

    .line 57
    iput-wide p3, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mCacheExpirationTimeMs:J

    .line 58
    new-instance p1, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$LRUCache;

    iget p2, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mMaxCapacity:I

    invoke-direct {p1, p0, p2}, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$LRUCache;-><init>(Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;I)V

    iput-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mCache:Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$LRUCache;

    .line 61
    iget-wide p1, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mCacheExpirationTimeMs:J

    const-wide/16 p3, 0xa

    div-long/2addr p1, p3

    iput-wide p1, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mMaxDedupeTimeMs:J

    const-wide/16 p3, 0x2

    .line 63
    div-long/2addr p1, p3

    iput-wide p1, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mCheckExpirationTimeMs:J

    .line 65
    invoke-direct {p0}, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->loadFromSharedPreferences()V

    return-void

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cacheExpirationTime cannot be less than 1 millisecond in CrashDescriptorStorageUtil"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxCapacity cannot be 0 or less in CrashDescriptorStorageUtil"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context cannot be null in CrashDescriptorStorageUtil"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkCacheCleared()V
    .locals 4

    .line 299
    invoke-virtual {p0}, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->shouldPrune()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "checkCacheCleared"

    const-string v3, "Cache check needed, cleaning..."

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    invoke-virtual {p0}, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->pruneAll()V

    :cond_0
    return-void
.end method

.method private deserializeDescriptorCount(Ljava/lang/String;)Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$DescriptorCount;
    .locals 6

    if-nez p1, :cond_0

    .line 326
    new-instance p1, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$DescriptorCount;

    invoke-direct {p1, p0}, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$DescriptorCount;-><init>(Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;)V

    return-object p1

    :cond_0
    const-string/jumbo v0, "|"

    .line 328
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 332
    :try_start_0
    array-length v3, p1

    if-lt v3, v2, :cond_1

    const/4 v3, 0x0

    .line 333
    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const/4 v3, 0x1

    .line 338
    :goto_0
    :try_start_1
    array-length v4, p1

    const/4 v5, 0x2

    if-lt v4, v5, :cond_2

    .line 339
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 343
    :catch_1
    :cond_2
    new-instance p1, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$DescriptorCount;

    invoke-direct {p1, p0, v3, v0, v1}, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$DescriptorCount;-><init>(Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;IJ)V

    return-object p1
.end method

.method private loadFromSharedPreferences()V
    .locals 11

    .line 262
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "lastCacheCleaned"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const/4 v2, 0x1

    const-string v3, "loadFromSharedPreferences"

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-gtz v7, :cond_0

    .line 264
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 265
    sget-object v5, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v4

    const-string v7, "lastCacheCleared is not stored in Stored Preferences...storing"

    invoke-virtual {v5, v3, v7, v6}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    :cond_0
    iput-wide v0, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mLastCacheCleanupMs:J

    const/4 v0, 0x0

    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "crashDescriptors"

    invoke-interface {v1, v5, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 275
    sget-object v5, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v1, v6, v4

    const-string v1, "Error when loading crash descriptors."

    invoke-virtual {v5, v3, v1, v6}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    .line 278
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_3

    :cond_1
    const-string v5, " "

    .line 282
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 283
    sget-object v5, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v6, v2, [Ljava/lang/Object;

    array-length v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const-string v7, "Number of keys retrieved from shared preferences ="

    invoke-virtual {v5, v3, v7, v6}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    array-length v5, v1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v1, v6

    .line 287
    :try_start_1
    iget-object v8, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mCache:Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$LRUCache;

    iget-object v9, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v9, v7, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->deserializeDescriptorCount(Ljava/lang/String;)Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$DescriptorCount;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v8, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v9, "Load Key ="

    new-array v10, v2, [Ljava/lang/Object;

    aput-object v7, v10, v4

    invoke-virtual {v8, v3, v9, v10}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v7

    .line 290
    sget-object v8, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v7, v9, v4

    const-string v7, "Error when loading crash descriptors counts."

    invoke-virtual {v8, v3, v7, v9}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    return-void

    .line 279
    :cond_3
    :goto_3
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "No keys retrieved from shared preferences."

    invoke-virtual {v0, v3, v2, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mCache:Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$LRUCache;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mLastCacheCleanupMs:J

    .line 225
    invoke-virtual {p0}, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->persistCrashDescriptors()V

    return-void
.end method

.method public clearPersistentStorage()V
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 162
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 163
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 164
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "clearPersistentStorage"

    const-string v3, "Cleared Shared Preferences"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->checkCacheCleared()V

    if-eqz p1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mCache:Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$LRUCache;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mCache:Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$LRUCache;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCount(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 114
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mCache:Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$LRUCache;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$DescriptorCount;

    if-eqz p1, :cond_1

    .line 117
    invoke-virtual {p1}, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$DescriptorCount;->getCount()I

    move-result v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mCache:Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$LRUCache;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public persistCrashDescriptors()V
    .locals 9

    .line 232
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 234
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 237
    iget-wide v1, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mLastCacheCleanupMs:J

    const-string v3, "lastCacheCleaned"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    iget-object v2, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mCache:Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$LRUCache;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string/jumbo v6, "saveToSharedPreferences"

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 244
    sget-object v7, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v5, v4

    const-string v4, "Save Key ="

    invoke-virtual {v7, v6, v4, v5}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 248
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$DescriptorCount;

    invoke-virtual {v3}, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$DescriptorCount;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 252
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "crashDescriptors"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 253
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 254
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v1, v5, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mLastCacheCleanupMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "Added last cleared cache to shared preferences = "

    invoke-virtual {v0, v6, v2, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mCache:Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$LRUCache;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "Number of keys stored in shared preferences = "

    invoke-virtual {v0, v6, v2, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public prune(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mCache:Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$LRUCache;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$DescriptorCount;

    if-eqz p1, :cond_1

    .line 129
    invoke-virtual {p1}, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$DescriptorCount;->getCount()I

    move-result v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public pruneAll()V
    .locals 0

    .line 213
    invoke-virtual {p0}, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->pruneCache()V

    .line 214
    invoke-virtual {p0}, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->persistCrashDescriptors()V

    return-void
.end method

.method public pruneCache()V
    .locals 14

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 173
    iget-object v2, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mCache:Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$LRUCache;

    const-string v3, "clearCache"

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    .line 175
    iget-wide v5, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mCacheExpirationTimeMs:J

    sub-long v5, v0, v5

    .line 178
    sget-object v2, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    invoke-virtual {v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 181
    :goto_0
    iget-object v7, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mCache:Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$LRUCache;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    .line 185
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, " "

    if-eqz v9, :cond_3

    .line 186
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 188
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$DescriptorCount;

    invoke-virtual {v11}, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$DescriptorCount;->getCreated()J

    move-result-wide v11

    cmp-long v13, v11, v5

    if-gez v13, :cond_1

    if-eqz v2, :cond_2

    .line 189
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 196
    :cond_3
    sget-object v5, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    invoke-virtual {v5}, Lcom/amazon/whispersync/dp/logger/DPLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 197
    sget-object v5, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pruned the following items: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v3, v2, v6}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    iget-object v5, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mCache:Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$LRUCache;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 200
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 202
    :cond_4
    sget-object v5, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New key set: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v3, v2, v6}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    .line 205
    :cond_6
    :goto_3
    iput-wide v0, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mLastCacheCleanupMs:J

    .line 206
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "Pruned expired items from the LRU cache = "

    invoke-virtual {v0, v3, v2, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public push(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mCache:Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$LRUCache;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$DescriptorCount;

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {v0}, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$DescriptorCount;->increment()V

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mCache:Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$LRUCache;

    new-instance v1, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$DescriptorCount;

    invoke-direct {v1, p0}, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$DescriptorCount;-><init>(Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :goto_0
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo p1, "push"

    const-string v2, "Pushed Crash Descriptor on to the cache "

    invoke-virtual {v0, p1, v2, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public shouldDedupe(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 7

    const/4 v0, 0x0

    .line 140
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-nez p1, :cond_0

    return-object v0

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mCache:Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$LRUCache;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$DescriptorCount;

    if-nez p1, :cond_1

    return-object v0

    .line 146
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$DescriptorCount;->getCount()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$DescriptorCount;->getCreated()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mMaxDedupeTimeMs:J

    sub-long/2addr v3, v5

    cmp-long p1, v1, v3

    if-lez p1, :cond_2

    const/4 p1, 0x1

    .line 149
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method public shouldPrune()Z
    .locals 7

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 307
    iget-wide v2, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mLastCacheCleanupMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 311
    iput-wide v0, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mLastCacheCleanupMs:J

    goto :goto_0

    .line 312
    :cond_0
    iget-wide v0, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;->mCheckExpirationTimeMs:J

    cmp-long v4, v2, v0

    if-ltz v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
