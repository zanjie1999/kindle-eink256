.class public Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;
.super Ljava/lang/Object;
.source "CustomerStatsPersistentRepository.java"

# interfaces
.implements Lcom/audible/application/stats/storage/ICustomerStatsRepository;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mStatsContentProviderConfiguration:Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->mStatsContentProviderConfiguration:Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;

    return-void
.end method

.method private createCustomerBadgeProgressContentValues(Landroid/content/ContentValues;Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;)V
    .locals 3

    if-eqz p2, :cond_3

    .line 248
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->getBadgeMetadataId()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->getBadgeMetadataId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->getBadgeMetadataId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "badge_metadata_id"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_0
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->getNextBadgeLevelMetadataId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->getNextBadgeLevelMetadataId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->getNextBadgeLevelMetadataId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "next_badge_level_metadata_id"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 261
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "percent_progress_to_next_level"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 263
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->getLevelMetadataId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->getLevelMetadataId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 264
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->getLevelMetadataId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "level_metadata_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_2
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->getLevelAcquiredTime()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 268
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->getLevelAcquiredTime()Ljava/util/Date;

    move-result-object p2

    invoke-static {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->convertDateToServiceFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "level_acquired_time"

    .line 267
    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private createCustomerListeningStatContentValues(Landroid/content/ContentValues;Lcom/audible/mobile/stats/domain/CustomerListeningStat;Ljava/lang/String;)V
    .locals 6

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    const-string v0, ""

    .line 52
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 54
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/CustomerListeningStat;->getAggregatedSum()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 55
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/CustomerListeningStat;->getAggregatedSum()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "aggregated_sum"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 57
    :cond_0
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/CustomerListeningStat;->getIntervalIdentifier()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 58
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/CustomerListeningStat;->getIntervalIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "interval_identifier"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_1
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/CustomerListeningStat;->getUnit()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/CustomerListeningStat;->getUnit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/CustomerListeningStat;->getUnit()Ljava/lang/String;

    move-result-object p2

    const-string v0, "unit"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string p2, "aggregated_type"

    .line 65
    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private deleteCustomerBadgeProgress(Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;)Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;
    .locals 11

    const-string v6, "badge_metadata_id=?"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/String;

    .line 302
    invoke-virtual {p1}, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->getBadgeMetadataId()Ljava/lang/String;

    move-result-object p1

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 p1, 0x0

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->getBadgeTableContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v3, v6

    move-object v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 307
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 308
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 309
    invoke-direct {p0, v0}, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->mapCursorToCustomerBadgeProgress(Landroid/database/Cursor;)Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v10, v0

    move-object v0, p1

    move-object p1, v10

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v0, p1

    :goto_0
    :try_start_2
    const-string v2, "CustomerStatsPersistentRepository - Exception deleteCustomerBadgeProgress() : "

    .line 312
    invoke-static {v2, v1}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 314
    :cond_0
    :goto_1
    invoke-static {v0}, Lcom/audible/application/stats/util/Util;->closeCursor(Landroid/database/Cursor;)V

    .line 319
    :try_start_3
    iget-object v0, p0, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->getBadgeTableContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    add-int/2addr v0, v9

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "CustomerStatsPersistentRepository - Exception [deleteCustomerBadgeProgress] deleteCustomerBadgeProgress() : "

    .line 321
    invoke-static {v1, v0}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CustomerStatsPersistentRepository - [deleteCustomerBadgeProgress] deleted rows {}"

    aput-object v2, v1, v9

    .line 323
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v7

    invoke-static {v1}, Lcom/audible/application/stats/util/LogController;->d([Ljava/lang/Object;)V

    return-object p1

    :catchall_1
    move-exception p1

    .line 314
    :goto_3
    invoke-static {v0}, Lcom/audible/application/stats/util/Util;->closeCursor(Landroid/database/Cursor;)V

    throw p1
.end method

.method private deleteCustomerListeningStat(Ljava/lang/String;Lcom/audible/mobile/stats/domain/CustomerListeningStat;)V
    .locals 4

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "aggregated_total_listening_stats"

    .line 92
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "aggregated_type=?"

    if-nez p1, :cond_0

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND interval_identifier=?"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/CustomerListeningStat;->getIntervalIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x0

    .line 99
    :try_start_0
    iget-object p2, p0, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-direct {p0}, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->getAggregatedTableContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p2, v2, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p2, p1

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "CustomerStatsPersistentRepository - Exception [deleteCustomerListeningStat] deleteCustomerListeningStat() : "

    .line 101
    invoke-static {v0, p2}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CustomerStatsPersistentRepository - [deleteCustomerListeningStat] deleted rows {}"

    aput-object v1, v0, p1

    const/4 p1, 0x1

    .line 103
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->d([Ljava/lang/Object;)V

    return-void
.end method

.method private getAggregatedTableContentUri()Landroid/net/Uri;
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->mStatsContentProviderConfiguration:Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;

    const-string v1, "AggregatedTable"

    invoke-interface {v0, v1}, Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;->getContentUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getBadgeTableContentUri()Landroid/net/Uri;
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->mStatsContentProviderConfiguration:Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;

    const-string v1, "BadgeTable"

    invoke-interface {v0, v1}, Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;->getContentUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private mapCursorToCustomerBadgeProgress(Landroid/database/Cursor;)Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;
    .locals 7

    if-eqz p1, :cond_0

    const-string v0, "badge_metadata_id"

    .line 349
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "next_badge_level_metadata_id"

    .line 350
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "percent_progress_to_next_level"

    .line 352
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 351
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v0, "level_acquired_time"

    .line 353
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/application/stats/util/Util;->parseFromISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    const-string v0, "level_metadata_id"

    .line 354
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 356
    new-instance p1, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Date;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private mapCursorToCustomerListeningStat(Landroid/database/Cursor;)Lcom/audible/mobile/stats/domain/CustomerListeningStat;
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "interval_identifier"

    .line 78
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "unit"

    .line 79
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "aggregated_sum"

    .line 80
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 81
    new-instance p1, Lcom/audible/mobile/stats/domain/CustomerListeningStat;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p1, v2, v0, v1}, Lcom/audible/mobile/stats/domain/CustomerListeningStat;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public clearAll()V
    .locals 5

    const/4 v0, 0x0

    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0}, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->getAggregatedTableContentUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/2addr v1, v0

    .line 234
    :try_start_1
    iget-object v2, p0, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {p0}, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->getBadgeTableContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr v1, v2

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    const/4 v1, 0x0

    :goto_0
    const-string v3, "CustomerStatsPersistentRepository - Exception [AggregatedTable & BadgeTable] clearAll() : "

    .line 236
    invoke-static {v3, v2}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "CustomerStatsPersistentRepository - [clearAll] deleted rows {}"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    .line 238
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/audible/application/stats/util/LogController;->d([Ljava/lang/Object;)V

    return-void
.end method

.method public getCustomerBadgeProgress()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;",
            ">;"
        }
    .end annotation

    .line 367
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    .line 374
    :try_start_0
    iget-object v2, p0, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {p0}, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->getBadgeTableContentUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 375
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 376
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 379
    :cond_0
    invoke-direct {p0, v1}, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->mapCursorToCustomerBadgeProgress(Landroid/database/Cursor;)Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 381
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "CustomerStatsPersistentRepository - Exception getCustomerBadgeProgress() : "

    .line 387
    invoke-static {v3, v2}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    :cond_2
    :goto_0
    invoke-static {v1}, Lcom/audible/application/stats/util/Util;->closeCursor(Landroid/database/Cursor;)V

    return-object v0

    :goto_1
    invoke-static {v1}, Lcom/audible/application/stats/util/Util;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getTotalListeningStat()Lcom/audible/mobile/stats/domain/CustomerListeningStat;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v4, "aggregated_type = ? "

    const-string v1, "aggregated_total_listening_stats"

    .line 169
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    .line 170
    iget-object v1, p0, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0}, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->getAggregatedTableContentUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 171
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 172
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    invoke-direct {p0, v1}, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->mapCursorToCustomerListeningStat(Landroid/database/Cursor;)Lcom/audible/mobile/stats/domain/CustomerListeningStat;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v1, v0

    :goto_0
    :try_start_2
    const-string v3, "CustomerStatsPersistentRepository - Exception getTotalListeningStat() : "

    .line 177
    invoke-static {v3, v2}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 179
    :cond_0
    :goto_1
    invoke-static {v1}, Lcom/audible/application/stats/util/Util;->closeCursor(Landroid/database/Cursor;)V

    return-object v0

    :catchall_1
    move-exception v0

    :goto_2
    invoke-static {v1}, Lcom/audible/application/stats/util/Util;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method public insertOrUpdateCustomerBadgeProgress(Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;)Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 280
    :cond_0
    invoke-direct {p0, p1}, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->deleteCustomerBadgeProgress(Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;)Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;

    move-result-object v1

    .line 283
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 284
    invoke-direct {p0, v2, p1}, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->createCustomerBadgeProgressContentValues(Landroid/content/ContentValues;Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;)V

    .line 286
    iget-object v3, p0, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {p0}, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->getBadgeTableContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "CustomerStatsPersistentRepository - Exception insertOrUpdateCustomerBadgeProgress() : "

    .line 288
    invoke-static {v3, v2}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v1, :cond_1

    .line 290
    invoke-virtual {v1, p1}, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method

.method public insertOrUpdateDailyListeningStat(Lcom/audible/mobile/stats/domain/CustomerListeningStat;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "aggregated_daily_listening_stats"

    .line 130
    invoke-direct {p0, v0, p1}, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->deleteCustomerListeningStat(Ljava/lang/String;Lcom/audible/mobile/stats/domain/CustomerListeningStat;)V

    .line 133
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 134
    invoke-direct {p0, v1, p1, v0}, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->createCustomerListeningStatContentValues(Landroid/content/ContentValues;Lcom/audible/mobile/stats/domain/CustomerListeningStat;Ljava/lang/String;)V

    .line 137
    iget-object p1, p0, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0}, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->getAggregatedTableContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "CustomerStatsPersistentRepository - Exception insertOrUpdateDailyListeningStat() : "

    .line 139
    invoke-static {v0, p1}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public insertOrUpdateMonthlyListeningStat(Lcom/audible/mobile/stats/domain/CustomerListeningStat;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "aggregated_monthly_listening_stats"

    .line 149
    invoke-direct {p0, v0, p1}, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->deleteCustomerListeningStat(Ljava/lang/String;Lcom/audible/mobile/stats/domain/CustomerListeningStat;)V

    .line 152
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 153
    invoke-direct {p0, v1, p1, v0}, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->createCustomerListeningStatContentValues(Landroid/content/ContentValues;Lcom/audible/mobile/stats/domain/CustomerListeningStat;Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0}, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->getAggregatedTableContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "CustomerStatsPersistentRepository - Exception insertOrUpdateMonthlyListeningStat() : "

    .line 158
    invoke-static {v0, p1}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public insertOrUpdateTotalListeningStat(Lcom/audible/mobile/stats/domain/CustomerListeningStat;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "aggregated_total_listening_stats"

    .line 112
    invoke-direct {p0, v0, p1}, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->deleteCustomerListeningStat(Ljava/lang/String;Lcom/audible/mobile/stats/domain/CustomerListeningStat;)V

    .line 115
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 116
    invoke-direct {p0, v1, p1, v0}, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->createCustomerListeningStatContentValues(Landroid/content/ContentValues;Lcom/audible/mobile/stats/domain/CustomerListeningStat;Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0}, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;->getAggregatedTableContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "CustomerStatsPersistentRepository - Exception insertOrUpdateTotalListeningStat() : "

    .line 120
    invoke-static {v0, p1}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
