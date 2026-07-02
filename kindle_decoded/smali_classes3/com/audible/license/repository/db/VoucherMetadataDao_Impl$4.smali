.class Lcom/audible/license/repository/db/VoucherMetadataDao_Impl$4;
.super Landroidx/room/SharedSQLiteStatement;
.source "VoucherMetadataDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/audible/license/repository/db/VoucherMetadataDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 130
    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM voucher_metadata WHERE owner = ?"

    return-object v0
.end method
