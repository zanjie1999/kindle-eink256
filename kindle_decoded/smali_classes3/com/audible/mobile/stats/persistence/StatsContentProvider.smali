.class public Lcom/audible/mobile/stats/persistence/StatsContentProvider;
.super Landroid/content/ContentProvider;
.source "StatsContentProvider.java"


# static fields
.field private static final AGGREGATED:I = 0x5

.field private static final BADGE:I = 0x6

.field private static final BADGE_METADATA:I = 0x3

.field private static final LEVEL_METADATA:I = 0x4

.field private static final STATS:I = 0x1

.field private static final STATS_ID:I = 0x2


# instance fields
.field private mDatabaseHelper:Lcom/audible/mobile/stats/persistence/StatsDatabase$DatabaseHelper;

.field private mStatsContentProviderConfiguration:Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;

.field private mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private buildUriMatcher()Landroid/content/UriMatcher;
    .locals 5

    .line 209
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 211
    invoke-virtual {p0}, Lcom/audible/mobile/stats/persistence/StatsContentProvider;->getStatsDatabaseConfiguration()Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;

    move-result-object v1

    .line 214
    invoke-interface {v1}, Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;->getContentAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StatsTable"

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 215
    invoke-interface {v1}, Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;->getContentAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BadgeMetadataTable"

    const/4 v4, 0x3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 216
    invoke-interface {v1}, Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;->getContentAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LevelMetadataTable"

    const/4 v4, 0x4

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 217
    invoke-interface {v1}, Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;->getContentAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AggregatedTable"

    const/4 v4, 0x5

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 218
    invoke-interface {v1}, Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;->getContentAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BadgeTable"

    const/4 v4, 0x6

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 219
    invoke-interface {v1}, Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;->getContentAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StatsTable/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/audible/mobile/stats/persistence/StatsContentProvider;->mDatabaseHelper:Lcom/audible/mobile/stats/persistence/StatsDatabase$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/audible/mobile/stats/persistence/StatsContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    const-string v1, "BadgeTable"

    .line 176
    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 179
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown URI "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const-string v1, "AggregatedTable"

    .line 173
    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_2
    const-string v1, "LevelMetadataTable"

    .line 170
    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_3
    const-string v1, "BadgeMetadataTable"

    .line 167
    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_4
    const-string v1, "StatsTable"

    .line 164
    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    .line 182
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return p2
.end method

.method public declared-synchronized getStatsDatabaseConfiguration()Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;
    .locals 1

    monitor-enter p0

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/stats/persistence/StatsContentProvider;->mStatsContentProviderConfiguration:Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Lcom/audible/mobile/stats/persistence/DefaultStatsContentProviderConfiguration;

    invoke-direct {v0}, Lcom/audible/mobile/stats/persistence/DefaultStatsContentProviderConfiguration;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/stats/persistence/StatsContentProvider;->mStatsContentProviderConfiguration:Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/stats/persistence/StatsContentProvider;->mStatsContentProviderConfiguration:Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/audible/mobile/stats/persistence/StatsContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string p1, "vnd.android.cursor.item/vnd.audible.application.stats.stats"

    return-object p1

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "vnd.android.cursor.dir/vnd.audible.application.stats.stats"

    return-object p1
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8

    .line 120
    invoke-virtual {p0}, Lcom/audible/mobile/stats/persistence/StatsContentProvider;->getStatsDatabaseConfiguration()Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/audible/mobile/stats/persistence/StatsContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "BadgeTable"

    const-string v4, "AggregatedTable"

    const-string v5, "LevelMetadataTable"

    const-string v6, "BadgeMetadataTable"

    const-string v7, "StatsTable"

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 141
    invoke-interface {v0, v3}, Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;->getContentUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown URI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 137
    :cond_1
    invoke-interface {v0, v4}, Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;->getContentUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v3, v4

    goto :goto_0

    .line 133
    :cond_2
    invoke-interface {v0, v5}, Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;->getContentUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v3, v5

    goto :goto_0

    .line 129
    :cond_3
    invoke-interface {v0, v6}, Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;->getContentUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v3, v6

    goto :goto_0

    .line 125
    :cond_4
    invoke-interface {v0, v7}, Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;->getContentUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v3, v7

    .line 147
    :goto_0
    iget-object v1, p0, Lcom/audible/mobile/stats/persistence/StatsContentProvider;->mDatabaseHelper:Lcom/audible/mobile/stats/persistence/StatsDatabase$DatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, ""

    .line 148
    invoke-virtual {v1, v3, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_5

    .line 150
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 151
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-object p1

    .line 154
    :cond_5
    new-instance p2, Landroid/database/SQLException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to insert row into "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final onCreate()Z
    .locals 2

    .line 38
    new-instance v0, Lcom/audible/mobile/stats/persistence/StatsDatabase$DatabaseHelper;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/audible/mobile/stats/persistence/StatsDatabase$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/audible/mobile/stats/persistence/StatsContentProvider;->mDatabaseHelper:Lcom/audible/mobile/stats/persistence/StatsDatabase$DatabaseHelper;

    .line 39
    invoke-direct {p0}, Lcom/audible/mobile/stats/persistence/StatsContentProvider;->buildUriMatcher()Landroid/content/UriMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/stats/persistence/StatsContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const/4 v0, 0x1

    return v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 46
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 48
    iget-object v1, p0, Lcom/audible/mobile/stats/persistence/StatsContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const-string v2, "Unknown URI "

    const-string v3, "StatsTable"

    packed-switch v1, :pswitch_data_0

    .line 69
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    const-string v1, "BadgeTable"

    .line 62
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v1, "AggregatedTable"

    .line 59
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v1, "LevelMetadataTable"

    .line 56
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v1, "BadgeMetadataTable"

    .line 53
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :pswitch_4
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uuid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 50
    :pswitch_5
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 74
    :goto_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object p5, p0, Lcom/audible/mobile/stats/persistence/StatsContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p5

    packed-switch p5, :pswitch_data_1

    .line 87
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_6
    const/4 p5, 0x0

    goto :goto_1

    :pswitch_7
    const-string p5, "event_timestamp DESC"

    :cond_0
    :goto_1
    move-object v7, p5

    .line 94
    iget-object p5, p0, Lcom/audible/mobile/stats/persistence/StatsContentProvider;->mDatabaseHelper:Lcom/audible/mobile/stats/persistence/StatsDatabase$DatabaseHelper;

    invoke-virtual {p5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 95
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 97
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/audible/mobile/stats/persistence/StatsContentProvider;->mDatabaseHelper:Lcom/audible/mobile/stats/persistence/StatsDatabase$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/audible/mobile/stats/persistence/StatsContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "StatsTable"

    .line 194
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    .line 200
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return p2

    .line 197
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown URI "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
