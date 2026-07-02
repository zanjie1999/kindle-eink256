.class public final Lcom/amazon/kindle/utils/ManageYourTitlesUtils;
.super Ljava/lang/Object;
.source "ManageYourTitlesUtils.kt"


# instance fields
.field private final customerBenefits:Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

.field private isManageYourTitlesWeblabEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-class v0, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    iput-object v0, p0, Lcom/amazon/kindle/utils/ManageYourTitlesUtils;->customerBenefits:Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    .line 37
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/amazon/kindle/utils/ManageYourTitlesUtils;->recordTriggerAndCheckIsOn$MoreModule_release()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kindle/utils/ManageYourTitlesUtils;->isManageYourTitlesWeblabEnabled:Z

    .line 39
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final isAuthenticated()Z
    .locals 2

    .line 94
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    const-string v1, "Utils.getFactory().authenticationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final getManageYourTitlesURL(Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;)Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, "subscriptionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPFMDomain()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/Marketplace;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 140
    :goto_0
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "https"

    .line 141
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 142
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "www.%s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "kindle-dbs/hz/my-items"

    .line 143
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 144
    invoke-virtual {p1}, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->getProgramKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "program"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 145
    invoke-virtual {p1}, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->getChannelKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "channel"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 146
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "uriBuilder.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final handleYourTitlesButtonClick(Landroid/content/Context;Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;Lcom/amazon/kindle/krx/ui/ScreenletContext;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;->getSubscriptionType()Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/utils/ManageYourTitlesUtils;->getManageYourTitlesURL(Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/utils/StoreOpeners;->createUrlOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object v0

    .line 128
    invoke-virtual {p2}, Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;->getTitleResId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p3, p1}, Lcom/amazon/kindle/store/StoreOpener;->setScreenletContext(Lcom/amazon/kindle/krx/ui/ScreenletContext;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 129
    invoke-interface {p1}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    return-void
.end method

.method public final isFeatureEnabled()Z
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/amazon/kindle/utils/ManageYourTitlesUtils;->isAuthenticated()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 55
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/utils/ManageYourTitlesUtils;->isManageYourTitlesWeblabEnabled:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isYourTitlesOnFosEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGIN:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/amazon/kindle/utils/ManageYourTitlesUtils;->recordTriggerAndCheckIsOn$MoreModule_release()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kindle/utils/ManageYourTitlesUtils;->isManageYourTitlesWeblabEnabled:Z

    :cond_0
    return-void
.end method

.method public final recordTriggerAndCheckIsOn$MoreModule_release()Z
    .locals 3

    .line 115
    new-instance v0, Lcom/amazon/kindle/weblab/OnOffWeblab;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "KINDLE_ANDROID_APPCORE_MANAGE_YOUR_TITLES_FROM_MORE_345854"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/weblab/OnOffWeblab;-><init>(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Lcom/amazon/kindle/weblab/OnOffWeblab;->recordTriggerAndCheckIsOn()Z

    move-result v0

    return v0
.end method

.method public final shouldShowCU()Z
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/amazon/kindle/utils/ManageYourTitlesUtils;->isFeatureEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/utils/ManageYourTitlesUtils;->customerBenefits:Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;->hasCUSubscription()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final shouldShowKU()Z
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/amazon/kindle/utils/ManageYourTitlesUtils;->isFeatureEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/utils/ManageYourTitlesUtils;->customerBenefits:Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;->hasKUSubscription()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final shouldShowPRR()Z
    .locals 2

    .line 77
    invoke-virtual {p0}, Lcom/amazon/kindle/utils/ManageYourTitlesUtils;->isFeatureEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/utils/ManageYourTitlesUtils;->shouldShowKU()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/utils/ManageYourTitlesUtils;->customerBenefits:Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;->hasPrimeSubscription()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
