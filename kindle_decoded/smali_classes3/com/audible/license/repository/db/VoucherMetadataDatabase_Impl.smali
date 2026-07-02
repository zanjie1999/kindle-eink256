.class public Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;
.super Lcom/audible/license/repository/db/VoucherMetadataDatabase;
.source "VoucherMetadataDatabase_Impl.java"


# instance fields
.field private volatile _voucherMetadataDao:Lcom/audible/license/repository/db/VoucherMetadataDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/audible/license/repository/db/VoucherMetadataDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    .line 24
    iput-object p1, p0, Landroidx/room/RoomDatabase;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$400(Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$500(Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 2

    .line 97
    new-instance v0, Landroidx/room/InvalidationTracker;

    const-string v1, "voucher_metadata"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;[Ljava/lang/String;)V

    return-object v0
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4

    .line 29
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl$1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl$1;-><init>(Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;I)V

    const-string v2, "29a097cd9d2949d94ad07c6376c9a832"

    const-string v3, "39c09c4a08435b6b77f5a384c0632f26"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 88
    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    .line 89
    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    .line 90
    invoke-virtual {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 91
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method

.method public voucherMetadataDao()Lcom/audible/license/repository/db/VoucherMetadataDao;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;->_voucherMetadataDao:Lcom/audible/license/repository/db/VoucherMetadataDao;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;->_voucherMetadataDao:Lcom/audible/license/repository/db/VoucherMetadataDao;

    return-object v0

    .line 122
    :cond_0
    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;->_voucherMetadataDao:Lcom/audible/license/repository/db/VoucherMetadataDao;

    if-nez v0, :cond_1

    .line 124
    new-instance v0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;

    invoke-direct {v0, p0}, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;->_voucherMetadataDao:Lcom/audible/license/repository/db/VoucherMetadataDao;

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;->_voucherMetadataDao:Lcom/audible/license/repository/db/VoucherMetadataDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 127
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
