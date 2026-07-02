.class public Lcom/audible/mobile/identity/impl/USMarketplaceResolutionStrategyResolver;
.super Ljava/lang/Object;
.source "USMarketplaceResolutionStrategyResolver.java"

# interfaces
.implements Lcom/audible/mobile/identity/DefaultMarketplaceResolutionStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolve()Lcom/audible/mobile/identity/Marketplace;
    .locals 1

    .line 13
    sget-object v0, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_US:Lcom/audible/mobile/identity/Marketplace;

    return-object v0
.end method
