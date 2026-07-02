.class public interface abstract Lcom/audible/license/repository/acls/VoucherFetcher;
.super Ljava/lang/Object;
.source "VoucherFetcher.kt"


# virtual methods
.method public abstract fetchVoucherByAcr(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/contentlicense/networking/request/DrmType;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/audible/mobile/domain/ACR;",
            "Lcom/audible/mobile/contentlicense/networking/request/DrmType;",
            ")",
            "Lio/reactivex/Single<",
            "Lkotlin/Triple<",
            "Lcom/audible/license/repository/db/VoucherMetadata;",
            "Lcom/audible/license/model/EncryptedVoucher;",
            "Lcom/audible/license/model/DownloadMetadata;",
            ">;>;"
        }
    .end annotation
.end method
