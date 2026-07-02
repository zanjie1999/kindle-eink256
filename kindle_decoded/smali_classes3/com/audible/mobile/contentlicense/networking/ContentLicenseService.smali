.class public interface abstract Lcom/audible/mobile/contentlicense/networking/ContentLicenseService;
.super Ljava/lang/Object;
.source "ContentLicenseService.kt"


# virtual methods
.method public abstract getContentLicense(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/contentlicense/networking/request/ContentLicenseRequest;)Lio/reactivex/Single;
    .param p1    # Lcom/audible/mobile/domain/Asin;
        .annotation runtime Lretrofit2/http/Path;
            value = "asin"
        .end annotation
    .end param
    .param p2    # Lcom/audible/mobile/contentlicense/networking/request/ContentLicenseRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/audible/mobile/contentlicense/networking/request/ContentLicenseRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept-Charset: utf-8",
            "Accept: application/json"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "content/{asin}/licenserequest"
    .end annotation
.end method
