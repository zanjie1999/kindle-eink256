.class Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl$1;
.super Landroidx/room/RoomOpenHelper$Delegate;
.source "VoucherMetadataDatabase_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;->createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;


# direct methods
.method constructor <init>(Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;I)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl$1;->this$0:Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;

    invoke-direct {p0, p2}, Landroidx/room/RoomOpenHelper$Delegate;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `voucher_metadata` (`asin` TEXT NOT NULL, `acr` TEXT NOT NULL, `owner` TEXT NOT NULL, `drm_type` TEXT NOT NULL, `refresh_date` INTEGER, `removal_date` INTEGER, `is_voucher_valid` INTEGER NOT NULL, `should_delete_on_sign_out` INTEGER NOT NULL, `license_id` TEXT, PRIMARY KEY(`asin`))"

    .line 32
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_voucher_metadata_refresh_date_removal_date` ON `voucher_metadata` (`refresh_date`, `removal_date`)"

    .line 33
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 34
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \"29a097cd9d2949d94ad07c6376c9a832\")"

    .line 35
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public dropAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS `voucher_metadata`"

    .line 40
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl$1;->this$0:Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;

    invoke-static {v0}, Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;->access$000(Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 46
    iget-object v1, p0, Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl$1;->this$0:Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;

    invoke-static {v1}, Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;->access$100(Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 47
    iget-object v2, p0, Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl$1;->this$0:Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;

    invoke-static {v2}, Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;->access$200(Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl$1;->this$0:Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;

    invoke-static {v0, p1}, Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;->access$302(Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 55
    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl$1;->this$0:Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;

    invoke-static {v0, p1}, Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;->access$400(Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 56
    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl$1;->this$0:Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;

    invoke-static {v0}, Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;->access$500(Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 57
    iget-object v1, p0, Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl$1;->this$0:Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;

    invoke-static {v1}, Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;->access$600(Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 58
    iget-object v2, p0, Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl$1;->this$0:Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;

    invoke-static {v2}, Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;->access$700(Lcom/audible/license/repository/db/VoucherMetadataDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected validateMigration(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 9

    .line 65
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 66
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "asin"

    const-string v3, "TEXT"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4, v4}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "acr"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "owner"

    invoke-direct {v1, v2, v3, v4, v5}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "drm_type"

    invoke-direct {v1, v2, v3, v4, v5}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "refresh_date"

    const-string v6, "INTEGER"

    invoke-direct {v1, v2, v6, v5, v5}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v7, "removal_date"

    invoke-direct {v1, v7, v6, v5, v5}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v8, "is_voucher_valid"

    invoke-direct {v1, v8, v6, v4, v5}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v8, "should_delete_on_sign_out"

    invoke-direct {v1, v8, v6, v4, v5}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v6, "license_id"

    invoke-direct {v1, v6, v3, v5, v5}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 76
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 77
    new-instance v4, Landroidx/room/util/TableInfo$Index;

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v6, "index_voucher_metadata_refresh_date_removal_date"

    invoke-direct {v4, v6, v5, v2}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v2, Landroidx/room/util/TableInfo;

    const-string v4, "voucher_metadata"

    invoke-direct {v2, v4, v0, v1, v3}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 79
    invoke-static {p1, v4}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object p1

    .line 80
    invoke-virtual {v2, p1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Migration didn\'t properly handle voucher_metadata(com.audible.license.repository.db.VoucherMetadata).\n Expected:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n Found:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
