.class public Lcom/amazon/bookwizard/ku/service/KuEligibilityRequest;
.super Lcom/amazon/bookwizard/http/GsonRequest;
.source "KuEligibilityRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/ku/service/KuEligibilityRequest$KuEligibilityResponse;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/bookwizard/http/GsonRequest<",
        "Ljava/lang/Void;",
        "Lcom/amazon/bookwizard/ku/service/KuEligibilityRequest$KuEligibilityResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final OP:Ljava/lang/String; = "KindleUnlimitedOperation"

.field private static final URL:Ljava/lang/String; = "https://%s/ku/api/isEligibleToSubscribe.html?programName=KINDLE_UNLIMITED&channelName=ALL_YOU_CAN_READ&planType=%s&clientId=BookWizard&apiVersion=1.0&deviceTypeId=%s"


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/amazon/bookwizard/ku/service/PlanType;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/application/IDeviceInformation;",
            "Lcom/amazon/bookwizard/ku/service/PlanType;",
            "Lcom/android/volley/Response$Listener<",
            "Lcom/amazon/bookwizard/ku/service/KuEligibilityRequest$KuEligibilityResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 63
    invoke-static {p1, p2}, Lcom/amazon/bookwizard/ku/service/KuEligibilityRequest;->getUrl(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/amazon/bookwizard/ku/service/PlanType;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/amazon/bookwizard/ku/service/KuEligibilityRequest$KuEligibilityResponse;

    invoke-static {p1}, Lcom/amazon/bookwizard/ku/service/KuEligibilityRequest;->getAuthHeaders(Lcom/amazon/kindle/krx/application/IDeviceInformation;)Ljava/util/Map;

    move-result-object v3

    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/bookwizard/http/GsonRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/amazon/bookwizard/ku/service/PlanType;Lcom/android/volley/toolbox/RequestFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/application/IDeviceInformation;",
            "Lcom/amazon/bookwizard/ku/service/PlanType;",
            "Lcom/android/volley/toolbox/RequestFuture<",
            "Lcom/amazon/bookwizard/ku/service/KuEligibilityRequest$KuEligibilityResponse;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2, p3, p3}, Lcom/amazon/bookwizard/ku/service/KuEligibilityRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/amazon/bookwizard/ku/service/PlanType;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

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

    .line 87
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    .line 88
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {}, Lcom/amazon/ebook/util/text/LanguageTag;->getDefault()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Accept-Language"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {p0}, Lcom/amazon/bookwizard/util/BookWizardUtil;->getCookieString(Lcom/amazon/kindle/krx/application/IDeviceInformation;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Cookie"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static getUrl(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/amazon/bookwizard/ku/service/PlanType;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 76
    invoke-static {}, Lcom/amazon/bookwizard/util/BookWizardUtil;->getStoreHostname()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/amazon/bookwizard/ku/service/PlanType;->getId()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-interface {p0}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getDeviceType()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v0, p1

    const-string p0, "https://%s/ku/api/isEligibleToSubscribe.html?programName=KINDLE_UNLIMITED&channelName=ALL_YOU_CAN_READ&planType=%s&clientId=BookWizard&apiVersion=1.0&deviceTypeId=%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 3

    const-string v0, "KindleUnlimitedOperation"

    const-string v1, "EligbilityFailure"

    .line 120
    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "EligibilitySuccessRate"

    const/4 v2, 0x0

    .line 121
    invoke-static {v0, v1, v2}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;I)V

    .line 123
    invoke-super {p0, p1}, Lcom/android/volley/Request;->deliverError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method protected bridge synthetic deliverResponse(Lcom/amazon/bookwizard/http/IWithHeaders;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/amazon/bookwizard/ku/service/KuEligibilityRequest$KuEligibilityResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/ku/service/KuEligibilityRequest;->deliverResponse(Lcom/amazon/bookwizard/ku/service/KuEligibilityRequest$KuEligibilityResponse;)V

    return-void
.end method

.method protected deliverResponse(Lcom/amazon/bookwizard/ku/service/KuEligibilityRequest$KuEligibilityResponse;)V
    .locals 3

    const-string v0, "KindleUnlimitedOperation"

    const-string v1, "EligibilitySuccess"

    .line 109
    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "EligibilitySuccessRate"

    const/4 v2, 0x1

    .line 110
    invoke-static {v0, v1, v2}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;I)V

    .line 112
    invoke-super {p0, p1}, Lcom/amazon/bookwizard/http/GsonRequest;->deliverResponse(Lcom/amazon/bookwizard/http/IWithHeaders;)V

    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/amazon/bookwizard/ku/service/KuEligibilityRequest$KuEligibilityResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/ku/service/KuEligibilityRequest;->deliverResponse(Lcom/amazon/bookwizard/ku/service/KuEligibilityRequest$KuEligibilityResponse;)V

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
            "Lcom/amazon/bookwizard/ku/service/KuEligibilityRequest$KuEligibilityResponse;",
            ">;"
        }
    .end annotation

    .line 99
    iget-wide v0, p1, Lcom/android/volley/NetworkResponse;->networkTimeMs:J

    const-string v2, "KindleUnlimitedOperation"

    const-string v3, "EligibilityTime"

    invoke-static {v2, v3, v0, v1}, Lcom/amazon/bookwizard/util/M;->timer(Ljava/lang/String;Ljava/lang/String;J)V

    .line 101
    invoke-super {p0, p1}, Lcom/amazon/bookwizard/http/GsonRequest;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1
.end method
