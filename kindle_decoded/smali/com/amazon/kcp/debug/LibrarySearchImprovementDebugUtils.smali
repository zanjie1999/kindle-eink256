.class public final Lcom/amazon/kcp/debug/LibrarySearchImprovementDebugUtils;
.super Ljava/lang/Object;
.source "LibrarySearchImprovementDebugUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/debug/LibrarySearchImprovementDebugUtils;

.field private static isLibrarySearchImprovementEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/amazon/kcp/debug/LibrarySearchImprovementDebugUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/LibrarySearchImprovementDebugUtils;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/LibrarySearchImprovementDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/LibrarySearchImprovementDebugUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isLaunchedMarketplaceFor1P()Z
    .locals 6

    .line 40
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getUserPFM()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    .line 43
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 44
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    .line 45
    sget-object v5, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v5}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x3

    .line 46
    sget-object v5, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v5}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x4

    .line 47
    sget-object v5, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v5}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x5

    .line 48
    sget-object v5, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v5}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x6

    .line 49
    sget-object v5, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v5}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 42
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 52
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public static final isLibrarySearchImprovementEnabled()Z
    .locals 1

    .line 33
    sget-boolean v0, Lcom/amazon/kcp/debug/LibrarySearchImprovementDebugUtils;->isLibrarySearchImprovementEnabled:Z

    return v0
.end method


# virtual methods
.method public final initialize()V
    .locals 1

    .line 20
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-direct {p0}, Lcom/amazon/kcp/debug/LibrarySearchImprovementDebugUtils;->isLaunchedMarketplaceFor1P()Z

    move-result v0

    sput-boolean v0, Lcom/amazon/kcp/debug/LibrarySearchImprovementDebugUtils;->isLibrarySearchImprovementEnabled:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 23
    sput-boolean v0, Lcom/amazon/kcp/debug/LibrarySearchImprovementDebugUtils;->isLibrarySearchImprovementEnabled:Z

    :goto_0
    return-void
.end method
