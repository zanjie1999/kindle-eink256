.class Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest$CallbackWrapper;
.super Ljava/lang/Object;
.source "GetKuInterstitialPageInfoRequest.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lcom/amazon/ku/data/KuInterstitialPageInfo;",
        ">;",
        "Lcom/android/volley/Response$ErrorListener;"
    }
.end annotation


# instance fields
.field final listener:Lcom/amazon/ku/service/ResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/ku/service/ResponseListener<",
            "Lcom/amazon/ku/data/KuInterstitialPageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/amazon/ku/service/ResponseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ku/service/ResponseListener<",
            "Lcom/amazon/ku/data/KuInterstitialPageInfo;",
            ">;)V"
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest$CallbackWrapper;->listener:Lcom/amazon/ku/service/ResponseListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/ku/service/ResponseListener;Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest$1;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest$CallbackWrapper;-><init>(Lcom/amazon/ku/service/ResponseListener;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 118
    iget-object p1, p0, Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest$CallbackWrapper;->listener:Lcom/amazon/ku/service/ResponseListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 119
    sget-object v1, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->FAILED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    invoke-interface {p1, v0, v1}, Lcom/amazon/ku/service/ResponseListener;->onResponse(Ljava/lang/Object;Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lcom/amazon/ku/data/KuInterstitialPageInfo;)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest$CallbackWrapper;->listener:Lcom/amazon/ku/service/ResponseListener;

    if-eqz v0, :cond_0

    .line 113
    sget-object v1, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    invoke-interface {v0, p1, v1}, Lcom/amazon/ku/service/ResponseListener;->onResponse(Ljava/lang/Object;Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 104
    check-cast p1, Lcom/amazon/ku/data/KuInterstitialPageInfo;

    invoke-virtual {p0, p1}, Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest$CallbackWrapper;->onResponse(Lcom/amazon/ku/data/KuInterstitialPageInfo;)V

    return-void
.end method
