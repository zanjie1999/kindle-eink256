.class final Lcom/audible/license/repository/acls/VoucherFetcherImpl$getContentLicense$2;
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
        "Ljava/lang/Throwable;",
        "Lio/reactivex/SingleSource<",
        "+",
        "Lkotlin/Triple<",
        "+",
        "Lcom/audible/license/repository/db/VoucherMetadata;",
        "+",
        "Lcom/audible/license/model/EncryptedVoucher;",
        "+",
        "Lcom/audible/license/model/ExtraContentLicenseInfo;",
        ">;>;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/audible/license/repository/acls/VoucherFetcherImpl$getContentLicense$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/audible/license/repository/acls/VoucherFetcherImpl$getContentLicense$2;

    invoke-direct {v0}, Lcom/audible/license/repository/acls/VoucherFetcherImpl$getContentLicense$2;-><init>()V

    sput-object v0, Lcom/audible/license/repository/acls/VoucherFetcherImpl$getContentLicense$2;->INSTANCE:Lcom/audible/license/repository/acls/VoucherFetcherImpl$getContentLicense$2;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Throwable;)Lio/reactivex/SingleSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lio/reactivex/SingleSource<",
            "+",
            "Lkotlin/Triple<",
            "Lcom/audible/license/repository/db/VoucherMetadata;",
            "Lcom/audible/license/model/EncryptedVoucher;",
            "Lcom/audible/license/model/ExtraContentLicenseInfo;",
            ">;>;"
        }
    .end annotation

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    instance-of v0, p1, Lretrofit2/HttpException;

    if-eqz v0, :cond_0

    .line 137
    new-instance v0, Lcom/audible/license/exceptions/ContentLicenseHttpException;

    check-cast p1, Lretrofit2/HttpException;

    invoke-direct {v0, p1}, Lcom/audible/license/exceptions/ContentLicenseHttpException;-><init>(Lretrofit2/HttpException;)V

    .line 136
    invoke-static {v0}, Lio/reactivex/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/Single;

    move-result-object p1

    goto :goto_0

    .line 140
    :cond_0
    invoke-static {p1}, Lio/reactivex/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/Single;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/audible/license/repository/acls/VoucherFetcherImpl$getContentLicense$2;->apply(Ljava/lang/Throwable;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
