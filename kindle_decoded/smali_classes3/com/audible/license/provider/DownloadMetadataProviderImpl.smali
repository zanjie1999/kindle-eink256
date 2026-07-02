.class public final Lcom/audible/license/provider/DownloadMetadataProviderImpl;
.super Ljava/lang/Object;
.source "DownloadMetadataProviderImpl.kt"

# interfaces
.implements Lcom/audible/license/provider/DownloadMetadataProvider;


# instance fields
.field private final voucherRepository:Lcom/audible/license/repository/VoucherRepository;


# direct methods
.method public constructor <init>(Lcom/audible/license/repository/VoucherRepository;)V
    .locals 1

    const-string v0, "voucherRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/audible/license/provider/DownloadMetadataProviderImpl;->voucherRepository:Lcom/audible/license/repository/VoucherRepository;

    return-void
.end method
