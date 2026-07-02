.class public final Lcom/amazon/kcp/util/MarketplaceUtils;
.super Ljava/lang/Object;
.source "MarketplaceUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/util/MarketplaceUtils;

.field private static final authManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/amazon/kcp/util/MarketplaceUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/util/MarketplaceUtils;-><init>()V

    sput-object v0, Lcom/amazon/kcp/util/MarketplaceUtils;->INSTANCE:Lcom/amazon/kcp/util/MarketplaceUtils;

    .line 9
    sget-object v0, Lcom/amazon/kcp/util/MarketplaceUtils$authManager$2;->INSTANCE:Lcom/amazon/kcp/util/MarketplaceUtils$authManager$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/util/MarketplaceUtils;->authManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getUserMarketplace()Lcom/amazon/kcp/application/Marketplace;
    .locals 2

    .line 15
    sget-object v0, Lcom/amazon/kcp/util/MarketplaceUtils;->INSTANCE:Lcom/amazon/kcp/util/MarketplaceUtils;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/MarketplaceUtils;->getAuthManager$KindleReaderLibrary_release()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getAuthManager$KindleReaderLibrary_release()Lcom/amazon/kcp/application/IAuthenticationManager;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/util/MarketplaceUtils;->authManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/IAuthenticationManager;

    return-object v0
.end method
