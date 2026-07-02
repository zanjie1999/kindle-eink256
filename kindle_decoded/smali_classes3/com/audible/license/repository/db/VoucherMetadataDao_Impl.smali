.class public Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;
.super Ljava/lang/Object;
.source "VoucherMetadataDao_Impl.java"

# interfaces
.implements Lcom/audible/license/repository/db/VoucherMetadataDao;


# instance fields
.field private final __acrTypeConverter:Lcom/audible/mobile/util/typeconverter/AcrTypeConverter;

.field private final __asinTypeConverter:Lcom/audible/mobile/util/typeconverter/AsinTypeConverter;

.field private final __customerIdConverter:Lcom/audible/mobile/util/typeconverter/CustomerIdConverter;

.field private final __dateLongTypeConverter:Lcom/audible/mobile/util/typeconverter/DateLongTypeConverter;

.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfVoucherMetadata:Landroidx/room/EntityDeletionOrUpdateAdapter;

.field private final __drmTypeConverter:Lcom/audible/license/repository/typeconverters/DrmTypeConverter;

.field private final __insertionAdapterOfVoucherMetadata:Landroidx/room/EntityInsertionAdapter;

.field private final __preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/audible/mobile/util/typeconverter/AsinTypeConverter;

    invoke-direct {v0}, Lcom/audible/mobile/util/typeconverter/AsinTypeConverter;-><init>()V

    iput-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__asinTypeConverter:Lcom/audible/mobile/util/typeconverter/AsinTypeConverter;

    .line 35
    new-instance v0, Lcom/audible/mobile/util/typeconverter/AcrTypeConverter;

    invoke-direct {v0}, Lcom/audible/mobile/util/typeconverter/AcrTypeConverter;-><init>()V

    iput-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__acrTypeConverter:Lcom/audible/mobile/util/typeconverter/AcrTypeConverter;

    .line 37
    new-instance v0, Lcom/audible/mobile/util/typeconverter/CustomerIdConverter;

    invoke-direct {v0}, Lcom/audible/mobile/util/typeconverter/CustomerIdConverter;-><init>()V

    iput-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__customerIdConverter:Lcom/audible/mobile/util/typeconverter/CustomerIdConverter;

    .line 39
    new-instance v0, Lcom/audible/license/repository/typeconverters/DrmTypeConverter;

    invoke-direct {v0}, Lcom/audible/license/repository/typeconverters/DrmTypeConverter;-><init>()V

    iput-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__drmTypeConverter:Lcom/audible/license/repository/typeconverters/DrmTypeConverter;

    .line 41
    new-instance v0, Lcom/audible/mobile/util/typeconverter/DateLongTypeConverter;

    invoke-direct {v0}, Lcom/audible/mobile/util/typeconverter/DateLongTypeConverter;-><init>()V

    iput-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__dateLongTypeConverter:Lcom/audible/mobile/util/typeconverter/DateLongTypeConverter;

    .line 50
    iput-object p1, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 51
    new-instance v0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl$1;-><init>(Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__insertionAdapterOfVoucherMetadata:Landroidx/room/EntityInsertionAdapter;

    .line 106
    new-instance v0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl$2;-><init>(Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__deletionAdapterOfVoucherMetadata:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 123
    new-instance v0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl$3;-><init>(Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    .line 130
    new-instance v0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl$4;-><init>(Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;)Lcom/audible/mobile/util/typeconverter/AsinTypeConverter;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__asinTypeConverter:Lcom/audible/mobile/util/typeconverter/AsinTypeConverter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;)Lcom/audible/mobile/util/typeconverter/AcrTypeConverter;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__acrTypeConverter:Lcom/audible/mobile/util/typeconverter/AcrTypeConverter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;)Lcom/audible/mobile/util/typeconverter/CustomerIdConverter;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__customerIdConverter:Lcom/audible/mobile/util/typeconverter/CustomerIdConverter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;)Lcom/audible/license/repository/typeconverters/DrmTypeConverter;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__drmTypeConverter:Lcom/audible/license/repository/typeconverters/DrmTypeConverter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;)Lcom/audible/mobile/util/typeconverter/DateLongTypeConverter;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__dateLongTypeConverter:Lcom/audible/mobile/util/typeconverter/DateLongTypeConverter;

    return-object p0
.end method


# virtual methods
.method public delete(Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/domain/Asin;)V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    const/4 v1, 0x1

    .line 179
    :try_start_0
    iget-object v2, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__asinTypeConverter:Lcom/audible/mobile/util/typeconverter/AsinTypeConverter;

    invoke-virtual {v2, p2}, Lcom/audible/mobile/util/typeconverter/AsinTypeConverter;->asinToString(Lcom/audible/mobile/domain/Asin;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 181
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 183
    :cond_0
    invoke-interface {v0, v1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p2, 0x2

    .line 187
    iget-object v1, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__customerIdConverter:Lcom/audible/mobile/util/typeconverter/CustomerIdConverter;

    invoke-virtual {v1, p1}, Lcom/audible/mobile/util/typeconverter/CustomerIdConverter;->toString(Lcom/audible/mobile/domain/CustomerId;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 189
    invoke-interface {v0, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 191
    :cond_1
    invoke-interface {v0, p2, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 193
    :goto_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 194
    iget-object p1, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    iget-object p1, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 197
    iget-object p1, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 196
    iget-object p2, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 197
    iget-object p2, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 198
    throw p1
.end method

.method public getAllVoucherMetadata()Ljava/util/List;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/audible/license/repository/db/VoucherMetadata;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const-string v2, "SELECT * FROM voucher_metadata"

    .line 295
    invoke-static {v2, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    .line 296
    iget-object v3, v1, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3, v2}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v4, "asin"

    .line 298
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "acr"

    .line 299
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "owner"

    .line 300
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "drm_type"

    .line 301
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "refresh_date"

    .line 302
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "removal_date"

    .line 303
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "is_voucher_valid"

    .line 304
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "should_delete_on_sign_out"

    .line 305
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "license_id"

    .line 306
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 307
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 308
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 312
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 313
    iget-object v15, v1, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__asinTypeConverter:Lcom/audible/mobile/util/typeconverter/AsinTypeConverter;

    invoke-virtual {v15, v14}, Lcom/audible/mobile/util/typeconverter/AsinTypeConverter;->fromString(Ljava/lang/String;)Lcom/audible/mobile/domain/Asin;

    move-result-object v17

    .line 316
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 317
    iget-object v15, v1, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__acrTypeConverter:Lcom/audible/mobile/util/typeconverter/AcrTypeConverter;

    invoke-virtual {v15, v14}, Lcom/audible/mobile/util/typeconverter/AcrTypeConverter;->fromString(Ljava/lang/String;)Lcom/audible/mobile/domain/ACR;

    move-result-object v18

    .line 320
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 321
    iget-object v15, v1, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__customerIdConverter:Lcom/audible/mobile/util/typeconverter/CustomerIdConverter;

    invoke-virtual {v15, v14}, Lcom/audible/mobile/util/typeconverter/CustomerIdConverter;->fromString(Ljava/lang/String;)Lcom/audible/mobile/domain/CustomerId;

    move-result-object v19

    .line 324
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 325
    iget-object v15, v1, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__drmTypeConverter:Lcom/audible/license/repository/typeconverters/DrmTypeConverter;

    invoke-virtual {v15, v14}, Lcom/audible/license/repository/typeconverters/DrmTypeConverter;->fromString(Ljava/lang/String;)Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    move-result-object v20

    .line 328
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 329
    iget-object v0, v1, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__dateLongTypeConverter:Lcom/audible/mobile/util/typeconverter/DateLongTypeConverter;

    invoke-virtual {v0, v14, v15}, Lcom/audible/mobile/util/typeconverter/DateLongTypeConverter;->longToDate(J)Ljava/util/Date;

    move-result-object v21

    .line 332
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 333
    iget-object v0, v1, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__dateLongTypeConverter:Lcom/audible/mobile/util/typeconverter/DateLongTypeConverter;

    invoke-virtual {v0, v14, v15}, Lcom/audible/mobile/util/typeconverter/DateLongTypeConverter;->longToDate(J)Ljava/util/Date;

    move-result-object v22

    .line 336
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v14, 0x1

    if-eqz v0, :cond_0

    const/16 v23, 0x1

    goto :goto_1

    :cond_0
    const/16 v23, 0x0

    .line 340
    :goto_1
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v24, 0x1

    goto :goto_2

    :cond_1
    const/16 v24, 0x0

    .line 343
    :goto_2
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 344
    new-instance v0, Lcom/audible/license/repository/db/VoucherMetadata;

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v25}, Lcom/audible/license/repository/db/VoucherMetadata;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/contentlicense/networking/request/DrmType;Ljava/util/Date;Ljava/util/Date;ZZLjava/lang/String;)V

    .line 345
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    .line 349
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 350
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v13

    :catchall_0
    move-exception v0

    .line 349
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 350
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 351
    throw v0
.end method

.method public insert(Lcom/audible/license/repository/db/VoucherMetadata;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__insertionAdapterOfVoucherMetadata:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 144
    iget-object p1, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    iget-object p1, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 147
    throw p1
.end method
