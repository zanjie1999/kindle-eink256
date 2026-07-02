.class public final Lcom/amazon/kcp/home/api/AuthorFollowStatusRequest;
.super Lcom/amazon/kcp/home/api/BaseAuthorFollowWebRequest;
.source "AuthorFollowStatusRequest.kt"


# instance fields
.field private final PATH:Ljava/lang/String;

.field private final builder:Landroid/net/Uri$Builder;

.field private final reftag:Ljava/lang/String;

.field private final settings:Lcom/amazon/kcp/home/debug/SidekickSettings;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/webservices/BaseResponseHandler;Lcom/amazon/kcp/home/debug/SidekickSettings;Lcom/amazon/kcp/application/Marketplace;Landroid/net/Uri$Builder;)V
    .locals 1

    const-string v0, "authorAsin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "reftag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "responseHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "settings"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "marketplace"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p5}, Lcom/amazon/kcp/home/api/BaseAuthorFollowWebRequest;-><init>(Lcom/amazon/kcp/application/Marketplace;)V

    iput-object p2, p0, Lcom/amazon/kcp/home/api/AuthorFollowStatusRequest;->reftag:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kcp/home/api/AuthorFollowStatusRequest;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    iput-object p6, p0, Lcom/amazon/kcp/home/api/AuthorFollowStatusRequest;->builder:Landroid/net/Uri$Builder;

    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "/followv2/follow/"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_author"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/api/AuthorFollowStatusRequest;->PATH:Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Lcom/amazon/kcp/home/api/AuthorFollowStatusRequest;->setRequestUrl()V

    const/4 p1, 0x2

    .line 35
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;

    const/16 p1, 0x1388

    .line 36
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setTimeout(I)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 38
    invoke-virtual {p0, p3}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/webservices/BaseResponseHandler;Lcom/amazon/kcp/home/debug/SidekickSettings;Lcom/amazon/kcp/application/Marketplace;Landroid/net/Uri$Builder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x8

    const-string v1, "Utils.getFactory()"

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lcom/amazon/kcp/home/debug/SidekickSettings;->Companion:Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Utils.getFactory().context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/home/debug/SidekickSettings;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, p4

    :goto_0
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_1

    .line 28
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    const-string v1, "Marketplace.getInstance(\u2026fetchToken(TokenKey.PFM))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object v7, p5

    :goto_1
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_2

    .line 29
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    move-object v8, v0

    goto :goto_2

    :cond_2
    move-object v8, p6

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/amazon/kcp/home/api/AuthorFollowStatusRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/webservices/BaseResponseHandler;Lcom/amazon/kcp/home/debug/SidekickSettings;Lcom/amazon/kcp/application/Marketplace;Landroid/net/Uri$Builder;)V

    return-void
.end method

.method private final setRequestUrl()V
    .locals 6

    .line 46
    iget-object v0, p0, Lcom/amazon/kcp/home/api/AuthorFollowStatusRequest;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/debug/SidekickSettings;->getEndpoint()Lcom/amazon/kcp/home/debug/SidekickEndpoint;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/amazon/kcp/home/api/BaseAuthorFollowWebRequest;->getMarketplace()Lcom/amazon/kcp/application/Marketplace;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/home/debug/SidekickEndpoint;->getAuthority(Lcom/amazon/kcp/application/Marketplace;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "www."

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 48
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

    .line 50
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/home/api/AuthorFollowStatusRequest;->builder:Landroid/net/Uri$Builder;

    .line 51
    invoke-virtual {v0}, Lcom/amazon/kcp/home/debug/SidekickEndpoint;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/amazon/kcp/home/api/AuthorFollowStatusRequest;->PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/amazon/kcp/home/api/AuthorFollowStatusRequest;->reftag:Ljava/lang/String;

    const-string/jumbo v2, "reftag"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setUrl(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-void
.end method


# virtual methods
.method public getHttpVerb()Ljava/lang/String;
    .locals 1

    const-string v0, "GET"

    return-object v0
.end method
