.class public Lcom/amazon/kcp/RedirectUrlAuthority;
.super Ljava/lang/Object;
.source "RedirectUrlAuthority.java"


# static fields
.field private static final BROWSE_NODE_REF_TAG:Ljava/lang/String; = "ref_"

.field private static final BROWSE_NODE_URL_KEY:Ljava/lang/String; = "node"

.field private static final ENCODER_KEY:Ljava/lang/String; = "ie"

.field private static final ENCODING:Ljava/lang/String; = "UTF8"

.field private static final REDIRECT_URI_PATH_BROWSE_NODE:Ljava/lang/String; = "gp/aw/s"

.field private static final REDIRECT_URI_SCHEME:Ljava/lang/String; = "https"


# direct methods
.method public static getBrowseNodeUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 38
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "https"

    .line 39
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 40
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v1, v2}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/Marketplace;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "gp/aw/s"

    .line 42
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "ie"

    const-string v2, "UTF8"

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "i"

    const-string v2, "digital-text"

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo v1, "ref_"

    .line 45
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 46
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "node"

    invoke-static {p1, v0, p0}, Lcom/amazon/kindle/webservices/UrlUtils;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
