.class public final Lcom/amazon/kcp/home/api/AuthorUnfollowRequest;
.super Lcom/amazon/kcp/home/api/BaseAuthorFollowWebRequest;
.source "AuthorUnfollowRequest.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthorUnfollowRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthorUnfollowRequest.kt\ncom/amazon/kcp/home/api/AuthorUnfollowRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,74:1\n1819#2,2:75\n*E\n*S KotlinDebug\n*F\n+ 1 AuthorUnfollowRequest.kt\ncom/amazon/kcp/home/api/AuthorUnfollowRequest\n*L\n64#1,2:75\n*E\n"
.end annotation


# instance fields
.field private final PATH:Ljava/lang/String;

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

    .line 38
    invoke-direct {p0, p7}, Lcom/amazon/kcp/home/api/BaseAuthorFollowWebRequest;-><init>(Lcom/amazon/kcp/application/Marketplace;)V

    iput-object p2, p0, Lcom/amazon/kcp/home/api/AuthorUnfollowRequest;->reftag:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/home/api/AuthorUnfollowRequest;->csrfToken:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kcp/home/api/AuthorUnfollowRequest;->linkParams:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazon/kcp/home/api/AuthorUnfollowRequest;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    iput-object p8, p0, Lcom/amazon/kcp/home/api/AuthorUnfollowRequest;->builder:Landroid/net/Uri$Builder;

    .line 39
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "/followv2/follow/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_author"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/api/AuthorUnfollowRequest;->PATH:Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Lcom/amazon/kcp/home/api/AuthorUnfollowRequest;->setRequestUrl()V

    const/4 p1, 0x2

    .line 43
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;

    const/16 p1, 0x1388

    .line 44
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setTimeout(I)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 45
    invoke-virtual {p0, p5}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/webservices/BaseResponseHandler;Lcom/amazon/kcp/home/debug/SidekickSettings;Lcom/amazon/kcp/application/Marketplace;Landroid/net/Uri$Builder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x20

    const-string v2, "Utils.getFactory()"

    if-eqz v1, :cond_0

    .line 35
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

    .line 36
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

    .line 37
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

    invoke-direct/range {v3 .. v11}, Lcom/amazon/kcp/home/api/AuthorUnfollowRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/webservices/BaseResponseHandler;Lcom/amazon/kcp/home/debug/SidekickSettings;Lcom/amazon/kcp/application/Marketplace;Landroid/net/Uri$Builder;)V

    return-void
.end method

.method private final setRequestUrl()V
    .locals 10

    .line 53
    iget-object v0, p0, Lcom/amazon/kcp/home/api/AuthorUnfollowRequest;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/debug/SidekickSettings;->getEndpoint()Lcom/amazon/kcp/home/debug/SidekickEndpoint;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lcom/amazon/kcp/home/api/BaseAuthorFollowWebRequest;->getMarketplace()Lcom/amazon/kcp/application/Marketplace;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/home/debug/SidekickEndpoint;->getAuthority(Lcom/amazon/kcp/application/Marketplace;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "www."

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 55
    invoke-static {v1, v3, v2, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    :goto_0
    iget-object v3, p0, Lcom/amazon/kcp/home/api/AuthorUnfollowRequest;->builder:Landroid/net/Uri$Builder;

    .line 57
    invoke-virtual {v0}, Lcom/amazon/kcp/home/debug/SidekickEndpoint;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/amazon/kcp/home/api/AuthorUnfollowRequest;->PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/amazon/kcp/home/api/AuthorUnfollowRequest;->csrfToken:Ljava/lang/String;

    const-string v3, "authenticity_token"

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/amazon/kcp/home/api/AuthorUnfollowRequest;->reftag:Ljava/lang/String;

    const-string/jumbo v3, "ref"

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 64
    :try_start_0
    iget-object v3, p0, Lcom/amazon/kcp/home/api/AuthorUnfollowRequest;->linkParams:Ljava/lang/String;

    const-string v1, "&"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 75
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    const-string v3, "="

    .line 65
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 66
    invoke-virtual {v0, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "com.amazon.kcp.home.AuthorUnfollowRequest"

    const-string v2, "Failed to append link parameters to request"

    .line 69
    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setUrl(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-void
.end method


# virtual methods
.method public getHttpVerb()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE"

    return-object v0
.end method
