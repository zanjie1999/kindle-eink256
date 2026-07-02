.class public final Lcom/amazon/kindle/utils/YourListsIngressUtils;
.super Ljava/lang/Object;
.source "YourListsIngressUtils.kt"


# instance fields
.field private final METRICS_CLASS:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/IAuthenticationManager;)V
    .locals 2

    const-class v0, Lcom/amazon/kindle/utils/YourListsIngressUtils;

    const-string v1, "authenticationManager"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/utils/YourListsIngressUtils;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    .line 39
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/utils/YourListsIngressUtils;->METRICS_CLASS:Ljava/lang/String;

    .line 41
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Utils.getTag(YourListsIngressUtils::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/utils/YourListsIngressUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private final isAuthenticated()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/kindle/utils/YourListsIngressUtils;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    return v0
.end method

.method private final isThirdPartyTablet()Z
    .locals 2

    .line 84
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v0

    const-string v1, "DeviceInformationProviderFactory.getProvider()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/AmazonDeviceType;->WHISKEYTOWN:Lcom/amazon/kcp/application/AmazonDeviceType;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/AmazonDeviceType;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final isUSPFM()Z
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/amazon/kindle/utils/YourListsIngressUtils;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-static {v0, v1}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final handleYourListsButtonClick(Landroid/content/Context;ZLcom/amazon/kindle/krx/ui/ScreenletContext;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    const-string p3, "com.amazon.mobile.shopping://www.amazon.com/wishlists"

    .line 98
    invoke-static {p3, p2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    const-string p3, "intent"

    .line 99
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "android.intent.action.VIEW"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const p3, 0x10008000

    .line 100
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 102
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    iget-object p1, p0, Lcom/amazon/kindle/utils/YourListsIngressUtils;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Activity not found for intent: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    iget-object p3, p0, Lcom/amazon/kindle/utils/YourListsIngressUtils;->METRICS_CLASS:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityNotFoundError-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/amazon/kindle/services/metrics/MetricType;->ERROR:Lcom/amazon/kindle/services/metrics/MetricType;

    invoke-virtual {p1, p3, p2, v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;)V

    goto :goto_0

    :cond_0
    const-string p2, "https://www.amazon.com/kindle-dbs/wishlists"

    .line 109
    invoke-static {p1, p2}, Lcom/amazon/kindle/utils/StoreOpeners;->createUrlOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p2

    .line 110
    sget v0, Lcom/amazon/kcp/more/R$string;->more_item_your_lists:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/amazon/kindle/store/StoreOpener;->setScreenletContext(Lcom/amazon/kindle/krx/ui/ScreenletContext;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 111
    invoke-interface {p1}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    :goto_0
    return-void
.end method

.method public final isFeatureEnabled()Z
    .locals 3

    .line 49
    invoke-direct {p0}, Lcom/amazon/kindle/utils/YourListsIngressUtils;->isAuthenticated()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 54
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isKFABuild()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 57
    invoke-direct {p0}, Lcom/amazon/kindle/utils/YourListsIngressUtils;->isUSPFM()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/amazon/kindle/utils/YourListsIngressUtils;->isThirdPartyTablet()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 59
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    const/4 v1, 0x1

    :cond_2
    return v1
.end method
