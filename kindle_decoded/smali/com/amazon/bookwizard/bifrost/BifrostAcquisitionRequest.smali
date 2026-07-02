.class public Lcom/amazon/bookwizard/bifrost/BifrostAcquisitionRequest;
.super Lcom/amazon/bookwizard/http/GsonRequest;
.source "BifrostAcquisitionRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/bifrost/BifrostAcquisitionRequest$AcquisitionResponse;,
        Lcom/amazon/bookwizard/bifrost/BifrostAcquisitionRequest$AcquisitionRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/bookwizard/http/GsonRequest<",
        "Lcom/amazon/bookwizard/bifrost/BifrostAcquisitionRequest$AcquisitionRequest;",
        "Lcom/amazon/bookwizard/bifrost/BifrostAcquisitionRequest$AcquisitionResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final CLIENT_ID:Ljava/lang/String; = "bookwizard"

.field private static final CLIENT_ID_HEADER:Ljava/lang/String; = "x-client-id"

.field private static final OP:Ljava/lang/String; = "BifrostOperation"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Lcom/amazon/bookwizard/bifrost/BifrostAcquisitionRequest$AcquisitionResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-static {p1}, Lcom/amazon/bookwizard/bifrost/BifrostAcquisitionRequest;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amazon/bookwizard/bifrost/BifrostAcquisitionRequest$AcquisitionRequest;

    invoke-direct {v2, p2}, Lcom/amazon/bookwizard/bifrost/BifrostAcquisitionRequest$AcquisitionRequest;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/amazon/bookwizard/bifrost/BifrostAcquisitionRequest$AcquisitionResponse;

    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    .line 48
    invoke-direct/range {v0 .. v5}, Lcom/amazon/bookwizard/http/GsonRequest;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/RequestFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/toolbox/RequestFuture<",
            "Lcom/amazon/bookwizard/bifrost/BifrostAcquisitionRequest$AcquisitionResponse;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2, p3, p3}, Lcom/amazon/bookwizard/bifrost/BifrostAcquisitionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method private static getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 62
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "https"

    .line 63
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 64
    invoke-static {}, Lcom/amazon/bookwizard/util/BookWizardUtil;->getStoreHostname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "/api/bifrost/acquisitions/v1/actions/%s"

    .line 65
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 66
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 3

    .line 117
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

    const-string v1, "BifrostOperation"

    invoke-static {v1, v0}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "GetOfferSuccessRate"

    .line 118
    invoke-static {v1, v2, v0}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;I)V

    .line 120
    invoke-super {p0, p1}, Lcom/android/volley/Request;->deliverError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method protected deliverResponse(Lcom/amazon/bookwizard/bifrost/BifrostAcquisitionRequest$AcquisitionResponse;)V
    .locals 3

    const-string v0, "BifrostOperation"

    const-string v1, "GetOfferSuccess"

    .line 106
    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "GetOfferSuccessRate"

    const/4 v2, 0x1

    .line 107
    invoke-static {v0, v1, v2}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    invoke-super {p0, p1}, Lcom/amazon/bookwizard/http/GsonRequest;->deliverResponse(Lcom/amazon/bookwizard/http/IWithHeaders;)V

    return-void
.end method

.method protected bridge synthetic deliverResponse(Lcom/amazon/bookwizard/http/IWithHeaders;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/amazon/bookwizard/bifrost/BifrostAcquisitionRequest$AcquisitionResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/bifrost/BifrostAcquisitionRequest;->deliverResponse(Lcom/amazon/bookwizard/bifrost/BifrostAcquisitionRequest$AcquisitionResponse;)V

    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/amazon/bookwizard/bifrost/BifrostAcquisitionRequest$AcquisitionResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/bifrost/BifrostAcquisitionRequest;->deliverResponse(Lcom/amazon/bookwizard/bifrost/BifrostAcquisitionRequest$AcquisitionResponse;)V

    return-void
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "application/json; charset=utf-8"

    return-object v0
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

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    invoke-virtual {p0}, Lcom/amazon/bookwizard/bifrost/BifrostAcquisitionRequest;->getBodyContentType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-Type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "x-client-id"

    const-string v2, "bookwizard"

    .line 76
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Accept"

    const-string v2, "application/json"

    .line 77
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "https"

    .line 79
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 80
    invoke-static {}, Lcom/amazon/bookwizard/util/BookWizardUtil;->getStoreHostname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

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
            "Lcom/amazon/bookwizard/bifrost/BifrostAcquisitionRequest$AcquisitionResponse;",
            ">;"
        }
    .end annotation

    .line 91
    iget-wide v0, p1, Lcom/android/volley/NetworkResponse;->networkTimeMs:J

    const-string v2, "BifrostOperation"

    const-string v3, "GetOfferTime"

    invoke-static {v2, v3, v0, v1}, Lcom/amazon/bookwizard/util/M;->timer(Ljava/lang/String;Ljava/lang/String;J)V

    .line 93
    invoke-super {p0, p1}, Lcom/amazon/bookwizard/http/GsonRequest;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1
.end method
