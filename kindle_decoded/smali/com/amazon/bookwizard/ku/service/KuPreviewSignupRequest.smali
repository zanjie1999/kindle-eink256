.class public Lcom/amazon/bookwizard/ku/service/KuPreviewSignupRequest;
.super Lcom/amazon/bookwizard/http/GsonRequest;
.source "KuPreviewSignupRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/ku/service/KuPreviewSignupRequest$KuPreviewSignupResponse;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/bookwizard/http/GsonRequest<",
        "Ljava/lang/Void;",
        "Lcom/amazon/bookwizard/ku/service/KuPreviewSignupRequest$KuPreviewSignupResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final OP:Ljava/lang/String; = "KindleUnlimitedOperation"

.field private static final URL:Ljava/lang/String; = "https://%s/ku/api/subscribe.html?programName=KINDLE_UNLIMITED&channelName=ALL_YOU_CAN_READ&planType=FREE_PREVIEW&clientId=BookWizard&apiVersion=1.0&deviceTypeId=%s"


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/application/IDeviceInformation;",
            "Lcom/android/volley/Response$Listener<",
            "Lcom/amazon/bookwizard/ku/service/KuPreviewSignupRequest$KuPreviewSignupResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-static {p1}, Lcom/amazon/bookwizard/ku/service/KuPreviewSignupRequest;->getUrl(Lcom/amazon/kindle/krx/application/IDeviceInformation;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/amazon/bookwizard/ku/service/KuPreviewSignupRequest$KuPreviewSignupResponse;

    invoke-static {p1}, Lcom/amazon/bookwizard/ku/service/KuPreviewSignupRequest;->getAuthHeaders(Lcom/amazon/kindle/krx/application/IDeviceInformation;)Ljava/util/Map;

    move-result-object v3

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/bookwizard/http/GsonRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method private static getAuthHeaders(Lcom/amazon/kindle/krx/application/IDeviceInformation;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/application/IDeviceInformation;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    .line 82
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {}, Lcom/amazon/ebook/util/text/LanguageTag;->getDefault()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Accept-Language"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-static {p0}, Lcom/amazon/bookwizard/util/BookWizardUtil;->getCookieString(Lcom/amazon/kindle/krx/application/IDeviceInformation;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Cookie"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static getUrl(Lcom/amazon/kindle/krx/application/IDeviceInformation;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 70
    invoke-static {}, Lcom/amazon/bookwizard/util/BookWizardUtil;->getStoreHostname()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getDeviceType()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "https://%s/ku/api/subscribe.html?programName=KINDLE_UNLIMITED&channelName=ALL_YOU_CAN_READ&planType=FREE_PREVIEW&clientId=BookWizard&apiVersion=1.0&deviceTypeId=%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 3

    const-string v0, "KindleUnlimitedOperation"

    const-string v1, "PreviewSignupFailure"

    .line 114
    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PreviewSignupSuccessRate"

    const/4 v2, 0x0

    .line 115
    invoke-static {v0, v1, v2}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;I)V

    .line 117
    invoke-super {p0, p1}, Lcom/android/volley/Request;->deliverError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method protected bridge synthetic deliverResponse(Lcom/amazon/bookwizard/http/IWithHeaders;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/amazon/bookwizard/ku/service/KuPreviewSignupRequest$KuPreviewSignupResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/ku/service/KuPreviewSignupRequest;->deliverResponse(Lcom/amazon/bookwizard/ku/service/KuPreviewSignupRequest$KuPreviewSignupResponse;)V

    return-void
.end method

.method protected deliverResponse(Lcom/amazon/bookwizard/ku/service/KuPreviewSignupRequest$KuPreviewSignupResponse;)V
    .locals 3

    const-string v0, "KindleUnlimitedOperation"

    const-string v1, "PreviewSignupSuccess"

    .line 103
    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PreviewSignupSuccessRate"

    const/4 v2, 0x1

    .line 104
    invoke-static {v0, v1, v2}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    invoke-super {p0, p1}, Lcom/amazon/bookwizard/http/GsonRequest;->deliverResponse(Lcom/amazon/bookwizard/http/IWithHeaders;)V

    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/amazon/bookwizard/ku/service/KuPreviewSignupRequest$KuPreviewSignupResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/ku/service/KuPreviewSignupRequest;->deliverResponse(Lcom/amazon/bookwizard/ku/service/KuPreviewSignupRequest$KuPreviewSignupResponse;)V

    return-void
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response<",
            "Lcom/amazon/bookwizard/ku/service/KuPreviewSignupRequest$KuPreviewSignupResponse;",
            ">;"
        }
    .end annotation

    .line 93
    iget-wide v0, p1, Lcom/android/volley/NetworkResponse;->networkTimeMs:J

    const-string v2, "KindleUnlimitedOperation"

    const-string v3, "PreviewSignupTime"

    invoke-static {v2, v3, v0, v1}, Lcom/amazon/bookwizard/util/M;->timer(Ljava/lang/String;Ljava/lang/String;J)V

    .line 95
    invoke-super {p0, p1}, Lcom/amazon/bookwizard/http/GsonRequest;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1
.end method
