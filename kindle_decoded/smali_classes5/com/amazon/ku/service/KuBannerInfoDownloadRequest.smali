.class public Lcom/amazon/ku/service/KuBannerInfoDownloadRequest;
.super Lcom/amazon/ku/service/GsonDownloadRequest;
.source "KuBannerInfoDownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ku/service/KuBannerInfoDownloadRequest$KuBannerInfoRequestBody;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/ku/service/GsonDownloadRequest<",
        "Lcom/amazon/ku/service/KuBannerInfoDownloadRequest$KuBannerInfoRequestBody;",
        "Lcom/amazon/ku/data/KuBannerInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final OP_GET_KU_BANNER_INFO:Ljava/lang/String; = "GetKuBannerInfo"

.field private static final TAG:Ljava/lang/String; = "com.amazon.ku.service.KuBannerInfoDownloadRequest"


# instance fields
.field private final listener:Lcom/amazon/ku/service/ResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/ku/service/ResponseListener<",
            "Lcom/amazon/ku/data/KuBannerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private response:Lcom/amazon/ku/data/KuBannerInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ku/service/ResponseListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ku/service/ResponseListener<",
            "Lcom/amazon/ku/data/KuBannerInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "GetKuBannerInfo"

    .line 33
    invoke-static {v0}, Lcom/amazon/bookwizard/service/SarsRequest;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/amazon/ku/service/KuBannerInfoDownloadRequest$KuBannerInfoRequestBody;

    .line 34
    invoke-static {}, Lcom/amazon/ku/ScreenSize;->getScreenSize()Lcom/amazon/ku/ScreenSize;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/amazon/ku/service/KuBannerInfoDownloadRequest$KuBannerInfoRequestBody;-><init>(Lcom/amazon/ku/ScreenSize;)V

    const-class v6, Lcom/amazon/ku/data/KuBannerInfo;

    const-string v3, "POST"

    const/4 v4, 0x0

    move-object v1, p0

    .line 33
    invoke-direct/range {v1 .. v6}, Lcom/amazon/ku/service/GsonDownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 35
    iput-object p1, p0, Lcom/amazon/ku/service/KuBannerInfoDownloadRequest;->listener:Lcom/amazon/ku/service/ResponseListener;

    return-void
.end method


# virtual methods
.method protected getMetricErrorName()Ljava/lang/String;
    .locals 1

    const-string v0, "GetKuBannerInfoFailure"

    return-object v0
.end method

.method protected getMetricSuccessName()Ljava/lang/String;
    .locals 1

    const-string v0, "GetKuBannerInfoSuccess"

    return-object v0
.end method

.method protected getMetricSuccessRateName()Ljava/lang/String;
    .locals 1

    const-string v0, "GetKuBannerInfoSuccessRate"

    return-object v0
.end method

.method protected getMetricTimerName()Ljava/lang/String;
    .locals 1

    const-string v0, "GetKuBannerInfoTime"

    return-object v0
.end method

.method public onDownloadComplete(ILcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
    .locals 1

    .line 68
    invoke-super {p0, p1, p2}, Lcom/amazon/ku/service/GsonDownloadRequest;->onDownloadComplete(ILcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V

    .line 69
    iget-object p1, p0, Lcom/amazon/ku/service/KuBannerInfoDownloadRequest;->listener:Lcom/amazon/ku/service/ResponseListener;

    if-eqz p1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/amazon/ku/service/KuBannerInfoDownloadRequest;->response:Lcom/amazon/ku/data/KuBannerInfo;

    invoke-interface {p1, v0, p2}, Lcom/amazon/ku/service/ResponseListener;->onResponse(Ljava/lang/Object;Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V

    :cond_0
    return-void
.end method

.method public onInputStream(Ljava/io/InputStream;)V
    .locals 2

    .line 60
    invoke-virtual {p0, p1}, Lcom/amazon/ku/service/GsonDownloadRequest;->parseJsonInputStream(Ljava/io/InputStream;)Lcom/amazon/bookwizard/http/IWithHeaders;

    move-result-object p1

    check-cast p1, Lcom/amazon/ku/data/KuBannerInfo;

    iput-object p1, p0, Lcom/amazon/ku/service/KuBannerInfoDownloadRequest;->response:Lcom/amazon/ku/data/KuBannerInfo;

    .line 61
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    sget-object p1, Lcom/amazon/ku/service/KuBannerInfoDownloadRequest;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ku/service/KuBannerInfoDownloadRequest;->response:Lcom/amazon/ku/data/KuBannerInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
