.class interface abstract Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient$ICustomerStatusDownloader;
.super Ljava/lang/Object;
.source "CustomerStatusDownloadClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ICustomerStatusDownloader"
.end annotation


# virtual methods
.method public abstract getCustomerStatusForBenefitsStatus(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "response_groups"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/audible/hushpuppy/service/user/CustomerStatus;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
    .end annotation
.end method
