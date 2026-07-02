.class public Lcom/amazon/kindle/cover/dao/CoverDAO;
.super Ljava/lang/Object;
.source "CoverDAO.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static volatile instance:Lcom/amazon/kindle/cover/dao/CoverDAO;


# instance fields
.field private coverCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/cover/ICover;",
            ">;"
        }
    .end annotation
.end field

.field private dbHelper:Lcom/amazon/kindle/cover/db/CoverDBHelper;

.field private useCache:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/amazon/kindle/cover/dao/CoverDAO;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/cover/dao/CoverDAO;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 45
    sput-object v0, Lcom/amazon/kindle/cover/dao/CoverDAO;->instance:Lcom/amazon/kindle/cover/dao/CoverDAO;

    return-void
.end method

.method private constructor <init>(Lcom/amazon/kindle/cover/db/CoverDBHelper;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/amazon/kindle/cover/dao/CoverDAO;->useCache:Z

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/cover/dao/CoverDAO;->coverCache:Ljava/util/HashMap;

    .line 90
    iput-object p1, p0, Lcom/amazon/kindle/cover/dao/CoverDAO;->dbHelper:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    .line 91
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public static cursorToCover(Landroid/database/Cursor;[Ljava/lang/String;)Lcom/amazon/kindle/cover/Cover;
    .locals 6

    .line 405
    new-instance v0, Lcom/amazon/kindle/cover/Cover;

    invoke-direct {v0}, Lcom/amazon/kindle/cover/Cover;-><init>()V

    if-nez p1, :cond_0

    .line 406
    invoke-static {}, Lcom/amazon/kindle/cover/CoverField;->getAllFieldsAsArray()[Ljava/lang/String;

    move-result-object p1

    .line 409
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_7

    aget-object v3, p1, v2

    .line 410
    sget-object v4, Lcom/amazon/kindle/cover/CoverField;->LAST_RETRY_DATE:Lcom/amazon/kindle/cover/CoverField;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 412
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 411
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/amazon/kindle/cover/Cover;->setLastRetryDate(J)V

    goto :goto_1

    .line 414
    :cond_1
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 415
    sget-object v5, Lcom/amazon/kindle/cover/CoverField;->BOOKID:Lcom/amazon/kindle/cover/CoverField;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 416
    invoke-virtual {v0, v4}, Lcom/amazon/kindle/cover/Cover;->setBookid(Ljava/lang/String;)V

    goto :goto_1

    .line 417
    :cond_2
    sget-object v5, Lcom/amazon/kindle/cover/CoverField;->COVERID:Lcom/amazon/kindle/cover/CoverField;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 418
    invoke-virtual {v0, v4}, Lcom/amazon/kindle/cover/Cover;->setCoverId(Ljava/lang/String;)V

    goto :goto_1

    .line 419
    :cond_3
    sget-object v5, Lcom/amazon/kindle/cover/CoverField;->FILE_PATH:Lcom/amazon/kindle/cover/CoverField;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 420
    invoke-virtual {v0, v4}, Lcom/amazon/kindle/cover/Cover;->setFilePath(Ljava/lang/String;)V

    goto :goto_1

    .line 421
    :cond_4
    sget-object v5, Lcom/amazon/kindle/cover/CoverField;->COVER_SIZE:Lcom/amazon/kindle/cover/CoverField;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 422
    invoke-virtual {v0, v4}, Lcom/amazon/kindle/cover/Cover;->setCoverSize(Ljava/lang/String;)V

    goto :goto_1

    .line 423
    :cond_5
    sget-object v5, Lcom/amazon/kindle/cover/CoverField;->COVER_TYPE:Lcom/amazon/kindle/cover/CoverField;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 424
    invoke-virtual {v0, v4}, Lcom/amazon/kindle/cover/Cover;->setCoverType(Ljava/lang/String;)V

    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-object v0
.end method

.method public static cursorToCover(Landroid/database/Cursor;)Lcom/amazon/kindle/cover/ICover;
    .locals 1

    const/4 v0, 0x0

    .line 401
    invoke-static {p0, v0}, Lcom/amazon/kindle/cover/dao/CoverDAO;->cursorToCover(Landroid/database/Cursor;[Ljava/lang/String;)Lcom/amazon/kindle/cover/Cover;

    move-result-object p0

    return-object p0
.end method

.method public static getCovers(Landroid/database/Cursor;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/cover/Cover;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 322
    invoke-static {p0, v0, v0}, Lcom/amazon/kindle/cover/dao/CoverDAO;->getCovers(Landroid/database/Cursor;[Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getCovers(Landroid/database/Cursor;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/cover/Cover;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 326
    invoke-static {p0, p1, v0}, Lcom/amazon/kindle/cover/dao/CoverDAO;->getCovers(Landroid/database/Cursor;[Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getCovers(Landroid/database/Cursor;[Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/cover/Cover;",
            ">;"
        }
    .end annotation

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    .line 333
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 339
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x1

    .line 340
    :goto_0
    invoke-static {p0, p1}, Lcom/amazon/kindle/cover/dao/CoverDAO;->cursorToCover(Landroid/database/Cursor;[Ljava/lang/String;)Lcom/amazon/kindle/cover/Cover;

    move-result-object v2

    .line 341
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-interface {p0}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_1

    goto :goto_1

    .line 339
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static getCreateIndexSqlStatements()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE INDEX IF NOT EXISTS I_COVERTYPE ON "

    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Covers"

    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (COVER_TYPE);"

    .line 133
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE UNIQUE INDEX IF NOT EXISTS I_PRIMARY_KEY ON "

    .line 137
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (BOOKID, COVER_SIZE);"

    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getCreateTableSqlStatement()Ljava/lang/String;
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Covers"

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (BOOKID TEXT NOT NULL, "

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "COVERID TEXT NOT NULL, "

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FILE_PATH TEXT NOT NULL, "

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "COVER_SIZE TEXT NOT NULL, "

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "COVER_TYPE TEXT NOT NULL, "

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LAST_RETRY_DATE TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP"

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/amazon/kindle/cover/db/CoverDBHelper;)Lcom/amazon/kindle/cover/dao/CoverDAO;
    .locals 2

    .line 48
    sget-object v0, Lcom/amazon/kindle/cover/dao/CoverDAO;->instance:Lcom/amazon/kindle/cover/dao/CoverDAO;

    if-nez v0, :cond_1

    .line 49
    const-class v0, Lcom/amazon/kindle/cover/dao/CoverDAO;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/cover/dao/CoverDAO;->instance:Lcom/amazon/kindle/cover/dao/CoverDAO;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lcom/amazon/kindle/cover/dao/CoverDAO;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/cover/dao/CoverDAO;-><init>(Lcom/amazon/kindle/cover/db/CoverDBHelper;)V

    sput-object v1, Lcom/amazon/kindle/cover/dao/CoverDAO;->instance:Lcom/amazon/kindle/cover/dao/CoverDAO;

    .line 53
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 56
    :cond_1
    :goto_0
    sget-object p0, Lcom/amazon/kindle/cover/dao/CoverDAO;->instance:Lcom/amazon/kindle/cover/dao/CoverDAO;

    return-object p0
.end method

.method static parseFields(Lcom/amazon/kindle/cover/ICover;Ljava/util/Collection;Landroid/content/ContentValues;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/cover/ICover;",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/cover/CoverField;",
            ">;",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation

    .line 147
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/cover/CoverField;

    .line 148
    sget-object v1, Lcom/amazon/kindle/cover/dao/CoverDAO$1;->$SwitchMap$com$amazon$kindle$cover$CoverField:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 170
    :pswitch_0
    sget-object v0, Lcom/amazon/kindle/cover/CoverField;->LAST_RETRY_DATE:Lcom/amazon/kindle/cover/CoverField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 171
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 170
    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 166
    :pswitch_1
    sget-object v0, Lcom/amazon/kindle/cover/CoverField;->COVER_TYPE:Lcom/amazon/kindle/cover/CoverField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/amazon/kindle/cover/ICover;->getCoverType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :pswitch_2
    sget-object v0, Lcom/amazon/kindle/cover/CoverField;->COVER_SIZE:Lcom/amazon/kindle/cover/CoverField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/amazon/kindle/cover/ICover;->getCoverSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :pswitch_3
    sget-object v0, Lcom/amazon/kindle/cover/CoverField;->FILE_PATH:Lcom/amazon/kindle/cover/CoverField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/amazon/kindle/cover/ICover;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :pswitch_4
    sget-object v0, Lcom/amazon/kindle/cover/CoverField;->COVERID:Lcom/amazon/kindle/cover/CoverField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/amazon/kindle/cover/ICover;->getCoverId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :pswitch_5
    sget-object v0, Lcom/amazon/kindle/cover/CoverField;->BOOKID:Lcom/amazon/kindle/cover/CoverField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/amazon/kindle/cover/ICover;->getBookid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private removeFromCache(Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 538
    invoke-static {}, Lcom/amazon/kindle/cover/ImageSizes$Type;->values()[Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 539
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 540
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 541
    iget-object v6, p0, Lcom/amazon/kindle/cover/dao/CoverDAO;->coverCache:Ljava/util/HashMap;

    monitor-enter v6

    .line 542
    :try_start_0
    iget-object v7, p0, Lcom/amazon/kindle/cover/dao/CoverDAO;->coverCache:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized deleteAllCovers()V
    .locals 3

    monitor-enter p0

    .line 549
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/cover/dao/CoverDAO;->coverCache:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 550
    :try_start_1
    iget-object v1, p0, Lcom/amazon/kindle/cover/dao/CoverDAO;->coverCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 551
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 553
    :try_start_2
    iget-object v0, p0, Lcom/amazon/kindle/cover/dao/CoverDAO;->dbHelper:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 554
    iget-object v1, p0, Lcom/amazon/kindle/cover/dao/CoverDAO;->dbHelper:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    const-string v1, "Covers"

    const/4 v2, 0x0

    .line 557
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 558
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 560
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 563
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 560
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 561
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_1
    move-exception v1

    .line 551
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteCover(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/cover/dao/CoverDAO;->coverCache:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 442
    :try_start_1
    iget-object v1, p0, Lcom/amazon/kindle/cover/dao/CoverDAO;->coverCache:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 445
    :try_start_2
    iget-object v0, p0, Lcom/amazon/kindle/cover/dao/CoverDAO;->dbHelper:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 446
    iget-object v1, p0, Lcom/amazon/kindle/cover/dao/CoverDAO;->dbHelper:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    const-string v1, "Covers"

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/amazon/kindle/cover/CoverField;->BOOKID:Lcom/amazon/kindle/cover/CoverField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = ? AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/cover/CoverField;->COVER_SIZE:Lcom/amazon/kindle/cover/CoverField;

    .line 450
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p2, v3, p1

    .line 449
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 452
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 454
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 456
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 454
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 455
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_1
    move-exception p1

    .line 443
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteCovers(Ljava/util/Collection;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 459
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/amazon/kindle/cover/dao/CoverDAO;->removeFromCache(Ljava/util/Collection;)V

    .line 461
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 463
    sget-object v2, Lcom/amazon/kindle/cover/CoverField;->BOOKID:Lcom/amazon/kindle/cover/CoverField;

    .line 464
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v4, p1

    .line 463
    invoke-static {v4, v3, v3, v2, v3}, Lcom/amazon/kindle/db/Batch;->generateBatches(Ljava/util/Collection;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 466
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/db/Batch;

    .line 467
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 468
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checking covers to delete for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/amazon/kindle/db/Batch;->getBindArgs()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " content"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 470
    :cond_0
    iget-object v7, v1, Lcom/amazon/kindle/cover/dao/CoverDAO;->dbHelper:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 472
    iget-object v8, v1, Lcom/amazon/kindle/cover/dao/CoverDAO;->dbHelper:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    invoke-virtual {v8, v7}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    const-string v9, "Covers"

    new-array v10, v5, [Ljava/lang/String;

    .line 474
    sget-object v5, Lcom/amazon/kindle/cover/CoverField;->FILE_PATH:Lcom/amazon/kindle/cover/CoverField;

    .line 475
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v6

    .line 476
    invoke-virtual {v4}, Lcom/amazon/kindle/db/Batch;->getWhereClause()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/amazon/kindle/db/Batch;->getBindArgs()[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v8, v7

    .line 474
    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 478
    :goto_1
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 479
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    .line 482
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_2

    .line 483
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 485
    :cond_2
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 488
    iget-object v5, v1, Lcom/amazon/kindle/cover/dao/CoverDAO;->dbHelper:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 489
    iget-object v6, v1, Lcom/amazon/kindle/cover/dao/CoverDAO;->dbHelper:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    invoke-virtual {v6, v5}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :try_start_4
    const-string v6, "Covers"

    .line 492
    invoke-virtual {v4}, Lcom/amazon/kindle/db/Batch;->getWhereClause()Ljava/lang/String;

    move-result-object v7

    .line 493
    invoke-virtual {v4}, Lcom/amazon/kindle/db/Batch;->getBindArgs()[Ljava/lang/String;

    move-result-object v4

    .line 492
    invoke-virtual {v5, v6, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 494
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 496
    :try_start_5
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 497
    throw v0

    :catchall_1
    move-exception v0

    move-object v3, v5

    goto :goto_2

    :catchall_2
    move-exception v0

    :goto_2
    if-eqz v3, :cond_3

    .line 482
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 483
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 485
    :cond_3
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 486
    throw v0

    .line 500
    :cond_4
    sget-object v2, Lcom/amazon/kindle/cover/CoverField;->FILE_PATH:Lcom/amazon/kindle/cover/CoverField;

    .line 501
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v3, v2, v3}, Lcom/amazon/kindle/db/Batch;->generateBatches(Ljava/util/Collection;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 502
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/db/Batch;

    .line 503
    iget-object v7, v1, Lcom/amazon/kindle/cover/dao/CoverDAO;->dbHelper:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 505
    iget-object v8, v1, Lcom/amazon/kindle/cover/dao/CoverDAO;->dbHelper:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    invoke-virtual {v8, v7}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    const/4 v9, 0x1

    :try_start_6
    const-string v10, "Covers"

    new-array v11, v5, [Ljava/lang/String;

    .line 507
    sget-object v8, Lcom/amazon/kindle/cover/CoverField;->FILE_PATH:Lcom/amazon/kindle/cover/CoverField;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v6

    .line 508
    invoke-virtual {v4}, Lcom/amazon/kindle/db/Batch;->getWhereClause()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4}, Lcom/amazon/kindle/db/Batch;->getBindArgs()[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v8, v7

    .line 507
    invoke-virtual/range {v8 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 509
    :goto_4
    :try_start_7
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 510
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 511
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 512
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cover file still in use, not deleting: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 514
    :cond_5
    invoke-interface {v0, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :cond_6
    if-eqz v4, :cond_7

    .line 518
    :try_start_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 520
    :cond_7
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v4

    goto :goto_5

    :catchall_4
    move-exception v0

    :goto_5
    if-eqz v3, :cond_8

    .line 518
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 520
    :cond_8
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 521
    throw v0

    .line 524
    :cond_9
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting cover files: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 527
    :cond_a
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 528
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_b

    .line 529
    sget-object v4, Lcom/amazon/kindle/cover/dao/CoverDAO;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cover file deletion failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 532
    :cond_c
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished deleting cover files: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 535
    :cond_d
    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flushCache()V
    .locals 7

    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/cover/dao/CoverDAO;->dbHelper:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/amazon/kindle/cover/dao/CoverDAO;->dbHelper:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 210
    iget-object v1, p0, Lcom/amazon/kindle/cover/dao/CoverDAO;->coverCache:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 212
    :try_start_1
    iget-object v2, p0, Lcom/amazon/kindle/cover/dao/CoverDAO;->coverCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/cover/ICover;

    .line 213
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 214
    sget-object v5, Lcom/amazon/kindle/cover/CoverField;->ALL_FIELDS:Ljava/util/Collection;

    invoke-static {v3, v5, v4}, Lcom/amazon/kindle/cover/dao/CoverDAO;->parseFields(Lcom/amazon/kindle/cover/ICover;Ljava/util/Collection;Landroid/content/ContentValues;)V

    const-string v3, "Covers"

    const/4 v5, 0x0

    const/4 v6, 0x5

    .line 216
    invoke-virtual {v0, v3, v5, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 223
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 224
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    .line 221
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 222
    throw v2

    :catchall_1
    move-exception v0

    .line 223
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAllCovers()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/cover/Cover;",
            ">;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/amazon/kindle/cover/dao/CoverDAO;->dbHelper:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 278
    invoke-static {}, Lcom/amazon/kindle/cover/CoverField;->getAllFieldsAsArray()[Ljava/lang/String;

    move-result-object v3

    const-string v2, "Covers"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 277
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 280
    invoke-static {v0}, Lcom/amazon/kindle/cover/dao/CoverDAO;->getCovers(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    .line 281
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method public declared-synchronized getCoverByBookId(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/cover/ICover;
    .locals 10
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    monitor-enter p0

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/cover/dao/CoverDAO;->coverCache:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 356
    :try_start_1
    iget-object v1, p0, Lcom/amazon/kindle/cover/dao/CoverDAO;->coverCache:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/cover/ICover;

    .line 357
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez v1, :cond_8

    .line 360
    :try_start_2
    iget-boolean v0, p0, Lcom/amazon/kindle/cover/dao/CoverDAO;->useCache:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/cover/dao/CoverDAO;->dbHelper:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 366
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 p1, 0x1

    aput-object p2, v5, p1

    const-string p1, "Covers"

    .line 369
    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 370
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/amazon/kindle/cover/CoverField;->BOOKID:Lcom/amazon/kindle/cover/CoverField;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " = ? AND "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/amazon/kindle/cover/CoverField;->COVER_SIZE:Lcom/amazon/kindle/cover/CoverField;

    .line 371
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " = ?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 370
    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const/4 p1, 0x0

    .line 375
    :try_start_3
    invoke-static {}, Lcom/amazon/kindle/cover/CoverField;->getAllFieldsAsArray()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p2, :cond_3

    .line 378
    :try_start_4
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 382
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 383
    :goto_0
    invoke-static {p2}, Lcom/amazon/kindle/cover/dao/CoverDAO;->cursorToCover(Landroid/database/Cursor;)Lcom/amazon/kindle/cover/ICover;

    move-result-object p1

    .line 385
    invoke-interface {p2}, Landroid/database/Cursor;->isLast()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_6

    .line 393
    :try_start_5
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_3

    .line 382
    :cond_2
    :try_start_6
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v9, p2

    move-object p2, p1

    move-object p1, v9

    goto :goto_2

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 393
    :try_start_7
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 379
    :cond_4
    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception v0

    move-object p2, p1

    .line 390
    :goto_2
    :try_start_8
    sget-object v1, Lcom/amazon/kindle/cover/dao/CoverDAO;->TAG:Ljava/lang/String;

    const-string v2, "WTF"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz p1, :cond_5

    .line 393
    :try_start_9
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :cond_5
    move-object p1, p2

    .line 397
    :cond_6
    :goto_3
    monitor-exit p0

    return-object p1

    :catchall_2
    move-exception p2

    if-eqz p1, :cond_7

    .line 393
    :try_start_a
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 395
    :cond_7
    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 361
    :cond_8
    :goto_4
    monitor-exit p0

    return-object v1

    :catchall_3
    move-exception p1

    .line 357
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getUpgradableCovers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/cover/Cover;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 250
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/cover/dao/CoverDAO;->getUpgradableCovers([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUpgradableCovers([Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/cover/Cover;",
            ">;"
        }
    .end annotation

    .line 302
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "Covers"

    .line 303
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/kindle/cover/CoverField;->COVER_TYPE:Lcom/amazon/kindle/cover/CoverField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " != ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    .line 305
    sget-object v1, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->WEBSERVICE:Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v4, v2

    .line 307
    iget-object v1, p0, Lcom/amazon/kindle/cover/dao/CoverDAO;->dbHelper:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 308
    invoke-static {}, Lcom/amazon/kindle/cover/CoverField;->getAllFieldsAsArray()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 307
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 311
    invoke-static {v0, p1}, Lcom/amazon/kindle/cover/dao/CoverDAO;->getCovers(Landroid/database/Cursor;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 312
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p1
.end method

.method public handleSyncMetadataParseEvent(Lcom/amazon/kindle/webservices/SyncMetadataParseEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 72
    sget-object v0, Lcom/amazon/kindle/cover/dao/CoverDAO$1;->$SwitchMap$com$amazon$kindle$webservices$SyncMetadataParseEvent$Type:[I

    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/SyncMetadataParseEvent;->getType()Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 80
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/cover/dao/CoverDAO;->setUseCache(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/amazon/kindle/cover/dao/CoverDAO;->flushCache()V

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/cover/dao/CoverDAO;->setUseCache(Z)V

    :goto_0
    return-void
.end method

.method public declared-synchronized insertOrUpdate(Landroid/content/ContentValues;)J
    .locals 4

    monitor-enter p0

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/cover/dao/CoverDAO;->dbHelper:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/amazon/kindle/cover/dao/CoverDAO;->dbHelper:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "Covers"

    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 232
    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    .line 234
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 239
    monitor-exit p0

    return-wide v1

    :catchall_0
    move-exception p1

    .line 236
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 237
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public insertOrUpdate(Lcom/amazon/kindle/cover/ICover;)J
    .locals 4

    .line 178
    iget-boolean v0, p0, Lcom/amazon/kindle/cover/dao/CoverDAO;->useCache:Z

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/amazon/kindle/cover/dao/CoverDAO;->coverCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/cover/dao/CoverDAO;->coverCache:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/amazon/kindle/cover/ICover;->getBookid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/cover/ICover;->getCoverSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    monitor-exit v0

    const-wide/16 v0, 0x1

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 186
    :cond_0
    sget-object v0, Lcom/amazon/kindle/cover/CoverField;->ALL_FIELDS:Ljava/util/Collection;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/cover/dao/CoverDAO;->insertOrUpdate(Lcom/amazon/kindle/cover/ICover;Ljava/util/Collection;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertOrUpdate(Lcom/amazon/kindle/cover/ICover;Ljava/util/Collection;)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/cover/ICover;",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/cover/CoverField;",
            ">;)J"
        }
    .end annotation

    .line 192
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 193
    invoke-static {p1, p2, v0}, Lcom/amazon/kindle/cover/dao/CoverDAO;->parseFields(Lcom/amazon/kindle/cover/ICover;Ljava/util/Collection;Landroid/content/ContentValues;)V

    .line 199
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/cover/dao/CoverDAO;->insertOrUpdate(Landroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 201
    sget-object p2, Lcom/amazon/kindle/cover/dao/CoverDAO;->TAG:Ljava/lang/String;

    const-string v0, "Failed to insertOrUpdate Cover"

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public setUseCache(Z)V
    .locals 0

    .line 566
    iput-boolean p1, p0, Lcom/amazon/kindle/cover/dao/CoverDAO;->useCache:Z

    return-void
.end method
