.class public Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest;
.super Lcom/amazon/ku/service/GsonDownloadRequest;
.source "KuSubscriptionInfoDownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest$KuSubscriptionInfoResponse;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/ku/service/GsonDownloadRequest<",
        "Ljava/lang/Object;",
        "Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest$KuSubscriptionInfoResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final OP_GET_KU_SUB_INFO:Ljava/lang/String; = "GetKuSubscriptionInfo"

.field private static final TAG:Ljava/lang/String; = "com.amazon.ku.service.KuSubscriptionInfoDownloadRequest"


# instance fields
.field private final listener:Lcom/amazon/ku/service/ResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/ku/service/ResponseListener<",
            "Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest$KuSubscriptionInfoResponse;",
            ">;"
        }
    .end annotation
.end field

.field private response:Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest$KuSubscriptionInfoResponse;


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
            "Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest$KuSubscriptionInfoResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "GetKuSubscriptionInfo"

    .line 29
    invoke-static {v0}, Lcom/amazon/bookwizard/service/SarsRequest;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    const-class v6, Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest$KuSubscriptionInfoResponse;

    const-string v3, "POST"

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/ku/service/GsonDownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 30
    iput-object p1, p0, Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest;->listener:Lcom/amazon/ku/service/ResponseListener;

    return-void
.end method


# virtual methods
.method protected getMetricErrorName()Ljava/lang/String;
    .locals 1

    const-string v0, "GetKuSubscriptionInfoFailure"

    return-object v0
.end method

.method protected getMetricSuccessName()Ljava/lang/String;
    .locals 1

    const-string v0, "GetKuSubscriptionInfoSuccess"

    return-object v0
.end method

.method protected getMetricSuccessRateName()Ljava/lang/String;
    .locals 1

    const-string v0, "GetKuSubscriptionInfoSuccessRate"

    return-object v0
.end method

.method protected getMetricTimerName()Ljava/lang/String;
    .locals 1

    const-string v0, "GetKuSubscriptionInfoTime"

    return-object v0
.end method

.method public onDownloadComplete(ILcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
    .locals 1

    .line 46
    invoke-super {p0, p1, p2}, Lcom/amazon/ku/service/GsonDownloadRequest;->onDownloadComplete(ILcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V

    .line 47
    iget-object p1, p0, Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest;->listener:Lcom/amazon/ku/service/ResponseListener;

    if-eqz p1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest;->response:Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest$KuSubscriptionInfoResponse;

    invoke-interface {p1, v0, p2}, Lcom/amazon/ku/service/ResponseListener;->onResponse(Ljava/lang/Object;Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V

    :cond_0
    return-void
.end method

.method public onInputStream(Ljava/io/InputStream;)V
    .locals 2

    .line 38
    invoke-virtual {p0, p1}, Lcom/amazon/ku/service/GsonDownloadRequest;->parseJsonInputStream(Ljava/io/InputStream;)Lcom/amazon/bookwizard/http/IWithHeaders;

    move-result-object p1

    check-cast p1, Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest$KuSubscriptionInfoResponse;

    iput-object p1, p0, Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest;->response:Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest$KuSubscriptionInfoResponse;

    .line 39
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 40
    sget-object p1, Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest;->response:Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest$KuSubscriptionInfoResponse;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest$KuSubscriptionInfoResponse;->getSubscriptions()Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
