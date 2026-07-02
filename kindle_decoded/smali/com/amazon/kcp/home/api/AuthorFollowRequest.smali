.class public final Lcom/amazon/kcp/home/api/AuthorFollowRequest;
.super Lcom/amazon/kcp/home/api/BaseAuthorFollowWebRequest;
.source "AuthorFollowRequest.kt"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final authorAsin:Ljava/lang/String;

.field private final builder:Landroid/net/Uri$Builder;

.field private final csrfToken:Ljava/lang/String;

.field private final linkParams:Ljava/lang/String;

.field private final reftag:Ljava/lang/String;

.field private final settings:Lcom/amazon/kcp/home/debug/SidekickSettings;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/webservices/BaseResponseHandler;Lcom/amazon/kcp/home/debug/SidekickSettings;Lcom/amazon/kcp/application/Marketplace;Landroid/net/Uri$Builder;)V
    .locals 1

    const-string v0, "authorAsin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "reftag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "csrfToken"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "linkParams"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "responseHandler"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "settings"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "marketplace"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0, p7}, Lcom/amazon/kcp/home/api/BaseAuthorFollowWebRequest;-><init>(Lcom/amazon/kcp/application/Marketplace;)V

    iput-object p1, p0, Lcom/amazon/kcp/home/api/AuthorFollowRequest;->authorAsin:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kcp/home/api/AuthorFollowRequest;->reftag:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/home/api/AuthorFollowRequest;->csrfToken:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kcp/home/api/AuthorFollowRequest;->linkParams:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazon/kcp/home/api/AuthorFollowRequest;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    iput-object p8, p0, Lcom/amazon/kcp/home/api/AuthorFollowRequest;->builder:Landroid/net/Uri$Builder;

    .line 45
    const-class p1, Lcom/amazon/kcp/home/api/AuthorFollowRequest;

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Utils.getTag(AuthorFollowRequest::class.java)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kcp/home/api/AuthorFollowRequest;->TAG:Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Lcom/amazon/kcp/home/api/AuthorFollowRequest;->setRequestUrl()V

    .line 49
    invoke-direct {p0}, Lcom/amazon/kcp/home/api/AuthorFollowRequest;->constructBody()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setPostFormData(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    const/4 p1, 0x2

    .line 50
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;

    const/16 p1, 0x1388

    .line 51
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setTimeout(I)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 53
    invoke-virtual {p0, p5}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/webservices/BaseResponseHandler;Lcom/amazon/kcp/home/debug/SidekickSettings;Lcom/amazon/kcp/application/Marketplace;Landroid/net/Uri$Builder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x20

    const-string v2, "Utils.getFactory()"

    if-eqz v1, :cond_0

    .line 41
    sget-object v1, Lcom/amazon/kcp/home/debug/SidekickSettings;->Companion:Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Utils.getFactory().context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/home/debug/SidekickSettings;

    move-result-object v1

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object/from16 v9, p6

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    .line 42
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v1, v2}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v1

    const-string v2, "Marketplace.getInstance(\u2026fetchToken(TokenKey.PFM))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v1

    goto :goto_1

    :cond_1
    move-object/from16 v10, p7

    :goto_1
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    .line 43
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    move-object v11, v0

    goto :goto_2

    :cond_2
    move-object/from16 v11, p8

    :goto_2
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v11}, Lcom/amazon/kcp/home/api/AuthorFollowRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/webservices/BaseResponseHandler;Lcom/amazon/kcp/home/debug/SidekickSettings;Lcom/amazon/kcp/application/Marketplace;Landroid/net/Uri$Builder;)V

    return-void
.end method

.method private final constructBody()Lorg/json/JSONObject;
    .locals 3

    .line 75
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "authenticity_token"

    .line 77
    iget-object v2, p0, Lcom/amazon/kcp/home/api/AuthorFollowRequest;->csrfToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "entity_id"

    .line 78
    iget-object v2, p0, Lcom/amazon/kcp/home/api/AuthorFollowRequest;->authorAsin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "ref"

    .line 79
    iget-object v2, p0, Lcom/amazon/kcp/home/api/AuthorFollowRequest;->reftag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "category"

    const-string v2, "author"

    .line 80
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    iget-object v1, p0, Lcom/amazon/kcp/home/api/AuthorFollowRequest;->TAG:Ljava/lang/String;

    const-string v2, "Failed to construct body"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private final setRequestUrl()V
    .locals 6

    .line 61
    iget-object v0, p0, Lcom/amazon/kcp/home/api/AuthorFollowRequest;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/debug/SidekickSettings;->getEndpoint()Lcom/amazon/kcp/home/debug/SidekickEndpoint;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lcom/amazon/kcp/home/api/BaseAuthorFollowWebRequest;->getMarketplace()Lcom/amazon/kcp/application/Marketplace;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/home/debug/SidekickEndpoint;->getAuthority(Lcom/amazon/kcp/application/Marketplace;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "www."

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 63
    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/home/api/AuthorFollowRequest;->builder:Landroid/net/Uri$Builder;

    .line 66
    invoke-virtual {v0}, Lcom/amazon/kcp/home/debug/SidekickEndpoint;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/followv2/follow/"

    .line 68
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/amazon/kcp/home/api/AuthorFollowRequest;->linkParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setUrl(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-void
.end method


# virtual methods
.method public getHttpVerb()Ljava/lang/String;
    .locals 1

    const-string v0, "POST"

    return-object v0
.end method
