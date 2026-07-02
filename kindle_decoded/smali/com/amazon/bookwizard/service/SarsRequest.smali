.class public abstract Lcom/amazon/bookwizard/service/SarsRequest;
.super Lcom/amazon/bookwizard/http/GsonRequest;
.source "SarsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T::",
        "Lcom/amazon/bookwizard/http/IWithHeaders;",
        ">",
        "Lcom/amazon/bookwizard/http/GsonRequest<",
        "TS;TT;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_ENDPOINT:Ljava/lang/String; = "https://sars.amazon.com/bookwizard/%s"

.field private static final ENDPOINTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final GAMMA_ENDPOINT:Ljava/lang/String; = "https://star-actions-relay-service-gamma.amazon.com/bookwizard/%s"

.field private static final OP:Ljava/lang/String; = "SarsOperation"


# instance fields
.field private final di:Lcom/amazon/kindle/krx/application/IDeviceInformation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/amazon/bookwizard/service/SarsRequest$1;

    invoke-direct {v0}, Lcom/amazon/bookwizard/service/SarsRequest$1;-><init>()V

    sput-object v0, Lcom/amazon/bookwizard/service/SarsRequest;->ENDPOINTS:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/application/IDeviceInformation;",
            "Ljava/lang/String;",
            "TS;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/volley/Response$Listener<",
            "TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 87
    invoke-static {p2}, Lcom/amazon/bookwizard/service/SarsRequest;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/bookwizard/http/GsonRequest;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 89
    iput-object p1, p0, Lcom/amazon/bookwizard/service/SarsRequest;->di:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    return-void
.end method

.method constructor <init>(Lcom/google/gson/Gson;Lcom/amazon/kindle/krx/application/IDeviceInformation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Lcom/amazon/kindle/krx/application/IDeviceInformation;",
            "Ljava/lang/String;",
            "TS;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/volley/Response$Listener<",
            "TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 109
    invoke-static {p3}, Lcom/amazon/bookwizard/service/SarsRequest;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/amazon/bookwizard/http/GsonRequest;-><init>(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 111
    iput-object p2, p0, Lcom/amazon/bookwizard/service/SarsRequest;->di:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    return-void
.end method

.method public static getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 122
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 123
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    .line 124
    sget-object v1, Lcom/amazon/bookwizard/service/SarsRequest;->ENDPOINTS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/amazon/bookwizard/service/SarsRequest;->ENDPOINTS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "https://sars.amazon.com/bookwizard/%s"

    .line 125
    :goto_0
    sget-boolean v1, Lcom/amazon/bookwizard/util/BookWizardUtil;->useGamma:Z

    if-eqz v1, :cond_1

    const-string v0, "https://star-actions-relay-service-gamma.amazon.com/bookwizard/%s"

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 3

    .line 169
    invoke-virtual {p0}, Lcom/amazon/bookwizard/service/SarsRequest;->getMetricErrorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SarsOperation"

    invoke-static {v1, v0}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/amazon/bookwizard/service/SarsRequest;->getMetricSuccessRateName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;I)V

    .line 172
    invoke-super {p0, p1}, Lcom/android/volley/Request;->deliverError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method protected deliverResponse(Lcom/amazon/bookwizard/http/IWithHeaders;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lcom/amazon/bookwizard/service/SarsRequest;->getMetricSuccessName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SarsOperation"

    invoke-static {v1, v0}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/amazon/bookwizard/service/SarsRequest;->getMetricSuccessRateName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;I)V

    .line 157
    invoke-super {p0, p1}, Lcom/amazon/bookwizard/http/GsonRequest;->deliverResponse(Lcom/amazon/bookwizard/http/IWithHeaders;)V

    .line 159
    instance-of v0, p1, Lcom/amazon/bookwizard/service/SarsResponse;

    if-eqz v0, :cond_0

    .line 160
    check-cast p1, Lcom/amazon/bookwizard/service/SarsResponse;

    invoke-interface {p1}, Lcom/amazon/bookwizard/service/SarsResponse;->getRunningState()Lcom/amazon/bookwizard/service/State;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/bookwizard/BookWizardPlugin;->setRunningState(Lcom/amazon/bookwizard/service/State;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Lcom/amazon/bookwizard/http/IWithHeaders;

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/service/SarsRequest;->deliverResponse(Lcom/amazon/bookwizard/http/IWithHeaders;)V

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

    .line 133
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 134
    invoke-static {}, Lcom/amazon/ebook/util/text/LanguageTag;->getDefault()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Accept-Language"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v1, p0, Lcom/amazon/bookwizard/service/SarsRequest;->di:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    invoke-static {v1}, Lcom/amazon/bookwizard/util/BookWizardUtil;->getCookieString(Lcom/amazon/kindle/krx/application/IDeviceInformation;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cookie"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract getMetricErrorName()Ljava/lang/String;
.end method

.method protected abstract getMetricSuccessName()Ljava/lang/String;
.end method

.method protected getMetricSuccessRateName()Ljava/lang/String;
    .locals 2

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazon/bookwizard/service/SarsRequest;->getMetricSuccessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Rate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getMetricTimerName()Ljava/lang/String;
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response<",
            "TT;>;"
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lcom/amazon/bookwizard/service/SarsRequest;->getMetricTimerName()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/volley/NetworkResponse;->networkTimeMs:J

    const-string v3, "SarsOperation"

    invoke-static {v3, v0, v1, v2}, Lcom/amazon/bookwizard/util/M;->timer(Ljava/lang/String;Ljava/lang/String;J)V

    .line 146
    invoke-super {p0, p1}, Lcom/amazon/bookwizard/http/GsonRequest;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1
.end method
