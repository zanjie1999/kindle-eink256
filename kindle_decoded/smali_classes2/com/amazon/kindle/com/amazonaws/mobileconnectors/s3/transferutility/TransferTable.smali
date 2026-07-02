.class Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferTable;
.super Ljava/lang/Object;
.source "TransferTable.java"


# static fields
.field private static final DATABASE_CREATE:Ljava/lang/String; = "create table awstransfer(_id integer primary key autoincrement, main_upload_id integer, type text not null, state text not null, bucket_name text not null, key text not null, version_id text, bytes_total bigint, bytes_current bigint, speed bigint, is_requester_pays integer, is_encrypted integer, file text not null, file_offset bigint, is_multipart int, part_num int not null, is_last_part integer, multipart_id text, etag text, range_start bigint, range_last bigint, header_content_type text, header_content_language text, header_content_disposition text, header_content_encoding text, header_cache_control text, header_expire text);"

.field private static final TABLE_VERSION_2:I = 0x2

.field private static final TABLE_VERSION_3:I = 0x3

.field private static final TABLE_VERSION_4:I = 0x4

.field private static final TABLE_VERSION_5:I = 0x5

.field private static final TABLE_VERSION_6:I = 0x6


# direct methods
.method private static addVersion2Columns(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "ALTER TABLE awstransfer ADD COLUMN user_metadata text;"

    .line 301
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE awstransfer ADD COLUMN expiration_time_rule_id text;"

    .line 302
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE awstransfer ADD COLUMN http_expires_date text;"

    .line 303
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE awstransfer ADD COLUMN sse_algorithm text;"

    .line 304
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE awstransfer ADD COLUMN content_md5 text;"

    .line 305
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static addVersion3Columns(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "ALTER TABLE awstransfer ADD COLUMN kms_key text;"

    .line 314
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static addVersion4Columns(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "ALTER TABLE awstransfer ADD COLUMN canned_acl text;"

    .line 323
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static addVersion5Columns(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "ALTER TABLE awstransfer ADD COLUMN header_storage_class text;"

    .line 332
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static addVersion6Columns(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "ALTER TABLE awstransfer ADD COLUMN transfer_utility_options text;"

    .line 341
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static onCreate(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 1

    const-string v0, "create table awstransfer(_id integer primary key autoincrement, main_upload_id integer, type text not null, state text not null, bucket_name text not null, key text not null, version_id text, bytes_total bigint, bytes_current bigint, speed bigint, is_requester_pays integer, is_encrypted integer, file text not null, file_offset bigint, is_multipart int, part_num int not null, is_last_part integer, multipart_id text, etag text, range_start bigint, range_last bigint, header_content_type text, header_content_language text, header_content_disposition text, header_content_encoding text, header_cache_control text, header_expire text);"

    .line 250
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 251
    invoke-static {p0, v0, p1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferTable;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public static onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    .line 271
    invoke-static {p0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferTable;->addVersion2Columns(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    if-lt p2, v0, :cond_1

    .line 274
    invoke-static {p0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferTable;->addVersion3Columns(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    const/4 v0, 0x4

    if-ge p1, v0, :cond_2

    if-lt p2, v0, :cond_2

    .line 277
    invoke-static {p0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferTable;->addVersion4Columns(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2
    const/4 v0, 0x5

    if-ge p1, v0, :cond_3

    if-lt p2, v0, :cond_3

    .line 280
    invoke-static {p0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferTable;->addVersion5Columns(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_3
    const/4 v0, 0x6

    if-ge p1, v0, :cond_4

    if-lt p2, v0, :cond_4

    .line 283
    invoke-static {p0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferTable;->addVersion6Columns(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_4
    return-void
.end method
