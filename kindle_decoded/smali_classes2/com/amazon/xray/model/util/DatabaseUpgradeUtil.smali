.class public Lcom/amazon/xray/model/util/DatabaseUpgradeUtil;
.super Ljava/lang/Object;
.source "DatabaseUpgradeUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.xray.model.util.DatabaseUpgradeUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static needBookMetadataFlagsUpgrade(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "pragma table_info(book_metadata)"

    const/4 v2, 0x0

    .line 61
    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 63
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    const-string v3, "name"

    .line 64
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "has_images"

    .line 65
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "has_excerpts"

    .line 67
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 72
    :cond_2
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    if-eqz v1, :cond_3

    if-nez v2, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0

    :catchall_0
    move-exception v1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 73
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 78
    sget-object v1, Lcom/amazon/xray/model/util/DatabaseUpgradeUtil;->TAG:Ljava/lang/String;

    const-string v2, "Error checking book_metadata table schema"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private static needBookMetadataSpoilersUpgrade(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "pragma table_info(book_metadata)"

    const/4 v2, 0x0

    .line 129
    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "name"

    .line 132
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "show_spoilers_default"

    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 139
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v0

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 140
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 145
    sget-object v1, Lcom/amazon/xray/model/util/DatabaseUpgradeUtil;->TAG:Ljava/lang/String;

    const-string v2, "Error checking book_metadata table schema"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private static needEntityCountsAndImagePreviewSetUpgrade(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "pragma table_info(book_metadata)"

    const/4 v2, 0x0

    .line 227
    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 229
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    const-string v5, "name"

    .line 230
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "num_people"

    .line 231
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string v7, "num_terms"

    .line 233
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const-string v7, "num_images"

    .line 235
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const-string v7, "preview_images"

    .line 237
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 242
    :cond_4
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    if-nez v4, :cond_6

    :cond_5
    const/4 v0, 0x1

    :cond_6
    return v0

    :catchall_0
    move-exception v1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 243
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 248
    sget-object v1, Lcom/amazon/xray/model/util/DatabaseUpgradeUtil;->TAG:Ljava/lang/String;

    const-string v2, "Error checking book_metadata table schema"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private static needExcerptUpgrade(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "pragma table_info(excerpt)"

    const/4 v2, 0x0

    .line 175
    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :cond_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "name"

    .line 178
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "goto"

    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 185
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v0

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 186
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 191
    sget-object v1, Lcom/amazon/xray/model/util/DatabaseUpgradeUtil;->TAG:Ljava/lang/String;

    const-string v2, "Error checking excerpt table schema"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static performUpgradeCheck(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 30
    invoke-static {p0}, Lcom/amazon/xray/model/util/DatabaseUpgradeUtil;->needBookMetadataFlagsUpgrade(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {p0}, Lcom/amazon/xray/model/util/DatabaseUpgradeUtil;->upgradeBookMetadataFlags(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 35
    :cond_0
    invoke-static {p0}, Lcom/amazon/xray/model/util/DatabaseUpgradeUtil;->needBookMetadataSpoilersUpgrade(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-static {p0}, Lcom/amazon/xray/model/util/DatabaseUpgradeUtil;->upgradeBookMetadataSpoilers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 40
    :cond_1
    invoke-static {p0}, Lcom/amazon/xray/model/util/DatabaseUpgradeUtil;->needEntityCountsAndImagePreviewSetUpgrade(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    invoke-static {p0}, Lcom/amazon/xray/model/util/DatabaseUpgradeUtil;->upgradeEntityCountsAndImagePreviewSet(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 45
    :cond_2
    invoke-static {p0}, Lcom/amazon/xray/model/util/DatabaseUpgradeUtil;->needExcerptUpgrade(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46
    invoke-static {p0}, Lcom/amazon/xray/model/util/DatabaseUpgradeUtil;->upgradeExcerpt(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_3
    return-void
.end method

.method private static upgradeBookMetadataFlags(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .line 90
    sget-object v0, Lcom/amazon/xray/model/util/DatabaseUpgradeUtil;->TAG:Ljava/lang/String;

    const-string v1, "Upgrading book_metadata table (adding columns: has_images, has_excerpt)..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v1, "SELECT count(id) FROM excerpt WHERE image IS NOT NULL LIMIT 1"

    .line 94
    invoke-virtual {p0, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 96
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    .line 97
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x1

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 99
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const-string v1, "SELECT count(id) FROM excerpt WHERE image is NULL LIMIT 1"

    .line 103
    invoke-virtual {p0, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 105
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 106
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v1, :cond_1

    const/4 v2, 0x1

    .line 108
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 112
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE book_metadata ADD has_images TINYINT DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1"

    const-string v4, "0"

    if-eqz v3, :cond_2

    move-object v3, v1

    goto :goto_1

    :cond_2
    move-object v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ALTER TABLE book_metadata ADD has_excerpts TINYINT DEFAULT "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 116
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p0

    .line 108
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 109
    throw p0

    :catchall_1
    move-exception p0

    .line 99
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 100
    throw p0
.end method

.method private static upgradeBookMetadataSpoilers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 157
    sget-object v0, Lcom/amazon/xray/model/util/DatabaseUpgradeUtil;->TAG:Ljava/lang/String;

    const-string v1, "Upgrading book_metadata table (adding column: show_spoilers_default)..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "ALTER TABLE book_metadata ADD show_spoilers_default TINYINT DEFAULT 0"

    .line 160
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 162
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method private static upgradeEntityCountsAndImagePreviewSet(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 260
    sget-object v0, Lcom/amazon/xray/model/util/DatabaseUpgradeUtil;->TAG:Ljava/lang/String;

    const-string v1, "Upgrading book_metadata table (adding columns: num_people, num_terms, num_images, preview_images)..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "ALTER TABLE book_metadata ADD num_people INTEGER DEFAULT 0"

    .line 264
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE book_metadata ADD num_terms INTEGER DEFAULT 0"

    .line 265
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE book_metadata ADD num_images INTEGER DEFAULT 0"

    .line 266
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE book_metadata ADD preview_images TEXT DEFAULT \'\'"

    .line 267
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 269
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 271
    sget-object p0, Lcom/amazon/xray/model/util/DatabaseUpgradeUtil;->TAG:Ljava/lang/String;

    const-string v0, "Upgrade successful"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static upgradeExcerpt(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 203
    sget-object v0, Lcom/amazon/xray/model/util/DatabaseUpgradeUtil;->TAG:Ljava/lang/String;

    const-string v1, "Upgrading excerpt table (adding column: goto)..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "ALTER TABLE excerpt ADD goto INTEGER DEFAULT NULL"

    .line 206
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 208
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method
