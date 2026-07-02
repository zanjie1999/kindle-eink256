.class public final Lcom/audible/mobile/download/MarketplaceBasedUrlResolutionStrategy;
.super Ljava/lang/Object;
.source "MarketplaceBasedUrlResolutionStrategy.java"

# interfaces
.implements Lcom/audible/mobile/download/UrlResolutionStrategy;


# instance fields
.field private final context:Landroid/content/Context;

.field private final uriTranslator:Lcom/audible/mobile/framework/UriTranslator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/framework/UriTranslator;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "uriTranslator must not be null."

    .line 38
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "context must not be null."

    .line 39
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    iput-object p2, p0, Lcom/audible/mobile/download/MarketplaceBasedUrlResolutionStrategy;->uriTranslator:Lcom/audible/mobile/framework/UriTranslator;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/download/MarketplaceBasedUrlResolutionStrategy;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/identity/IdentityManager;)V
    .locals 1

    .line 33
    new-instance v0, Lcom/audible/mobile/network/framework/MarketplaceUriTranslatorImpl;

    invoke-direct {v0, p2}, Lcom/audible/mobile/network/framework/MarketplaceUriTranslatorImpl;-><init>(Lcom/audible/mobile/identity/IdentityManager;)V

    invoke-direct {p0, p1, v0}, Lcom/audible/mobile/download/MarketplaceBasedUrlResolutionStrategy;-><init>(Landroid/content/Context;Lcom/audible/mobile/framework/UriTranslator;)V

    return-void
.end method

.method private calculateBaseUrl(Lcom/audible/mobile/download/ContentType;)Ljava/lang/String;
    .locals 2

    .line 70
    sget-object v0, Lcom/audible/mobile/download/MarketplaceBasedUrlResolutionStrategy$1;->$SwitchMap$com$audible$mobile$download$ContentType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/audible/mobile/download/MarketplaceBasedUrlResolutionStrategy;->context:Landroid/content/Context;

    sget v0, Lcom/audible/mobile/download/R$string;->url_sample_audiobook_with_marketplace:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 81
    :cond_1
    iget-object p1, p0, Lcom/audible/mobile/download/MarketplaceBasedUrlResolutionStrategy;->context:Landroid/content/Context;

    sget v0, Lcom/audible/mobile/download/R$string;->url_audiobook_with_marketplace:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 76
    :cond_2
    iget-object p1, p0, Lcom/audible/mobile/download/MarketplaceBasedUrlResolutionStrategy;->uriTranslator:Lcom/audible/mobile/framework/UriTranslator;

    iget-object v0, p0, Lcom/audible/mobile/download/MarketplaceBasedUrlResolutionStrategy;->context:Landroid/content/Context;

    sget v1, Lcom/audible/mobile/download/R$string;->url_sample_sync_no_marketplace:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/mobile/framework/UriTranslator;->translate(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 74
    :cond_3
    iget-object p1, p0, Lcom/audible/mobile/download/MarketplaceBasedUrlResolutionStrategy;->uriTranslator:Lcom/audible/mobile/framework/UriTranslator;

    iget-object v0, p0, Lcom/audible/mobile/download/MarketplaceBasedUrlResolutionStrategy;->context:Landroid/content/Context;

    sget v1, Lcom/audible/mobile/download/R$string;->url_sync_no_marketplace:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/mobile/framework/UriTranslator;->translate(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 72
    :cond_4
    iget-object p1, p0, Lcom/audible/mobile/download/MarketplaceBasedUrlResolutionStrategy;->uriTranslator:Lcom/audible/mobile/framework/UriTranslator;

    iget-object v0, p0, Lcom/audible/mobile/download/MarketplaceBasedUrlResolutionStrategy;->context:Landroid/content/Context;

    sget v1, Lcom/audible/mobile/download/R$string;->url_cover_art_no_marketplace:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/mobile/framework/UriTranslator;->translate(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public resolve(Lcom/audible/mobile/download/ContentType;Ljava/lang/String;)Ljava/net/URL;
    .locals 1

    const-string v0, "contentType must not be null."

    .line 55
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    invoke-direct {p0, p1}, Lcom/audible/mobile/download/MarketplaceBasedUrlResolutionStrategy;->calculateBaseUrl(Lcom/audible/mobile/download/ContentType;)Ljava/lang/String;

    move-result-object p1

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/mobile/util/UrlUtils;->toUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public resolve(Lcom/audible/mobile/download/ContentType;Ljava/util/Map;)Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/download/ContentType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/URL;"
        }
    .end annotation

    const-string v0, "contentType must not be null."

    .line 63
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    invoke-direct {p0, p1}, Lcom/audible/mobile/download/MarketplaceBasedUrlResolutionStrategy;->calculateBaseUrl(Lcom/audible/mobile/download/ContentType;)Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-static {p1, p2}, Lcom/audible/mobile/util/UrlUtils;->toUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lcom/audible/mobile/download/ContentType;Ljava/net/URL;)Ljava/net/URL;
    .locals 0

    .line 47
    invoke-virtual {p2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 49
    iget-object p2, p0, Lcom/audible/mobile/download/MarketplaceBasedUrlResolutionStrategy;->uriTranslator:Lcom/audible/mobile/framework/UriTranslator;

    invoke-interface {p2, p1}, Lcom/audible/mobile/framework/UriTranslator;->translate(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/mobile/util/UrlUtils;->toUrl(Landroid/net/Uri;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method
