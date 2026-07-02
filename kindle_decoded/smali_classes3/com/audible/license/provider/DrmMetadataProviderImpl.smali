.class public final Lcom/audible/license/provider/DrmMetadataProviderImpl;
.super Ljava/lang/Object;
.source "DrmMetadataProviderImpl.kt"

# interfaces
.implements Lcom/audible/license/provider/DrmMetadataProvider;


# instance fields
.field private final voucherMetadataRepo:Lcom/audible/license/repository/db/VoucherMetadataRepository;


# direct methods
.method public constructor <init>(Lcom/audible/license/repository/db/VoucherMetadataRepository;)V
    .locals 1

    const-string v0, "voucherMetadataRepo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/audible/license/provider/DrmMetadataProviderImpl;->voucherMetadataRepo:Lcom/audible/license/repository/db/VoucherMetadataRepository;

    return-void
.end method
