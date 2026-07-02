.class Lcom/audible/cdn/voucher/download/VoucherFetcher$3;
.super Ljava/lang/Object;
.source "VoucherFetcher.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/cdn/voucher/download/VoucherFetcher;->fetchVoucher(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/contentlicense/networking/request/Quality;Lcom/audible/mobile/domain/ACR;Ljava/lang/String;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Throwable;",
        "Lio/reactivex/SingleSource<",
        "Lcom/audible/license/model/DownloadMetadata;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/audible/cdn/voucher/download/VoucherFetcher;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Throwable;)Lio/reactivex/SingleSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lio/reactivex/SingleSource<",
            "Lcom/audible/license/model/DownloadMetadata;",
            ">;"
        }
    .end annotation

    .line 165
    instance-of v0, p1, Lretrofit2/HttpException;

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Lcom/audible/license/exceptions/ContentLicenseHttpException;

    check-cast p1, Lretrofit2/HttpException;

    invoke-direct {v0, p1}, Lcom/audible/license/exceptions/ContentLicenseHttpException;-><init>(Lretrofit2/HttpException;)V

    invoke-static {v0}, Lio/reactivex/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 168
    :cond_0
    invoke-static {p1}, Lio/reactivex/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 162
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/audible/cdn/voucher/download/VoucherFetcher$3;->apply(Ljava/lang/Throwable;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
