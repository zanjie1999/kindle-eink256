.class final Lcom/audible/license/repository/acls/VoucherFetcherImpl$fetchVoucherByAcr$1;
.super Ljava/lang/Object;
.source "VoucherFetcherImpl.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/license/repository/acls/VoucherFetcherImpl;->fetchVoucherByAcr(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/contentlicense/networking/request/DrmType;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;TR;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/audible/license/repository/acls/VoucherFetcherImpl$fetchVoucherByAcr$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/audible/license/repository/acls/VoucherFetcherImpl$fetchVoucherByAcr$1;

    invoke-direct {v0}, Lcom/audible/license/repository/acls/VoucherFetcherImpl$fetchVoucherByAcr$1;-><init>()V

    sput-object v0, Lcom/audible/license/repository/acls/VoucherFetcherImpl$fetchVoucherByAcr$1;->INSTANCE:Lcom/audible/license/repository/acls/VoucherFetcherImpl$fetchVoucherByAcr$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p1, Lkotlin/Triple;

    invoke-virtual {p0, p1}, Lcom/audible/license/repository/acls/VoucherFetcherImpl$fetchVoucherByAcr$1;->apply(Lkotlin/Triple;)Lkotlin/Triple;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lkotlin/Triple;)Lkotlin/Triple;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Triple<",
            "Lcom/audible/license/repository/db/VoucherMetadata;",
            "Lcom/audible/license/model/EncryptedVoucher;",
            "Lcom/audible/license/model/ExtraContentLicenseInfo;",
            ">;)",
            "Lkotlin/Triple<",
            "Lcom/audible/license/repository/db/VoucherMetadata;",
            "Lcom/audible/license/model/EncryptedVoucher;",
            "Lcom/audible/license/model/DownloadMetadata;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lkotlin/Triple;

    .line 59
    invoke-virtual {p1}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v1

    .line 60
    invoke-virtual {p1}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v2

    .line 61
    invoke-virtual {p1}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/license/model/ExtraContentLicenseInfo;

    invoke-virtual {p1}, Lcom/audible/license/model/ExtraContentLicenseInfo;->getDownloadMetadata()Lcom/audible/license/model/DownloadMetadata;

    move-result-object p1

    .line 58
    invoke-direct {v0, v1, v2, p1}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
