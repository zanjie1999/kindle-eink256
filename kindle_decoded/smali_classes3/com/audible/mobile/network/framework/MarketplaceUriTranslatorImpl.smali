.class public final Lcom/audible/mobile/network/framework/MarketplaceUriTranslatorImpl;
.super Ljava/lang/Object;
.source "MarketplaceUriTranslatorImpl.java"

# interfaces
.implements Lcom/audible/mobile/framework/UriTranslator;


# instance fields
.field private final identityManager:Lcom/audible/mobile/identity/IdentityManager;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/identity/IdentityManager;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "identityManager must not be null."

    .line 16
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    iput-object p1, p0, Lcom/audible/mobile/network/framework/MarketplaceUriTranslatorImpl;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    return-void
.end method


# virtual methods
.method public translate(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/audible/mobile/network/framework/MarketplaceUriTranslatorImpl;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    invoke-interface {v0}, Lcom/audible/mobile/identity/IdentityManager;->getCustomerPreferredMarketplace()Lcom/audible/mobile/identity/Marketplace;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/audible/mobile/identity/Marketplace;->getTopLevelDomain()Lcom/audible/mobile/identity/TopLevelDomain;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/audible/mobile/identity/TopLevelDomain;->transformTopLevelDomain(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
