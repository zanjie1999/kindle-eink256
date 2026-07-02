.class public Lcom/amazon/bookwizard/glide/BuyRequest;
.super Lcom/amazon/bookwizard/http/GsonRequest;
.source "BuyRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/glide/BuyRequest$BuyResponse;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/bookwizard/http/GsonRequest<",
        "Ljava/lang/Void;",
        "Lcom/amazon/bookwizard/glide/BuyRequest$BuyResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final OP:Ljava/lang/String; = "GlideOperation"

.field private static final PATH:Ljava/lang/String; = "/gp/kindle/public/buy/v1.html"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final action:Lcom/amazon/bookwizard/glide/Action;

.field private final di:Lcom/amazon/kindle/krx/application/IDeviceInformation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/amazon/bookwizard/glide/BuyRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/bookwizard/glide/BuyRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Ljava/lang/String;Lcom/amazon/bookwizard/glide/Action;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/application/IDeviceInformation;",
            "Ljava/lang/String;",
            "Lcom/amazon/bookwizard/glide/Action;",
            "Lcom/android/volley/Response$Listener<",
            "Lcom/amazon/bookwizard/glide/BuyRequest$BuyResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 78
    invoke-static {p2, p3}, Lcom/amazon/bookwizard/glide/BuyRequest;->getUrl(Ljava/lang/String;Lcom/amazon/bookwizard/glide/Action;)Ljava/lang/String;

    move-result-object p2

    const-class v0, Lcom/amazon/bookwizard/glide/BuyRequest$BuyResponse;

    invoke-direct {p0, p2, v0, p4, p5}, Lcom/amazon/bookwizard/http/GsonRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 80
    iput-object p1, p0, Lcom/amazon/bookwizard/glide/BuyRequest;->di:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    .line 81
    iput-object p3, p0, Lcom/amazon/bookwizard/glide/BuyRequest;->action:Lcom/amazon/bookwizard/glide/Action;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Ljava/lang/String;Lcom/amazon/bookwizard/glide/Action;Lcom/android/volley/toolbox/RequestFuture;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/application/IDeviceInformation;",
            "Ljava/lang/String;",
            "Lcom/amazon/bookwizard/glide/Action;",
            "Lcom/android/volley/toolbox/RequestFuture<",
            "Lcom/amazon/bookwizard/glide/BuyRequest$BuyResponse;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p4

    .line 60
    invoke-direct/range {v0 .. v5}, Lcom/amazon/bookwizard/glide/BuyRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Ljava/lang/String;Lcom/amazon/bookwizard/glide/Action;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method private static getUrl(Ljava/lang/String;Lcom/amazon/bookwizard/glide/Action;)Ljava/lang/String;
    .locals 2

    .line 94
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "https"

    .line 95
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 96
    invoke-static {}, Lcom/amazon/bookwizard/util/BookWizardUtil;->getStoreHostname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/gp/kindle/public/buy/v1.html"

    .line 97
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "asin"

    .line 98
    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 99
    invoke-virtual {p1}, Lcom/amazon/bookwizard/glide/Action;->getGlideAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 100
    invoke-virtual {p1}, Lcom/amazon/bookwizard/glide/Action;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "actionId"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 101
    invoke-virtual {p1}, Lcom/amazon/bookwizard/glide/Action;->getCsrfToken()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gi_csrf"

    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string/jumbo p1, "surfaceType"

    const-string v0, "aw"

    .line 102
    invoke-virtual {p0, p1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string/jumbo p1, "responseFormat"

    const-string v0, "json"

    .line 103
    invoke-virtual {p0, p1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 104
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 4

    .line 144
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    const-string v1, ""

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 145
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BuyFailure."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/bookwizard/glide/BuyRequest;->action:Lcom/amazon/bookwizard/glide/Action;

    invoke-virtual {v3}, Lcom/amazon/bookwizard/glide/Action;->getGlideAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GlideOperation"

    invoke-static {v2, v1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BuySuccessRate."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/bookwizard/glide/BuyRequest;->action:Lcom/amazon/bookwizard/glide/Action;

    invoke-virtual {v3}, Lcom/amazon/bookwizard/glide/Action;->getGlideAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;I)V

    .line 148
    sget-object v1, Lcom/amazon/bookwizard/glide/BuyRequest;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const-string v0, "BuyRequestFailed: errorCode=%s; error=%s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-super {p0, p1}, Lcom/android/volley/Request;->deliverError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method protected deliverResponse(Lcom/amazon/bookwizard/glide/BuyRequest$BuyResponse;)V
    .locals 3

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BuySuccess."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/bookwizard/glide/BuyRequest;->action:Lcom/amazon/bookwizard/glide/Action;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/glide/Action;->getGlideAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlideOperation"

    invoke-static {v1, v0}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BuySuccessRate."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/bookwizard/glide/BuyRequest;->action:Lcom/amazon/bookwizard/glide/Action;

    invoke-virtual {v2}, Lcom/amazon/bookwizard/glide/Action;->getGlideAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;I)V

    .line 136
    invoke-super {p0, p1}, Lcom/amazon/bookwizard/http/GsonRequest;->deliverResponse(Lcom/amazon/bookwizard/http/IWithHeaders;)V

    return-void
.end method

.method protected bridge synthetic deliverResponse(Lcom/amazon/bookwizard/http/IWithHeaders;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/amazon/bookwizard/glide/BuyRequest$BuyResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/glide/BuyRequest;->deliverResponse(Lcom/amazon/bookwizard/glide/BuyRequest$BuyResponse;)V

    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/amazon/bookwizard/glide/BuyRequest$BuyResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/glide/BuyRequest;->deliverResponse(Lcom/amazon/bookwizard/glide/BuyRequest$BuyResponse;)V

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

    .line 112
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 113
    invoke-static {}, Lcom/amazon/ebook/util/text/LanguageTag;->getDefault()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Accept-Language"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v1, p0, Lcom/amazon/bookwizard/glide/BuyRequest;->di:Lcom/amazon/kindle/krx/application/IDeviceInformation;

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
            "Lcom/amazon/bookwizard/glide/BuyRequest$BuyResponse;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BuyTime."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/bookwizard/glide/BuyRequest;->action:Lcom/amazon/bookwizard/glide/Action;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/glide/Action;->getGlideAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/volley/NetworkResponse;->networkTimeMs:J

    const-string v3, "GlideOperation"

    invoke-static {v3, v0, v1, v2}, Lcom/amazon/bookwizard/util/M;->timer(Ljava/lang/String;Ljava/lang/String;J)V

    .line 125
    invoke-super {p0, p1}, Lcom/amazon/bookwizard/http/GsonRequest;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1
.end method
