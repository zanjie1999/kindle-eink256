.class public Lcom/audible/application/stats/storage/BadgeMetadataPersistentRepository;
.super Ljava/lang/Object;
.source "BadgeMetadataPersistentRepository.java"

# interfaces
.implements Lcom/audible/application/stats/storage/IBadgeMetadataRepository;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mStatsContentProviderConfiguration:Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/audible/application/stats/storage/BadgeMetadataPersistentRepository;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/audible/application/stats/storage/BadgeMetadataPersistentRepository;->mStatsContentProviderConfiguration:Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;

    return-void
.end method

.method private createMetadataContentValues(Landroid/content/ContentValues;Ljava/util/List;Lcom/audible/mobile/stats/domain/BadgeMetadata;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/audible/mobile/stats/domain/BadgeMetadata;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_d

    .line 59
    invoke-virtual {p3}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getBadgeMetadataId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "badge_metadata_id"

    const-string v2, ""

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getBadgeMetadataId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p3}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getBadgeMetadataId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    invoke-virtual {p3}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-string v3, "description"

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    invoke-virtual {p3}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_1
    invoke-virtual {p3}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    const-string v4, "image_url"

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 66
    invoke-virtual {p3}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_2
    invoke-virtual {p3}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getBadgeImageId()Ljava/lang/String;

    move-result-object v0

    const-string v5, "imagecache_file_name"

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getBadgeImageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 69
    invoke-virtual {p3}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getBadgeImageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_3
    invoke-virtual {p3}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "name"

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 72
    invoke-virtual {p3}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_4
    invoke-virtual {p3}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getLevelMetadata()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/stats/domain/LevelMetadata;

    .line 75
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 76
    invoke-virtual {p3}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getBadgeMetadataId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {p3}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getBadgeMetadataId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 77
    invoke-virtual {p3}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getBadgeMetadataId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_5
    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/LevelMetadata;->getDescription()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/LevelMetadata;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 80
    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/LevelMetadata;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_6
    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/LevelMetadata;->getImageUrl()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/LevelMetadata;->getImageUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 83
    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/LevelMetadata;->getImageUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_7
    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/LevelMetadata;->getBadgeImageId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/LevelMetadata;->getBadgeImageId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 86
    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/LevelMetadata;->getBadgeImageId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_8
    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/LevelMetadata;->getLevelMetadataId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/LevelMetadata;->getLevelMetadataId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 89
    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/LevelMetadata;->getLevelMetadataId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "level_metadata_id"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_9
    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/LevelMetadata;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/LevelMetadata;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 92
    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/LevelMetadata;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_a
    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/LevelMetadata;->getShareMessage()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/LevelMetadata;->getShareMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 95
    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/LevelMetadata;->getShareMessage()Ljava/lang/String;

    move-result-object v8

    const-string v9, "brag_message"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_b
    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/LevelMetadata;->getShareSubject()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c

    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/LevelMetadata;->getShareSubject()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 98
    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/LevelMetadata;->getShareSubject()Ljava/lang/String;

    move-result-object v0

    const-string v8, "brag_subject"

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_c
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method private getBadgeMetadataContentUri()Landroid/net/Uri;
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/audible/application/stats/storage/BadgeMetadataPersistentRepository;->mStatsContentProviderConfiguration:Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;

    const-string v1, "BadgeMetadataTable"

    invoke-interface {v0, v1}, Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;->getContentUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getLevelMetadataContentUri()Landroid/net/Uri;
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/audible/application/stats/storage/BadgeMetadataPersistentRepository;->mStatsContentProviderConfiguration:Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;

    const-string v1, "LevelMetadataTable"

    invoke-interface {v0, v1}, Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;->getContentUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private mapCursorToBadgeMetadataEvent(Landroid/database/Cursor;)Lcom/audible/mobile/stats/domain/BadgeMetadata;
    .locals 7

    if-eqz p1, :cond_0

    const-string v0, "badge_metadata_id"

    .line 117
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "description"

    .line 118
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "image_url"

    .line 119
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "name"

    .line 120
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "imagecache_file_name"

    .line 121
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 123
    new-instance p1, Lcom/audible/mobile/stats/domain/BadgeMetadata;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/audible/mobile/stats/domain/BadgeMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private mapCursorToLevelMetadataEvent(Landroid/database/Cursor;)Lcom/audible/mobile/stats/domain/LevelMetadata;
    .locals 10

    if-eqz p1, :cond_0

    const-string v0, "badge_metadata_id"

    .line 141
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, "level_metadata_id"

    .line 142
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "description"

    .line 143
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "image_url"

    .line 144
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "name"

    .line 145
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "imagecache_file_name"

    .line 146
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v0, "brag_subject"

    .line 147
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v0, "brag_message"

    .line 148
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 150
    new-instance p1, Lcom/audible/mobile/stats/domain/LevelMetadata;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/audible/mobile/stats/domain/LevelMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private searchBadgeMetadata(Z)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/audible/mobile/stats/domain/BadgeMetadata;",
            ">;"
        }
    .end annotation

    const-string v0, "BadgeMetadataPersistentRepository - Exception getBadgeMetadata() : "

    .line 193
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 194
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    .line 203
    :try_start_0
    iget-object v4, p0, Lcom/audible/application/stats/storage/BadgeMetadataPersistentRepository;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {p0}, Lcom/audible/application/stats/storage/BadgeMetadataPersistentRepository;->getBadgeMetadataContentUri()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 204
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 205
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 208
    :cond_0
    invoke-direct {p0, v3}, Lcom/audible/application/stats/storage/BadgeMetadataPersistentRepository;->mapCursorToBadgeMetadataEvent(Landroid/database/Cursor;)Lcom/audible/mobile/stats/domain/BadgeMetadata;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    const-string v6, "listeninglevel"

    if-ne p1, v5, :cond_1

    .line 212
    :try_start_1
    invoke-virtual {v4}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getBadgeMetadataId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 213
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    :cond_1
    invoke-virtual {v4}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getBadgeMetadataId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 219
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception p1

    .line 227
    :try_start_2
    invoke-static {v0, p1}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    :cond_3
    :goto_0
    invoke-static {v3}, Lcom/audible/application/stats/util/Util;->closeCursor(Landroid/database/Cursor;)V

    .line 237
    :try_start_3
    iget-object p1, p0, Lcom/audible/application/stats/storage/BadgeMetadataPersistentRepository;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {p0}, Lcom/audible/application/stats/storage/BadgeMetadataPersistentRepository;->getLevelMetadataContentUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 238
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_7

    .line 239
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 242
    :cond_4
    invoke-direct {p0, v3}, Lcom/audible/application/stats/storage/BadgeMetadataPersistentRepository;->mapCursorToLevelMetadataEvent(Landroid/database/Cursor;)Lcom/audible/mobile/stats/domain/LevelMetadata;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 244
    invoke-virtual {p1}, Lcom/audible/mobile/stats/domain/LevelMetadata;->getBadgeMetadataId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 245
    invoke-virtual {p1}, Lcom/audible/mobile/stats/domain/LevelMetadata;->getBadgeMetadataId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 247
    :cond_5
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 248
    invoke-virtual {v4, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-virtual {p1}, Lcom/audible/mobile/stats/domain/LevelMetadata;->getBadgeMetadataId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_6
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p1, :cond_4

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 257
    :try_start_4
    invoke-static {v0, p1}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 259
    :cond_7
    :goto_2
    invoke-static {v3}, Lcom/audible/application/stats/util/Util;->closeCursor(Landroid/database/Cursor;)V

    .line 266
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/stats/domain/BadgeMetadata;

    .line 267
    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getBadgeMetadataId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 268
    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getBadgeMetadataId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->setLevelMetadata(Ljava/util/List;)V

    goto :goto_3

    :cond_9
    return-object v1

    .line 259
    :goto_4
    invoke-static {v3}, Lcom/audible/application/stats/util/Util;->closeCursor(Landroid/database/Cursor;)V

    throw p1

    .line 229
    :goto_5
    invoke-static {v3}, Lcom/audible/application/stats/util/Util;->closeCursor(Landroid/database/Cursor;)V

    throw p1
.end method


# virtual methods
.method public clearAll()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 161
    :try_start_0
    iget-object v2, p0, Lcom/audible/application/stats/storage/BadgeMetadataPersistentRepository;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {p0}, Lcom/audible/application/stats/storage/BadgeMetadataPersistentRepository;->getBadgeMetadataContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v2, v0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "BadgeMetadataPersistentRepository - Exception [BadgeMetdata] clearAll() : "

    .line 163
    invoke-static {v3, v2}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    .line 166
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/audible/application/stats/storage/BadgeMetadataPersistentRepository;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {p0}, Lcom/audible/application/stats/storage/BadgeMetadataPersistentRepository;->getLevelMetadataContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/2addr v2, v1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v3, "BadgeMetadataPersistentRepository - Exception [LevelMetdata] clearAll() : "

    .line 168
    invoke-static {v3, v1}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "BadgeMetadataPersistentRepository - [clearAll] deleted rows {}"

    aput-object v3, v1, v0

    const/4 v0, 0x1

    .line 170
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/audible/application/stats/util/LogController;->d([Ljava/lang/Object;)V

    return-void
.end method

.method public getBadgeMetadata()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/audible/mobile/stats/domain/BadgeMetadata;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 278
    invoke-direct {p0, v0}, Lcom/audible/application/stats/storage/BadgeMetadataPersistentRepository;->searchBadgeMetadata(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getListeningLevelMetadata()Lcom/audible/mobile/stats/domain/BadgeMetadata;
    .locals 3

    const/4 v0, 0x1

    .line 285
    invoke-direct {p0, v0}, Lcom/audible/application/stats/storage/BadgeMetadataPersistentRepository;->searchBadgeMetadata(Z)Ljava/util/List;

    move-result-object v1

    .line 286
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_0

    const/4 v0, 0x0

    .line 287
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/stats/domain/BadgeMetadata;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public insertBadgeMetadata(Lcom/audible/mobile/stats/domain/BadgeMetadata;)V
    .locals 3

    .line 178
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 179
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 180
    invoke-direct {p0, v0, v1, p1}, Lcom/audible/application/stats/storage/BadgeMetadataPersistentRepository;->createMetadataContentValues(Landroid/content/ContentValues;Ljava/util/List;Lcom/audible/mobile/stats/domain/BadgeMetadata;)V

    .line 182
    iget-object p1, p0, Lcom/audible/application/stats/storage/BadgeMetadataPersistentRepository;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0}, Lcom/audible/application/stats/storage/BadgeMetadataPersistentRepository;->getBadgeMetadataContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 183
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 184
    iget-object v1, p0, Lcom/audible/application/stats/storage/BadgeMetadataPersistentRepository;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0}, Lcom/audible/application/stats/storage/BadgeMetadataPersistentRepository;->getLevelMetadataContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "BadgeMetadataPersistentRepository - Exception insertBadgeMetadata() : "

    .line 187
    invoke-static {v0, p1}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
