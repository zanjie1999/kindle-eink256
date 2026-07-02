.class public final Lcom/amazon/falkor/bottomsheet/StoreTokenBottomSheetController;
.super Lcom/amazon/falkor/BottomSheetController;
.source "StoreTokenBottomSheetController.kt"


# instance fields
.field private final cachedTokenBalance:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final playBillingUtils:Lcom/amazon/kindle/krx/payment/PlayBillingUtils;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/payment/PlayBillingUtils;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "playBillingUtils"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/amazon/falkor/BottomSheetID;->STORE_TOKEN_BOTTOM_SHEET_ID:Lcom/amazon/falkor/BottomSheetID;

    invoke-virtual {v0}, Lcom/amazon/falkor/BottomSheetID;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/falkor/BottomSheetController;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amazon/falkor/bottomsheet/StoreTokenBottomSheetController;->playBillingUtils:Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    .line 38
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 41
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/StoreTokenBottomSheetController;->cachedTokenBalance:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private final getUrl()Ljava/lang/String;
    .locals 6

    .line 91
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    const-string/jumbo v1, "sdk.applicationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v0

    const-string/jumbo v2, "sdk.applicationManager.deviceInformation"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getEncryptedDSN()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    .line 93
    sget-object v2, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorDarkModeUtils;

    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/StoreTokenBottomSheetController;->isCurrentAreaInDarkMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->getThemeUrlArgument(Z)Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    .line 95
    sget-object v4, Lcom/amazon/falkor/utils/FalkorUrlUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorUrlUtils;

    const-string v5, "eid"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "deviceType"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "locale"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1, v3, v2}, Lcom/amazon/falkor/utils/FalkorUrlUtils;->getStoreTokenBottomSheetUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final refreshBottomSheet()V
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->isBottomSheetVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/StoreTokenBottomSheetController;->cachedTokenBalance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/amazon/falkor/bottomsheet/StoreTokenBottomSheetController;->showBottomSheet(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final dismissStoreTokenBottomSheetEvent(Lcom/amazon/falkor/event/DismissStoreTokenBottomSheetEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->dismissSheet()V

    return-void
.end method

.method protected getJSInterface()Lcom/amazon/falkor/FalkorJSInterface;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isCurrentAreaInDarkMode()Z
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onConnectivityChange(Lcom/amazon/kindle/krx/events/ConnectivityChangedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Lcom/amazon/falkor/bottomsheet/StoreTokenBottomSheetController;->refreshBottomSheet()V

    return-void
.end method

.method public final onRefreshEvent(Lcom/amazon/falkor/event/StoreTokenBottomSheetRefreshEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lcom/amazon/falkor/bottomsheet/StoreTokenBottomSheetController;->refreshBottomSheet()V

    return-void
.end method

.method public final showBottomSheet(Ljava/lang/Integer;)V
    .locals 3

    .line 52
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getNetworkService()Lcom/amazon/kindle/krx/network/INetworkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/StoreTokenBottomSheetController;->playBillingUtils:Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;->shouldUsePaymentFlows()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/StoreTokenBottomSheetController;->cachedTokenBalance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 56
    sget-object v0, Lcom/amazon/falkor/bottomsheet/DisabledPaymentStoreTokenBottomSheetFragment;->Companion:Lcom/amazon/falkor/bottomsheet/DisabledPaymentStoreTokenBottomSheetFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/falkor/bottomsheet/DisabledPaymentStoreTokenBottomSheetFragment$Companion;->getNewInstance(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-void

    .line 61
    :cond_1
    new-instance p1, Lcom/amazon/falkor/bottomsheet/StoreTokenWebViewFragment$CreateDelegate;

    invoke-direct {p1}, Lcom/amazon/falkor/bottomsheet/StoreTokenWebViewFragment$CreateDelegate;-><init>()V

    invoke-direct {p0}, Lcom/amazon/falkor/bottomsheet/StoreTokenBottomSheetController;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/StoreTokenBottomSheetController;->isCurrentAreaInDarkMode()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/falkor/bottomsheet/StoreTokenWebViewFragment$CreateDelegate;->newFragment(Ljava/lang/String;Z)Landroidx/fragment/app/Fragment;

    move-result-object p1

    goto :goto_0

    .line 64
    :cond_2
    sget-object p1, Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment;->Companion:Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment$Companion;

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getId()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/StoreTokenBottomSheetController;->isCurrentAreaInDarkMode()Z

    move-result v2

    .line 64
    invoke-virtual {p1, v0, v1, v2}, Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment$Companion;->getNewInstance(ZLjava/lang/String;Z)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 69
    :goto_0
    invoke-virtual {p0, p1}, Lcom/amazon/falkor/BottomSheetController;->showModalBottomSheetFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method
