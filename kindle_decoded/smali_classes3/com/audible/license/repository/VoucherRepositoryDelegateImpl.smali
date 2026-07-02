.class public final Lcom/audible/license/repository/VoucherRepositoryDelegateImpl;
.super Ljava/lang/Object;
.source "VoucherRepositoryDelegateImpl.kt"

# interfaces
.implements Lcom/audible/license/repository/VoucherRepositoryDelegate;


# instance fields
.field private final voucherMetadataRepository:Lcom/audible/license/repository/db/VoucherMetadataRepository;

.field private final voucherRepository:Lcom/audible/license/repository/VoucherRepository;


# direct methods
.method public constructor <init>(Lcom/audible/license/repository/VoucherRepository;Lcom/audible/license/repository/db/VoucherMetadataRepository;)V
    .locals 1

    const-string v0, "voucherRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voucherMetadataRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/audible/license/repository/VoucherRepositoryDelegateImpl;->voucherRepository:Lcom/audible/license/repository/VoucherRepository;

    iput-object p2, p0, Lcom/audible/license/repository/VoucherRepositoryDelegateImpl;->voucherMetadataRepository:Lcom/audible/license/repository/db/VoucherMetadataRepository;

    return-void
.end method
