.class final Lcom/audible/license/repository/acls/VoucherFetcherImpl$getContentLicense$1;
.super Ljava/lang/Object;
.source "VoucherFetcherImpl.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/license/repository/acls/VoucherFetcherImpl;->getContentLicense(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/contentlicense/networking/request/Quality;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/contentlicense/networking/request/DrmType;Z)Lio/reactivex/Single;
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


# instance fields
.field final synthetic $customerId:Lcom/audible/mobile/domain/CustomerId;

.field final synthetic this$0:Lcom/audible/license/repository/acls/VoucherFetcherImpl;


# direct methods
.method constructor <init>(Lcom/audible/license/repository/acls/VoucherFetcherImpl;Lcom/audible/mobile/domain/CustomerId;)V
    .locals 0

    iput-object p1, p0, Lcom/audible/license/repository/acls/VoucherFetcherImpl$getContentLicense$1;->this$0:Lcom/audible/license/repository/acls/VoucherFetcherImpl;

    iput-object p2, p0, Lcom/audible/license/repository/acls/VoucherFetcherImpl$getContentLicense$1;->$customerId:Lcom/audible/mobile/domain/CustomerId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p1, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;

    invoke-virtual {p0, p1}, Lcom/audible/license/repository/acls/VoucherFetcherImpl$getContentLicense$1;->apply(Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;)Lkotlin/Triple;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;)Lkotlin/Triple;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;",
            ")",
            "Lkotlin/Triple<",
            "Lcom/audible/license/repository/db/VoucherMetadata;",
            "Lcom/audible/license/model/EncryptedVoucher;",
            "Lcom/audible/license/model/ExtraContentLicenseInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "contentLicenseResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/audible/license/repository/acls/VoucherFetcherImpl$getContentLicense$1;->this$0:Lcom/audible/license/repository/acls/VoucherFetcherImpl;

    invoke-static {v0}, Lcom/audible/license/repository/acls/VoucherFetcherImpl;->access$getContentLicenseResponseParser$p(Lcom/audible/license/repository/acls/VoucherFetcherImpl;)Lcom/audible/license/util/ContentLicenseResponseParser;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/license/repository/acls/VoucherFetcherImpl$getContentLicense$1;->$customerId:Lcom/audible/mobile/domain/CustomerId;

    invoke-virtual {v0, p1, v1}, Lcom/audible/license/util/ContentLicenseResponseParser;->parse$audible_android_cdn_release(Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;Lcom/audible/mobile/domain/CustomerId;)Lkotlin/Triple;

    move-result-object p1

    return-object p1
.end method
