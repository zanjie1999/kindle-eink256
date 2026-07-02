.class public Lcom/amazon/kcp/application/AndroidLocalStorage;
.super Ljava/lang/Object;
.source "AndroidLocalStorage.java"

# interfaces
.implements Lcom/amazon/kcp/application/ILocalStorage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/AndroidLocalStorage$DeleteArguments;,
        Lcom/amazon/kcp/application/AndroidLocalStorage$InsertArguments;,
        Lcom/amazon/kcp/application/AndroidLocalStorage$UpdateArguments;,
        Lcom/amazon/kcp/application/AndroidLocalStorage$ReddingDBHelper;
    }
.end annotation


# static fields
.field private static final CREATE_STMNTS:[[Ljava/lang/String;

.field private static final OPEN_DB_ATTEMPTS:I = 0x2

.field private static final REDDING_DB_VERSION:I = 0x4

.field private static final TABLE_ARTICLE_STATE_CREATE_STMNTS:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TABLE_ARTICLE_STATE_DROP_STMNT:[Ljava/lang/String;

.field private static final TABLE_BOOK_LPR_BACKUP:[Ljava/lang/String;

.field private static final TABLE_BOOK_LPR_COPY_DATA_V1_V2:[Ljava/lang/String;

.field private static final TABLE_BOOK_LPR_CREATE_STMNTS:[Ljava/lang/String;

.field private static final TABLE_BOOK_LPR_CREATE_STMNTS_V2:[Ljava/lang/String;

.field private static final TABLE_BOOK_LPR_DROP_BACKUP:[Ljava/lang/String;

.field private static final TABLE_BOOK_STATE_CREATE_STMNTS:[Ljava/lang/String;

.field private static final TABLE_TOC_STATE_CREATE_STMNTS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final UPGRADE_TO_V2:[[Ljava/lang/String;

.field private static final UPGRADE_TO_V3:[[Ljava/lang/String;

.field private static final UPGRADE_TO_V4:[[Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final dbName:Ljava/lang/String;

.field private unavailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 52
    const-class v0, Lcom/amazon/kcp/application/AndroidLocalStorage;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/AndroidLocalStorage;->TAG:Ljava/lang/String;

    const-string v0, "CREATE TABLE IF NOT EXISTS book_state ( book_id TEXT PRIMARY KEY, book_read INTEGER, book_kept INTEGER)"

    .line 83
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/AndroidLocalStorage;->TABLE_BOOK_STATE_CREATE_STMNTS:[Ljava/lang/String;

    const-string v0, "CREATE TABLE IF NOT EXISTS book_lpr ( book_id TEXT PRIMARY KEY, book_last_mode INTEGER ,book_last_read_page INTEGER )"

    .line 109
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/AndroidLocalStorage;->TABLE_BOOK_LPR_CREATE_STMNTS:[Ljava/lang/String;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 116
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "CREATE TABLE IF NOT EXISTS "

    .line 117
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "book_lpr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " ( "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "book_id"

    .line 118
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, " TEXT PRIMARY KEY, "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "book_last_mode"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, " INTEGER, "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "book_last_read_page"

    .line 119
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "book_lpr_scroll_offset"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, " TEXT )"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v1, v7

    sput-object v1, Lcom/amazon/kcp/application/AndroidLocalStorage;->TABLE_BOOK_LPR_CREATE_STMNTS_V2:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    .line 121
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "ALTER TABLE "

    .line 122
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, " RENAME TO "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "book_lpr_old"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    sput-object v1, Lcom/amazon/kcp/application/AndroidLocalStorage;->TABLE_BOOK_LPR_BACKUP:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    .line 124
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "INSERT INTO "

    .line 125
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " ) SELECT "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    sput-object v1, Lcom/amazon/kcp/application/AndroidLocalStorage;->TABLE_BOOK_LPR_COPY_DATA_V1_V2:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    .line 129
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "DROP TABLE IF EXISTS "

    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    sput-object v1, Lcom/amazon/kcp/application/AndroidLocalStorage;->TABLE_BOOK_LPR_DROP_BACKUP:[Ljava/lang/String;

    const-string v2, "CREATE TABLE IF NOT EXISTS article_state ( book_id TEXT, article_index INTEGER, article_read INTEGER,  PRIMARY KEY ( book_id,article_index) )"

    .line 155
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amazon/kcp/application/AndroidLocalStorage;->TABLE_ARTICLE_STATE_CREATE_STMNTS:[Ljava/lang/String;

    const-string v2, "DROP TABLE IF EXISTS article_state"

    .line 163
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amazon/kcp/application/AndroidLocalStorage;->TABLE_ARTICLE_STATE_DROP_STMNT:[Ljava/lang/String;

    const-string v3, "CREATE TABLE IF NOT EXISTS toc_state ( book_id TEXT, toc_position INTEGER, toc_read INTEGER,  PRIMARY KEY ( book_id,toc_position) )"

    .line 179
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/amazon/kcp/application/AndroidLocalStorage;->TABLE_TOC_STATE_CREATE_STMNTS:[Ljava/lang/String;

    .line 192
    sget-object v4, Lcom/amazon/kcp/application/AndroidLocalStorage;->TABLE_BOOK_STATE_CREATE_STMNTS:[Ljava/lang/String;

    const/4 v5, 0x3

    new-array v6, v5, [[Ljava/lang/String;

    aput-object v4, v6, v7

    .line 206
    sget-object v4, Lcom/amazon/kcp/application/AndroidLocalStorage;->TABLE_BOOK_LPR_CREATE_STMNTS_V2:[Ljava/lang/String;

    aput-object v4, v6, v0

    const/4 v8, 0x2

    aput-object v3, v6, v8

    sput-object v6, Lcom/amazon/kcp/application/AndroidLocalStorage;->CREATE_STMNTS:[[Ljava/lang/String;

    new-array v6, v8, [[Ljava/lang/String;

    aput-object v3, v6, v7

    aput-object v2, v6, v0

    .line 215
    sput-object v6, Lcom/amazon/kcp/application/AndroidLocalStorage;->UPGRADE_TO_V2:[[Ljava/lang/String;

    new-array v2, v0, [[Ljava/lang/String;

    .line 223
    sget-object v3, Lcom/amazon/kcp/application/AndroidLocalStorage;->TABLE_BOOK_LPR_CREATE_STMNTS:[Ljava/lang/String;

    aput-object v3, v2, v7

    sput-object v2, Lcom/amazon/kcp/application/AndroidLocalStorage;->UPGRADE_TO_V3:[[Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [[Ljava/lang/String;

    .line 227
    sget-object v3, Lcom/amazon/kcp/application/AndroidLocalStorage;->TABLE_BOOK_LPR_BACKUP:[Ljava/lang/String;

    aput-object v3, v2, v7

    aput-object v4, v2, v0

    sget-object v0, Lcom/amazon/kcp/application/AndroidLocalStorage;->TABLE_BOOK_LPR_COPY_DATA_V1_V2:[Ljava/lang/String;

    aput-object v0, v2, v8

    aput-object v1, v2, v5

    sput-object v2, Lcom/amazon/kcp/application/AndroidLocalStorage;->UPGRADE_TO_V4:[[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "kindle.db"

    .line 348
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/application/AndroidLocalStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    new-instance v0, Lcom/amazon/kcp/application/AndroidLocalStorage$ReddingDBHelper;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kcp/application/AndroidLocalStorage$ReddingDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 360
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->context:Landroid/content/Context;

    .line 361
    iput-object p2, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->dbName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()[[Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/amazon/kcp/application/AndroidLocalStorage;->CREATE_STMNTS:[[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[[Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/amazon/kcp/application/AndroidLocalStorage;->UPGRADE_TO_V2:[[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()[[Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/amazon/kcp/application/AndroidLocalStorage;->UPGRADE_TO_V3:[[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()[[Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/amazon/kcp/application/AndroidLocalStorage;->UPGRADE_TO_V4:[[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/amazon/kcp/application/AndroidLocalStorage;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private updateBookLPR(Ljava/lang/String;Lcom/amazon/kindle/model/content/LocalBookState;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 665
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "book_lpr_scroll_offset"

    const-string v9, "book_last_read_page"

    const-string v10, "book_last_mode"

    filled-new-array {v10, v9, v8}, [Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x1

    new-array v4, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p1, v4, v12

    const-string v1, "book_lpr"

    const-string v3, "book_id = ?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 673
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "book_id"

    .line 677
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    invoke-virtual {p2}, Lcom/amazon/kindle/model/content/LocalBookState;->getLastReadViewMode()Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 679
    invoke-virtual {p2}, Lcom/amazon/kindle/model/content/LocalBookState;->getLastReadViewMode()Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 682
    :cond_0
    sget-object v2, Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;->UNKNOWN:Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;

    invoke-virtual {v2}, Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 684
    :goto_0
    invoke-virtual {p2}, Lcom/amazon/kindle/model/content/LocalBookState;->getLastPageRead()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 685
    invoke-virtual {p2}, Lcom/amazon/kindle/model/content/LocalBookState;->getLastPageReadScrollOfset()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    const-string v2, "book_lpr"

    if-ne p2, v11, :cond_4

    .line 688
    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 689
    :cond_1
    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 690
    :cond_2
    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 692
    :cond_3
    :try_start_0
    iget-object p2, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    :try_start_1
    iget-object p2, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "book_id = ?"

    new-array v4, v11, [Ljava/lang/String;

    aput-object p1, v4, v12

    invoke-virtual {p2, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 700
    iget-object p1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 702
    iget-object p1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 703
    throw p1

    :catch_0
    move-exception p1

    .line 694
    sget-object p2, Lcom/amazon/kcp/application/AndroidLocalStorage;->TAG:Ljava/lang/String;

    const-string v0, "IO error occured while trying to access db to update book lpr"

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 706
    :cond_4
    iget-object p1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 708
    :try_start_2
    iget-object p1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 p2, 0x0

    invoke-virtual {p1, v2, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    const-wide/16 v1, -0x1

    cmp-long v3, p1, v1

    if-eqz v3, :cond_6

    .line 711
    iget-object p1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 713
    iget-object p1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 716
    :cond_5
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    .line 709
    :cond_6
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Insert into book_lpr failed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 713
    iget-object p2, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 714
    throw p1
.end method

.method private updateBookState(Ljava/lang/String;Lcom/amazon/kindle/model/content/LocalBookState;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 604
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "book_kept"

    const-string v9, "book_read"

    filled-new-array {v9, v8}, [Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x1

    new-array v4, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p1, v4, v11

    const-string v1, "book_state"

    const-string v3, "book_id = ?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 613
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    const-string v2, "book_state"

    const-string v3, "book_id"

    if-ne v1, v10, :cond_3

    .line 614
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 615
    :goto_0
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 618
    :goto_1
    invoke-virtual {p2}, Lcom/amazon/kindle/model/content/LocalBookState;->isBookRead()Z

    move-result v5

    if-ne v1, v5, :cond_2

    invoke-virtual {p2}, Lcom/amazon/kindle/model/content/LocalBookState;->isBookKept()Z

    move-result v1

    if-eq v4, v1, :cond_4

    .line 619
    :cond_2
    invoke-virtual {p2}, Lcom/amazon/kindle/model/content/LocalBookState;->isBookRead()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 620
    invoke-virtual {p2}, Lcom/amazon/kindle/model/content/LocalBookState;->isBookKept()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 621
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 622
    invoke-virtual {v4, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    invoke-virtual {v4, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 624
    invoke-virtual {v4, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 627
    :try_start_0
    iget-object p2, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    :try_start_1
    iget-object p2, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "book_id = ?"

    new-array v3, v10, [Ljava/lang/String;

    aput-object p1, v3, v11

    invoke-virtual {p2, v2, v4, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 636
    iget-object p1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 638
    iget-object p1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 639
    throw p1

    :catch_0
    move-exception p1

    .line 629
    sget-object p2, Lcom/amazon/kcp/application/AndroidLocalStorage;->TAG:Ljava/lang/String;

    const-string v0, "IO error occured while trying to access db to update book state"

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 643
    :cond_3
    invoke-virtual {p2}, Lcom/amazon/kindle/model/content/LocalBookState;->isBookRead()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 644
    invoke-virtual {p2}, Lcom/amazon/kindle/model/content/LocalBookState;->isBookKept()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 645
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 646
    invoke-virtual {v4, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    invoke-virtual {v4, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 648
    invoke-virtual {v4, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 650
    iget-object p1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 652
    :try_start_2
    iget-object p1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 p2, 0x0

    invoke-virtual {p1, v2, p2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    const-wide/16 v1, -0x1

    cmp-long v3, p1, v1

    if-eqz v3, :cond_5

    .line 655
    iget-object p1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 658
    iget-object p1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 661
    :cond_4
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    .line 653
    :cond_5
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Insert into book_state failed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 658
    iget-object p2, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 659
    throw p1
.end method

.method private updateBookTOCReadState(Ljava/lang/String;Lcom/amazon/kindle/model/content/LocalBookState;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 720
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/model/content/LocalBookState;->getTocReadMap()Ljava/util/Map;

    move-result-object v2

    .line 721
    new-instance v3, Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 723
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 724
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 725
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 728
    iget-object v7, v1, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v15, "toc_read"

    const-string/jumbo v14, "toc_position"

    filled-new-array {v14, v15}, [Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x1

    new-array v11, v13, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    const-string/jumbo v8, "toc_state"

    const-string v10, "book_id = ?"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object v1, v14

    move-object/from16 v14, v18

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 736
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    const-string v9, "book_id"

    const-string/jumbo v10, "toc_state"

    const/4 v11, 0x1

    if-ne v8, v11, :cond_3

    const/4 v8, 0x0

    .line 737
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 738
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-eqz v13, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    .line 740
    :goto_1
    invoke-interface {v2, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    const/4 v11, 0x2

    const-string v8, "book_id = ? AND toc_position = ?"

    if-eqz v14, :cond_2

    .line 741
    invoke-interface {v3, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 743
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 745
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 746
    invoke-virtual {v13, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    invoke-virtual {v13, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 748
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v13, v15, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 749
    new-instance v9, Lcom/amazon/kcp/application/AndroidLocalStorage$UpdateArguments;

    new-array v11, v11, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v0, v11, v14

    .line 753
    invoke-virtual {v12}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v16, 0x1

    aput-object v12, v11, v16

    invoke-direct {v9, v10, v13, v8, v11}, Lcom/amazon/kcp/application/AndroidLocalStorage$UpdateArguments;-><init>(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 749
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    const/16 v16, 0x1

    .line 758
    new-instance v9, Lcom/amazon/kcp/application/AndroidLocalStorage$DeleteArguments;

    new-array v11, v11, [Ljava/lang/String;

    aput-object v0, v11, v14

    .line 761
    invoke-virtual {v12}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v16

    invoke-direct {v9, v10, v8, v11}, Lcom/amazon/kcp/application/AndroidLocalStorage$DeleteArguments;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 758
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 764
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 766
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 767
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 768
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 770
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    .line 771
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 772
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/model/content/LocalBookState;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v11

    invoke-interface {v11}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    invoke-virtual {v8, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 774
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v15, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 775
    new-instance v3, Lcom/amazon/kcp/application/AndroidLocalStorage$InsertArguments;

    const/4 v7, 0x0

    invoke-direct {v3, v10, v7, v8}, Lcom/amazon/kcp/application/AndroidLocalStorage$InsertArguments;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object/from16 v1, p0

    .line 780
    :try_start_0
    iget-object v0, v1, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/application/AndroidLocalStorage$UpdateArguments;

    .line 788
    iget-object v3, v1, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v5, v2, Lcom/amazon/kcp/application/AndroidLocalStorage$UpdateArguments;->table:Ljava/lang/String;

    iget-object v7, v2, Lcom/amazon/kcp/application/AndroidLocalStorage$UpdateArguments;->contentValues:Landroid/content/ContentValues;

    iget-object v8, v2, Lcom/amazon/kcp/application/AndroidLocalStorage$UpdateArguments;->whereClause:Ljava/lang/String;

    iget-object v2, v2, Lcom/amazon/kcp/application/AndroidLocalStorage$UpdateArguments;->whereArgs:[Ljava/lang/String;

    invoke-virtual {v3, v5, v7, v8, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    .line 791
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/application/AndroidLocalStorage$DeleteArguments;

    .line 792
    iget-object v3, v1, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v5, v2, Lcom/amazon/kcp/application/AndroidLocalStorage$DeleteArguments;->table:Ljava/lang/String;

    iget-object v6, v2, Lcom/amazon/kcp/application/AndroidLocalStorage$DeleteArguments;->whereClause:Ljava/lang/String;

    iget-object v2, v2, Lcom/amazon/kcp/application/AndroidLocalStorage$DeleteArguments;->whereArgs:[Ljava/lang/String;

    invoke-virtual {v3, v5, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_4

    .line 795
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/application/AndroidLocalStorage$InsertArguments;

    .line 796
    iget-object v3, v1, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, v2, Lcom/amazon/kcp/application/AndroidLocalStorage$InsertArguments;->table:Ljava/lang/String;

    iget-object v5, v2, Lcom/amazon/kcp/application/AndroidLocalStorage$InsertArguments;->nullColumnHack:Ljava/lang/String;

    iget-object v2, v2, Lcom/amazon/kcp/application/AndroidLocalStorage$InsertArguments;->contentValues:Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_5

    .line 798
    :cond_7
    iget-object v0, v1, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 800
    iget-object v0, v1, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, v1, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 801
    throw v0

    :catch_0
    move-exception v0

    .line 782
    sget-object v2, Lcom/amazon/kcp/application/AndroidLocalStorage;->TAG:Ljava/lang/String;

    const-string v3, "IO error occured while trying to access db to update TOC"

    invoke-static {v2, v3, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 806
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidLocalStorage;->deleteDB()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 813
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DB already closed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->dbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    monitor-exit p0

    return-void

    .line 819
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closing DB: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->dbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 820
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    .line 821
    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 822
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method deleteDB()V
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    .line 419
    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    const/4 v0, 0x0

    .line 422
    iput-boolean v0, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->unavailable:Z

    .line 424
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->dbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Database \'"

    if-eqz v0, :cond_1

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->dbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' deleted successfully."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 427
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->dbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' was not deleted."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_0
    return-void
.end method

.method ensureDBOpen()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    iget-boolean v0, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->unavailable:Z

    const-string v1, "Database is unavailable."

    if-nez v0, :cond_4

    .line 380
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    return-void

    .line 385
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v0, 0x1

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x2

    if-gt v4, v5, :cond_1

    .line 389
    :try_start_0
    iget-object v6, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    iput-object v6, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 392
    sget-object v6, Lcom/amazon/kcp/application/AndroidLocalStorage;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to open database \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->dbName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' (attempt "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 393
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidLocalStorage;->deleteDB()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 397
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "AndroidLocalStorage"

    if-eqz v6, :cond_3

    .line 403
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 404
    iget-object v3, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->dbName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v2, "Opened DB: %s, took: %d millis"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-le v4, v0, :cond_2

    .line 406
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "OpenDBAfterInitialFailure"

    invoke-virtual {v0, v7, v2, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :cond_2
    return-void

    .line 399
    :cond_3
    iput-boolean v0, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->unavailable:Z

    .line 400
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "UnableToOpenDB"

    invoke-virtual {v0, v7, v3, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 401
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized isAvailable()Z
    .locals 1

    monitor-enter p0

    .line 433
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->unavailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadLocalBookState(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Lcom/amazon/kindle/model/content/LocalBookState;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 441
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/application/AndroidLocalStorage;->ensureDBOpen()V

    .line 443
    new-instance v0, Lcom/amazon/kindle/model/content/LocalBookState;

    move-object/from16 v2, p1

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/model/content/LocalBookState;-><init>(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kcp/application/ILocalStorage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v3, 0x0

    .line 448
    :try_start_1
    iget-object v4, v1, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 455
    :try_start_2
    iget-object v5, v1, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "book_state"

    const-string v4, "book_read"

    const-string v7, "book_kept"

    filled-new-array {v4, v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "book_id = ?"

    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/String;

    .line 460
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    aput-object v10, v9, v13

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 455
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 464
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 467
    iget-object v0, v1, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_0

    .line 526
    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 534
    :cond_0
    iget-object v0, v1, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 468
    monitor-exit p0

    return-object v3

    .line 472
    :cond_1
    :try_start_5
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    .line 473
    :goto_0
    invoke-virtual {v0, v6}, Lcom/amazon/kindle/model/content/LocalBookState;->setBookRead(Z)V

    .line 475
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    .line 476
    :goto_1
    invoke-virtual {v0, v6, v13}, Lcom/amazon/kindle/model/content/LocalBookState;->setBookKept(ZZ)V

    .line 478
    iget-object v14, v1, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v15, "book_lpr"

    const-string v6, "book_last_mode"

    const-string v7, "book_last_read_page"

    const-string v8, "book_lpr_scroll_offset"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v16

    const-string v17, "book_id = ?"

    new-array v6, v4, [Ljava/lang/String;

    .line 482
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v13

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v18, v6

    .line 478
    invoke-virtual/range {v14 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 486
    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 487
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 488
    invoke-static {v7}, Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;->valueOf(I)Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/amazon/kindle/model/content/LocalBookState;->setLastReadViewMode(Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;)V

    .line 489
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/amazon/kindle/model/content/LocalBookState;->setLastReadPage(I)V

    const/4 v7, 0x2

    .line 490
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/amazon/kindle/model/content/LocalBookState;->setLastPageReadScrollOfset(Ljava/lang/String;)V

    .line 493
    :cond_4
    iget-object v14, v1, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v15, "toc_state"

    const-string/jumbo v7, "toc_position"

    const-string/jumbo v8, "toc_read"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v16

    const-string v17, "book_id = ?"

    new-array v7, v4, [Ljava/lang/String;

    .line 497
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v13

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v18, v7

    .line 493
    invoke-virtual/range {v14 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 500
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 501
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 502
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    .line 503
    :goto_3
    invoke-virtual {v0, v2, v7}, Lcom/amazon/kindle/model/content/LocalBookState;->setTocItemReadState(IZ)V

    goto :goto_2

    .line 507
    :cond_6
    iget-object v2, v1, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v5, :cond_7

    .line 526
    :try_start_7
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v3, :cond_8

    .line 529
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v6, :cond_9

    .line 532
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 534
    :cond_9
    iget-object v2, v1, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 509
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v6, v3

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v6, v3

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v6, v3

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v3

    move-object v6, v2

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v5, v3

    move-object v6, v5

    .line 522
    :goto_4
    :try_start_8
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    const-string v4, "AndroidLocalStorage"

    const-string v7, "LoadLocalBookStateFailedDueToSqliteIllegalState"

    sget-object v8, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v2, v4, v7, v8}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 523
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0

    :catch_5
    move-exception v0

    move-object v5, v3

    move-object v6, v5

    .line 511
    :goto_5
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    const-string v4, "AndroidLocalStorage"

    const-string v7, "LoadLocalBookStateFailed"

    sget-object v8, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v2, v4, v7, v8}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 512
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    :goto_6
    move-object v2, v3

    move-object v3, v5

    :goto_7
    if-eqz v3, :cond_a

    .line 526
    :try_start_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_a
    if-eqz v2, :cond_b

    .line 529
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_b
    if-eqz v6, :cond_c

    .line 532
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 534
    :cond_c
    iget-object v2, v1, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 535
    throw v0

    :catch_6
    move-exception v0

    .line 450
    sget-object v2, Lcom/amazon/kcp/application/AndroidLocalStorage;->TAG:Ljava/lang/String;

    const-string v4, "IO error occured while trying to access db to load local book state"

    invoke-static {v2, v4, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 452
    monitor-exit p0

    return-object v3

    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized save(Lcom/amazon/kindle/model/content/LocalBookState;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 575
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidLocalStorage;->ensureDBOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 579
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 586
    :try_start_2
    invoke-virtual {p1}, Lcom/amazon/kindle/model/content/LocalBookState;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    .line 587
    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/application/AndroidLocalStorage;->updateBookState(Ljava/lang/String;Lcom/amazon/kindle/model/content/LocalBookState;)V

    .line 588
    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/application/AndroidLocalStorage;->updateBookLPR(Ljava/lang/String;Lcom/amazon/kindle/model/content/LocalBookState;)V

    .line 589
    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/application/AndroidLocalStorage;->updateBookTOCReadState(Ljava/lang/String;Lcom/amazon/kindle/model/content/LocalBookState;)V

    .line 592
    iget-object p1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 598
    :try_start_3
    iget-object p1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 600
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 594
    :try_start_4
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "AndroidLocalStorage"

    const-string v2, "SaveLocalBookStateFailed"

    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 595
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 598
    :goto_0
    :try_start_5
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 599
    throw p1

    :catch_1
    move-exception p1

    .line 581
    sget-object v0, Lcom/amazon/kcp/application/AndroidLocalStorage;->TAG:Ljava/lang/String;

    const-string v1, "IO error occured while trying to access db to save local book state"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 583
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
