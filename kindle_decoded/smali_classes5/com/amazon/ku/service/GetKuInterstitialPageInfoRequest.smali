.class public Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest;
.super Lcom/amazon/bookwizard/http/GsonRequest;
.source "GetKuInterstitialPageInfoRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest$CallbackWrapper;,
        Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest$RequestBody;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/bookwizard/http/GsonRequest<",
        "Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest$RequestBody;",
        "Lcom/amazon/ku/data/KuInterstitialPageInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final OP_KU_INTERSTITIAL_PAGE_INFO:Ljava/lang/String; = "GetKuInterstitialPageInfo"


# instance fields
.field private final deviceInformation:Lcom/amazon/kindle/krx/application/IDeviceInformation;

.field private final metric:Lcom/amazon/ku/metrics/Metric;


# direct methods
.method public constructor <init>(Lcom/amazon/ku/service/ResponseListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ku/service/ResponseListener<",
            "Lcom/amazon/ku/data/KuInterstitialPageInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "GetKuInterstitialPageInfo"

    .line 35
    invoke-static {v0}, Lcom/amazon/bookwizard/service/SarsRequest;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest$RequestBody;

    invoke-direct {v3}, Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest$RequestBody;-><init>()V

    const-class v4, Lcom/amazon/ku/data/KuInterstitialPageInfo;

    new-instance v5, Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest$CallbackWrapper;

    const/4 v0, 0x0

    invoke-direct {v5, p1, v0}, Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest$CallbackWrapper;-><init>(Lcom/amazon/ku/service/ResponseListener;Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest$1;)V

    new-instance v6, Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest$CallbackWrapper;

    invoke-direct {v6, p1, v0}, Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest$CallbackWrapper;-><init>(Lcom/amazon/ku/service/ResponseListener;Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest$1;)V

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/bookwizard/http/GsonRequest;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 37
    invoke-static {}, Lcom/amazon/ku/KuConversionPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest;->deviceInformation:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    .line 38
    new-instance p1, Lcom/amazon/ku/metrics/Metric;

    const-string v0, "GsonDownloadRequestOperation"

    invoke-direct {p1, v0}, Lcom/amazon/ku/metrics/Metric;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest;->metric:Lcom/amazon/ku/metrics/Metric;

    .line 39
    invoke-direct {p0}, Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest;->getMetricTimerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/ku/metrics/Metric;->startTimer(Ljava/lang/String;)V

    return-void
.end method

.method private getMetricErrorName()Ljava/lang/String;
    .locals 1

    const-string v0, "GetKuInterstitialPageInfoFailure"

    return-object v0
.end method

.method private getMetricSuccessName()Ljava/lang/String;
    .locals 1

    const-string v0, "GetKuInterstitialPageInfoSuccess"

    return-object v0
.end method

.method private getMetricSuccessRateName()Ljava/lang/String;
    .locals 1

    const-string v0, "GetKuInterstitialPageInfoSuccessRate"

    return-object v0
.end method

.method private getMetricTimerName()Ljava/lang/String;
    .locals 1

    const-string v0, "GetKuInterstitialPageInfoTime"

    return-object v0
.end method


# virtual methods
.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest;->metric:Lcom/amazon/ku/metrics/Metric;

    invoke-direct {p0}, Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest;->getMetricErrorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/ku/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest;->metric:Lcom/amazon/ku/metrics/Metric;

    invoke-direct {p0}, Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest;->getMetricSuccessRateName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ku/metrics/Metric;->setCount(Ljava/lang/String;I)V

    .line 96
    iget-object v0, p0, Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest;->metric:Lcom/amazon/ku/metrics/Metric;

    invoke-virtual {v0}, Lcom/amazon/ku/metrics/Metric;->close()V

    .line 97
    invoke-super {p0, p1}, Lcom/android/volley/Request;->deliverError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method protected bridge synthetic deliverResponse(Lcom/amazon/bookwizard/http/IWithHeaders;)V
    .locals 0

    .line 29
    check-cast p1, Lcom/amazon/ku/data/KuInterstitialPageInfo;

    invoke-virtual {p0, p1}, Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest;->deliverResponse(Lcom/amazon/ku/data/KuInterstitialPageInfo;)V

    return-void
.end method

.method protected deliverResponse(Lcom/amazon/ku/data/KuInterstitialPageInfo;)V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest;->metric:Lcom/amazon/ku/metrics/Metric;

    invoke-direct {p0}, Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest;->getMetricSuccessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/ku/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest;->metric:Lcom/amazon/ku/metrics/Metric;

    invoke-direct {p0}, Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest;->getMetricSuccessRateName()Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/amazon/ku/metrics/Metric;->setCount(Ljava/lang/String;I)V

    .line 85
    iget-object v0, p0, Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest;->metric:Lcom/amazon/ku/metrics/Metric;

    invoke-virtual {v0}, Lcom/amazon/ku/metrics/Metric;->close()V

    .line 86
    invoke-super {p0, p1}, Lcom/amazon/bookwizard/http/GsonRequest;->deliverResponse(Lcom/amazon/bookwizard/http/IWithHeaders;)V

    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Lcom/amazon/ku/data/KuInterstitialPageInfo;

    invoke-virtual {p0, p1}, Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest;->deliverResponse(Lcom/amazon/ku/data/KuInterstitialPageInfo;)V

    return-void
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 47
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 48
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/ebook/util/text/LanguageTag;->toLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Accept-Language"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v1, p0, Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest;->deviceInformation:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    invoke-static {v1}, Lcom/amazon/bookwizard/util/BookWizardUtil;->getCookieString(Lcom/amazon/kindle/krx/application/IDeviceInformation;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cookie"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response<",
            "Lcom/amazon/ku/data/KuInterstitialPageInfo;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest;->metric:Lcom/amazon/ku/metrics/Metric;

    invoke-direct {p0}, Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest;->getMetricTimerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/ku/metrics/Metric;->stopTimer(Ljava/lang/String;)V

    .line 75
    invoke-super {p0, p1}, Lcom/amazon/bookwizard/http/GsonRequest;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1
.end method
