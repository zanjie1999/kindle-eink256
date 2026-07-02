.class Lcom/audible/mobile/identity/MAPBasedIdentityManager$MAPBackedMarketplaceResolutionStrategy;
.super Ljava/lang/Object;
.source "MAPBasedIdentityManager.java"

# interfaces
.implements Lcom/audible/mobile/identity/DefaultMarketplaceResolutionStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/identity/MAPBasedIdentityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MAPBackedMarketplaceResolutionStrategy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/identity/MAPBasedIdentityManager;


# direct methods
.method private constructor <init>(Lcom/audible/mobile/identity/MAPBasedIdentityManager;)V
    .locals 0

    .line 1086
    iput-object p1, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager$MAPBackedMarketplaceResolutionStrategy;->this$0:Lcom/audible/mobile/identity/MAPBasedIdentityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/mobile/identity/MAPBasedIdentityManager;Lcom/audible/mobile/identity/MAPBasedIdentityManager$1;)V
    .locals 0

    .line 1086
    invoke-direct {p0, p1}, Lcom/audible/mobile/identity/MAPBasedIdentityManager$MAPBackedMarketplaceResolutionStrategy;-><init>(Lcom/audible/mobile/identity/MAPBasedIdentityManager;)V

    return-void
.end method


# virtual methods
.method public resolve()Lcom/audible/mobile/identity/Marketplace;
    .locals 4

    .line 1090
    iget-object v0, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager$MAPBackedMarketplaceResolutionStrategy;->this$0:Lcom/audible/mobile/identity/MAPBasedIdentityManager;

    invoke-virtual {v0}, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->getDirectId()Ljava/lang/String;

    move-result-object v0

    .line 1091
    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 1095
    :cond_0
    iget-object v1, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager$MAPBackedMarketplaceResolutionStrategy;->this$0:Lcom/audible/mobile/identity/MAPBasedIdentityManager;

    invoke-static {v1}, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->access$1000(Lcom/audible/mobile/identity/MAPBasedIdentityManager;)Lcom/audible/mobile/identity/CustomerAttributeRepository;

    move-result-object v1

    const-string v3, "PFM"

    invoke-interface {v1, v0, v3}, Lcom/audible/mobile/identity/CustomerAttributeRepository;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1098
    invoke-static {v1}, Lcom/audible/mobile/identity/Marketplace;->getMarketplaceFromMarketplaceId(Ljava/lang/String;)Lcom/audible/mobile/identity/Marketplace;

    move-result-object v0

    return-object v0

    .line 1101
    :cond_1
    iget-object v1, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager$MAPBackedMarketplaceResolutionStrategy;->this$0:Lcom/audible/mobile/identity/MAPBasedIdentityManager;

    invoke-static {v1}, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->access$1100(Lcom/audible/mobile/identity/MAPBasedIdentityManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1103
    iget-object v1, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager$MAPBackedMarketplaceResolutionStrategy;->this$0:Lcom/audible/mobile/identity/MAPBasedIdentityManager;

    invoke-static {v1}, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->access$1000(Lcom/audible/mobile/identity/MAPBasedIdentityManager;)Lcom/audible/mobile/identity/CustomerAttributeRepository;

    move-result-object v1

    invoke-interface {v1, v0, v3}, Lcom/audible/mobile/identity/CustomerAttributeRepository;->getDefaultAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1107
    invoke-static {v0}, Lcom/audible/mobile/identity/Marketplace;->getMarketplaceFromMarketplaceId(Ljava/lang/String;)Lcom/audible/mobile/identity/Marketplace;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v2
.end method
