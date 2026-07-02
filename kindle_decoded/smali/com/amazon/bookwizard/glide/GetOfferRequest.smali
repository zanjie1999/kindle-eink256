.class public Lcom/amazon/bookwizard/glide/GetOfferRequest;
.super Lcom/amazon/bookwizard/http/GsonRequest;
.source "GetOfferRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/bookwizard/http/GsonRequest<",
        "Ljava/lang/Void;",
        "Lcom/amazon/bookwizard/glide/AsinOffer;",
        ">;"
    }
.end annotation


# static fields
.field private static final OP:Ljava/lang/String; = "GlideOperation"

.field private static final PATH:Ljava/lang/String; = "/gp/kindle/public/getOffer/v2.html"


# instance fields
.field private final di:Lcom/amazon/kindle/krx/application/IDeviceInformation;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/application/IDeviceInformation;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Lcom/amazon/bookwizard/glide/AsinOffer;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-static {p2}, Lcom/amazon/bookwizard/glide/GetOfferRequest;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class v0, Lcom/amazon/bookwizard/glide/AsinOffer;

    invoke-direct {p0, p2, v0, p3, p4}, Lcom/amazon/bookwizard/http/GsonRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 66
    iput-object p1, p0, Lcom/amazon/bookwizard/glide/GetOfferRequest;->di:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Ljava/lang/String;Lcom/android/volley/toolbox/RequestFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/application/IDeviceInformation;",
            "Ljava/lang/String;",
            "Lcom/android/volley/toolbox/RequestFuture<",
            "Lcom/amazon/bookwizard/glide/AsinOffer;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2, p3, p3}, Lcom/amazon/bookwizard/glide/GetOfferRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method private static getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "https"

    .line 78
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 79
    invoke-static {}, Lcom/amazon/bookwizard/util/BookWizardUtil;->getStoreHostname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/gp/kindle/public/getOffer/v2.html"

    .line 80
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "asin"

    .line 81
    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 82
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 3

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetOfferFailure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/android/volley/NetworkResponse;->statusCode:I

    add-int/lit8 v1, v1, 0x2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlideOperation"

    invoke-static {v1, v0}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "GetOfferSuccessRate"

    .line 124
    invoke-static {v1, v2, v0}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;I)V

    .line 126
    invoke-super {p0, p1}, Lcom/android/volley/Request;->deliverError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method protected deliverResponse(Lcom/amazon/bookwizard/glide/AsinOffer;)V
    .locals 3

    const-string v0, "GlideOperation"

    const-string v1, "GetOfferSuccess"

    .line 112
    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "GetOfferSuccessRate"

    const/4 v2, 0x1

    .line 113
    invoke-static {v0, v1, v2}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;I)V

    .line 115
    invoke-super {p0, p1}, Lcom/amazon/bookwizard/http/GsonRequest;->deliverResponse(Lcom/amazon/bookwizard/http/IWithHeaders;)V

    return-void
.end method

.method protected bridge synthetic deliverResponse(Lcom/amazon/bookwizard/http/IWithHeaders;)V
    .locals 0

    .line 33
    check-cast p1, Lcom/amazon/bookwizard/glide/AsinOffer;

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/glide/GetOfferRequest;->deliverResponse(Lcom/amazon/bookwizard/glide/AsinOffer;)V

    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Lcom/amazon/bookwizard/glide/AsinOffer;

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/glide/GetOfferRequest;->deliverResponse(Lcom/amazon/bookwizard/glide/AsinOffer;)V

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

    .line 90
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    .line 91
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {}, Lcom/amazon/ebook/util/text/LanguageTag;->getDefault()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Accept-Language"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v1, p0, Lcom/amazon/bookwizard/glide/GetOfferRequest;->di:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    invoke-static {v1}, Lcom/amazon/bookwizard/util/BookWizardUtil;->getCookieString(Lcom/amazon/kindle/krx/application/IDeviceInformation;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cookie"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response<",
            "Lcom/amazon/bookwizard/glide/AsinOffer;",
            ">;"
        }
    .end annotation

    .line 102
    iget-wide v0, p1, Lcom/android/volley/NetworkResponse;->networkTimeMs:J

    const-string v2, "GlideOperation"

    const-string v3, "GetOfferTime"

    invoke-static {v2, v3, v0, v1}, Lcom/amazon/bookwizard/util/M;->timer(Ljava/lang/String;Ljava/lang/String;J)V

    .line 104
    invoke-super {p0, p1}, Lcom/amazon/bookwizard/http/GsonRequest;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1
.end method
