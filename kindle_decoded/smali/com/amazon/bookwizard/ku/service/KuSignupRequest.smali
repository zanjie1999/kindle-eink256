.class public Lcom/amazon/bookwizard/ku/service/KuSignupRequest;
.super Lcom/amazon/bookwizard/http/GsonRequest;
.source "KuSignupRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/ku/service/KuSignupRequest$CallbackWrapper;,
        Lcom/amazon/bookwizard/ku/service/KuSignupRequest$Callback;,
        Lcom/amazon/bookwizard/ku/service/KuSignupRequest$KuSignupResponse;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/bookwizard/http/GsonRequest<",
        "Ljava/lang/Void;",
        "Lcom/amazon/bookwizard/ku/service/KuSignupRequest$KuSignupResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final OP:Ljava/lang/String; = "KindleUnlimitedOperation"

.field private static final URL:Ljava/lang/String; = "https://%s/ku/api/subscribe.html?programName=KINDLE_UNLIMITED&channelName=ALL_YOU_CAN_READ&planType=MONTHLY&clientId=BookWizard&apiVersion=1.0&deviceTypeId=%s"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/amazon/bookwizard/ku/service/KuSignupRequest$Callback;)V
    .locals 6

    .line 55
    invoke-static {p2}, Lcom/amazon/bookwizard/ku/service/KuSignupRequest;->getUrl(Lcom/amazon/kindle/krx/application/IDeviceInformation;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/amazon/bookwizard/ku/service/KuSignupRequest$KuSignupResponse;

    invoke-static {p2}, Lcom/amazon/bookwizard/ku/service/KuSignupRequest;->getAuthHeaders(Lcom/amazon/kindle/krx/application/IDeviceInformation;)Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/amazon/bookwizard/ku/service/KuSignupRequest$CallbackWrapper;

    const/4 p2, 0x0

    invoke-direct {v4, p1, p3, p2}, Lcom/amazon/bookwizard/ku/service/KuSignupRequest$CallbackWrapper;-><init>(Landroid/content/Context;Lcom/amazon/bookwizard/ku/service/KuSignupRequest$Callback;Lcom/amazon/bookwizard/ku/service/KuSignupRequest$1;)V

    new-instance v5, Lcom/amazon/bookwizard/ku/service/KuSignupRequest$CallbackWrapper;

    invoke-direct {v5, p1, p3, p2}, Lcom/amazon/bookwizard/ku/service/KuSignupRequest$CallbackWrapper;-><init>(Landroid/content/Context;Lcom/amazon/bookwizard/ku/service/KuSignupRequest$Callback;Lcom/amazon/bookwizard/ku/service/KuSignupRequest$1;)V

    move-object v0, p0

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

    .line 77
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    .line 78
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {}, Lcom/amazon/ebook/util/text/LanguageTag;->getDefault()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Accept-Language"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
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

    .line 66
    invoke-static {}, Lcom/amazon/bookwizard/util/BookWizardUtil;->getStoreHostname()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getDeviceType()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "https://%s/ku/api/subscribe.html?programName=KINDLE_UNLIMITED&channelName=ALL_YOU_CAN_READ&planType=MONTHLY&clientId=BookWizard&apiVersion=1.0&deviceTypeId=%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 3

    const-string v0, "KindleUnlimitedOperation"

    const-string v1, "MonthlySignupFailure"

    .line 111
    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MonthlySignupSuccessRate"

    const/4 v2, 0x0

    .line 112
    invoke-static {v0, v1, v2}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;I)V

    .line 114
    invoke-super {p0, p1}, Lcom/android/volley/Request;->deliverError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method protected bridge synthetic deliverResponse(Lcom/amazon/bookwizard/http/IWithHeaders;)V
    .locals 0

    .line 40
    check-cast p1, Lcom/amazon/bookwizard/ku/service/KuSignupRequest$KuSignupResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/ku/service/KuSignupRequest;->deliverResponse(Lcom/amazon/bookwizard/ku/service/KuSignupRequest$KuSignupResponse;)V

    return-void
.end method

.method protected deliverResponse(Lcom/amazon/bookwizard/ku/service/KuSignupRequest$KuSignupResponse;)V
    .locals 3

    const-string v0, "KindleUnlimitedOperation"

    const-string v1, "MonthlySignupSuccess"

    .line 100
    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MonthlySignupSuccessRate"

    const/4 v2, 0x1

    .line 101
    invoke-static {v0, v1, v2}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    invoke-super {p0, p1}, Lcom/amazon/bookwizard/http/GsonRequest;->deliverResponse(Lcom/amazon/bookwizard/http/IWithHeaders;)V

    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p1, Lcom/amazon/bookwizard/ku/service/KuSignupRequest$KuSignupResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/ku/service/KuSignupRequest;->deliverResponse(Lcom/amazon/bookwizard/ku/service/KuSignupRequest$KuSignupResponse;)V

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
            "Lcom/amazon/bookwizard/ku/service/KuSignupRequest$KuSignupResponse;",
            ">;"
        }
    .end annotation

    .line 89
    iget-wide v0, p1, Lcom/android/volley/NetworkResponse;->networkTimeMs:J

    const-string v2, "KindleUnlimitedOperation"

    const-string v3, "MonthlySignupTime"

    invoke-static {v2, v3, v0, v1}, Lcom/amazon/bookwizard/util/M;->timer(Ljava/lang/String;Ljava/lang/String;J)V

    .line 91
    invoke-super {p0, p1}, Lcom/amazon/bookwizard/http/GsonRequest;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1
.end method
