.class Lcom/audible/license/repository/db/VoucherMetadataDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "VoucherMetadataDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/audible/license/repository/db/VoucherMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;


# direct methods
.method constructor <init>(Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl$1;->this$0:Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/audible/license/repository/db/VoucherMetadata;)V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl$1;->this$0:Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;

    invoke-static {v0}, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->access$000(Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;)Lcom/audible/mobile/util/typeconverter/AsinTypeConverter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/audible/license/repository/db/VoucherMetadata;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/mobile/util/typeconverter/AsinTypeConverter;->asinToString(Lcom/audible/mobile/domain/Asin;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 62
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl$1;->this$0:Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;

    invoke-static {v0}, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->access$100(Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;)Lcom/audible/mobile/util/typeconverter/AcrTypeConverter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/audible/license/repository/db/VoucherMetadata;->getAcr()Lcom/audible/mobile/domain/ACR;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/mobile/util/typeconverter/AcrTypeConverter;->toString(Lcom/audible/mobile/domain/ACR;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 69
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 71
    :cond_1
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 74
    :goto_1
    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl$1;->this$0:Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;

    invoke-static {v0}, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->access$200(Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;)Lcom/audible/mobile/util/typeconverter/CustomerIdConverter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/audible/license/repository/db/VoucherMetadata;->getOwner()Lcom/audible/mobile/domain/CustomerId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/mobile/util/typeconverter/CustomerIdConverter;->toString(Lcom/audible/mobile/domain/CustomerId;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 76
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 78
    :cond_2
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 81
    :goto_2
    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl$1;->this$0:Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;

    invoke-static {v0}, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->access$300(Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;)Lcom/audible/license/repository/typeconverters/DrmTypeConverter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/audible/license/repository/db/VoucherMetadata;->getDrmType()Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/license/repository/typeconverters/DrmTypeConverter;->toString(Lcom/audible/mobile/contentlicense/networking/request/DrmType;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_3

    .line 83
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    .line 85
    :cond_3
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 88
    :goto_3
    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl$1;->this$0:Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;

    invoke-static {v0}, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->access$400(Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;)Lcom/audible/mobile/util/typeconverter/DateLongTypeConverter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/audible/license/repository/db/VoucherMetadata;->getRefreshDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/mobile/util/typeconverter/DateLongTypeConverter;->dateToLong(Ljava/util/Date;)J

    move-result-wide v0

    const/4 v2, 0x5

    .line 89
    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 91
    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl$1;->this$0:Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;

    invoke-static {v0}, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;->access$400(Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;)Lcom/audible/mobile/util/typeconverter/DateLongTypeConverter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/audible/license/repository/db/VoucherMetadata;->getRemovalDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/mobile/util/typeconverter/DateLongTypeConverter;->dateToLong(Ljava/util/Date;)J

    move-result-wide v0

    const/4 v2, 0x6

    .line 92
    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 94
    invoke-virtual {p2}, Lcom/audible/license/repository/db/VoucherMetadata;->isVoucherValid()Z

    move-result v0

    const/4 v1, 0x7

    int-to-long v2, v0

    .line 95
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 97
    invoke-virtual {p2}, Lcom/audible/license/repository/db/VoucherMetadata;->getShouldDeleteOnSignOut()Z

    move-result v0

    const/16 v1, 0x8

    int-to-long v2, v0

    .line 98
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 99
    invoke-virtual {p2}, Lcom/audible/license/repository/db/VoucherMetadata;->getLicenseId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_4

    .line 100
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_4

    .line 102
    :cond_4
    invoke-virtual {p2}, Lcom/audible/license/repository/db/VoucherMetadata;->getLicenseId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_4
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p2, Lcom/audible/license/repository/db/VoucherMetadata;

    invoke-virtual {p0, p1, p2}, Lcom/audible/license/repository/db/VoucherMetadataDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/audible/license/repository/db/VoucherMetadata;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `voucher_metadata`(`asin`,`acr`,`owner`,`drm_type`,`refresh_date`,`removal_date`,`is_voucher_valid`,`should_delete_on_sign_out`,`license_id`) VALUES (?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
