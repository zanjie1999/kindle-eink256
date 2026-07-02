.class public final Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;
.super Ljava/lang/Object;
.source "UGSLauncher.kt"

# interfaces
.implements Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenterContract$View;


# instance fields
.field private bottomSheetBuilder:Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetBuilder;

.field private context:Landroid/content/Context;

.field private final ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

.field private initTimestamp:Ljava/util/Date;

.field private logger:Lcom/amazon/kindle/krx/logging/ILogger;

.field private mPresenter:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;

.field private metricsManager:Lcom/amazon/kindle/ffs/metrics/MetricsManager;

.field private pairingActivityBuilder:Lcom/amazon/kindle/ffs/view/pairing/PairingActivityBuilder;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    const-string v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 46
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    const-string v0, "sdk.logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    .line 47
    iget-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "sdk.context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->context:Landroid/content/Context;

    .line 48
    sget-object p1, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;->Companion:Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$Companion;

    iput-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->pairingActivityBuilder:Lcom/amazon/kindle/ffs/view/pairing/PairingActivityBuilder;

    .line 56
    sget-object p1, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    .line 57
    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getMetricsManager()Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->metricsManager:Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    .line 62
    sget-object p1, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;->Companion:Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity$Companion;

    iput-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->bottomSheetBuilder:Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetBuilder;

    return-void

    .line 56
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method public static final synthetic access$getContext$p(Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;)Landroid/content/Context;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getFfsPlugin$p(Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;)Lcom/amazon/kindle/ffs/plugin/FFSPlugin;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    return-object p0
.end method

.method public static final synthetic access$getMetricsManager$p(Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;)Lcom/amazon/kindle/ffs/metrics/MetricsManager;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->metricsManager:Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    return-object p0
.end method

.method public static final synthetic access$getPairingActivityBuilder$p(Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;)Lcom/amazon/kindle/ffs/view/pairing/PairingActivityBuilder;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->pairingActivityBuilder:Lcom/amazon/kindle/ffs/view/pairing/PairingActivityBuilder;

    return-object p0
.end method

.method public static final synthetic access$setContext$p(Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;Landroid/content/Context;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$setMetricsManager$p(Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;Lcom/amazon/kindle/ffs/metrics/MetricsManager;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->metricsManager:Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    return-void
.end method

.method public static final synthetic access$setPairingActivityBuilder$p(Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;Lcom/amazon/kindle/ffs/view/pairing/PairingActivityBuilder;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->pairingActivityBuilder:Lcom/amazon/kindle/ffs/view/pairing/PairingActivityBuilder;

    return-void
.end method

.method private final buildAutoDiscoveryPresenter(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;
    .locals 1

    .line 221
    sget-object v0, Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;->INSTANCE:Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;->isUgsMockingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    sget-object v0, Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;->INSTANCE:Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;->getMockAutoDiscoveryPresenter(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;)Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter;

    move-result-object p1

    return-object p1

    .line 224
    :cond_0
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;

    invoke-direct {v0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;-><init>(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;)V

    return-object v0
.end method

.method private final getAutodiscoveryPresenter()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;
    .locals 5

    .line 68
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->mPresenter:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;

    const-string v1, "null cannot be cast to non-null type com.amazon.whisperjoin.deviceprovisioningservice.workflow.presentation.AutoDiscoveryPresenter"

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncherKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Presenter is null. Creating new one."

    invoke-interface {v0, v2, v3}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {v2}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getProvisioningServiceConfiguration$ffs_debug()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->buildAutoDiscoveryPresenter(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->mPresenter:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;

    .line 73
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncherKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attachView called against valid autoDiscovery presenter. mPresenter is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->mPresenter:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->mPresenter:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->attachView(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenterContract$View;)V

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->mPresenter:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;

    if-eqz v0, :cond_3

    :goto_0
    return-object v0

    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final saveInitTimestamp()V
    .locals 1

    .line 53
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->initTimestamp:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final getBottomSheetBuilder$ffs_debug()Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetBuilder;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->bottomSheetBuilder:Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetBuilder;

    return-object v0
.end method

.method public final getInitTimestamp()Ljava/util/Date;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->initTimestamp:Ljava/util/Date;

    return-object v0
.end method

.method public final hasBluetoothPermissions()Z
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->context:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->context:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onBottomSheetPositiveButtonClick$ffs_debug(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V
    .locals 9

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    new-instance v6, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher$onBottomSheetPositiveButtonClick$1;

    invoke-direct {v6, p0, p1}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher$onBottomSheetPositiveButtonClick$1;-><init>(Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x1f

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    return-void
.end method

.method public final restartDiscovery()V
    .locals 11

    .line 101
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncherKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "restartDiscovery called. Waiting 5 seconds before starting it again"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->stopDiscovery()V

    .line 103
    new-instance v8, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher$restartDiscovery$1;

    invoke-direct {v8, p0}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher$restartDiscovery$1;-><init>(Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x1f

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    return-void
.end method

.method public final setBottomSheetBuilder$ffs_debug(Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetBuilder;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->bottomSheetBuilder:Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetBuilder;

    return-void
.end method

.method public final setInitTimestamp(Ljava/util/Date;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->initTimestamp:Ljava/util/Date;

    return-void
.end method

.method public final showBottomSheet$ffs_debug(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V
    .locals 11

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncherKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Device found. Showing bottom sheet Activity"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    const-string v1, "sdk.readerUIManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 170
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "activity::class.java.simpleName"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "BookOpenActivity"

    .line 171
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncherKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Hey, I\'m opening a book, let\'s wait to show the bottom sheet for when the book is open"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 173
    new-instance v8, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher$showBottomSheet$1;

    invoke-direct {v8, p0, p1}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher$showBottomSheet$1;-><init>(Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V

    const/16 v9, 0x1f

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    goto/16 :goto_4

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_4

    .line 179
    sget-object v1, Lcom/amazon/kindle/ffs/view/starting/Status;->NOT_CONNECTING:Lcom/amazon/kindle/ffs/view/starting/Status;

    invoke-virtual {v1}, Lcom/amazon/kindle/ffs/view/starting/Status;->getI()I

    move-result v1

    .line 180
    sget-object v2, Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver;->Companion:Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver$Companion;

    iget-object v3, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver$Companion;->closeAllUGSActivities(Landroid/content/Context;)V

    .line 182
    iget-object v2, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    iget-object v3, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->bottomSheetBuilder:Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetBuilder;

    .line 183
    invoke-interface {v3, v0, p1, v1}, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetBuilder;->getIntentWithArguments(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 184
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bottomSheetBuilder\n     \u2026t.FLAG_ACTIVITY_NEW_TASK)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v2, v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->requireOpenActivity$ffs_debug(Landroid/content/Intent;)V

    .line 185
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->saveInitTimestamp()V

    .line 186
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncherKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UGS BottomSheet displayed"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;->getProductIndex()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v0, "q7FX"

    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Malbec"

    goto :goto_3

    :sswitch_1
    const-string v0, "kdm9"

    .line 192
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :sswitch_2
    const-string v0, "ftcm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :sswitch_3
    const-string v0, "SGCf"

    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :sswitch_4
    const-string v0, "CqDR"

    .line 192
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :sswitch_5
    const-string v0, "DJRC"

    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :sswitch_6
    const-string v0, "ChRH"

    .line 189
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Jaeger"

    goto :goto_3

    :sswitch_7
    const-string v0, "5RD9"

    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :sswitch_8
    const-string v0, "3bhb"

    .line 192
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_0
    const-string p1, "Stinger"

    goto :goto_3

    :sswitch_9
    const-string v0, "2Gxj"

    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_1
    const-string p1, "Moonshine"

    goto :goto_3

    :cond_3
    :goto_2
    const-string p1, "Unknown"

    .line 205
    :goto_3
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->metricsManager:Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, "FFS_UGS_DISCOVERED"

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportUGSFastMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 206
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->isScreenReaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 207
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->metricsManager:Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const-string v1, "FFS_UGS_DISCOVERED_AND_ASR_ON"

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportUGSFastMetrics$default(Lcom/amazon/kindle/ffs/metrics/MetricsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    nop

    :cond_4
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x17d407 -> :sswitch_9
        0x18abc9 -> :sswitch_8
        0x1953f2 -> :sswitch_7
        0x20057b -> :sswitch_6
        0x200937 -> :sswitch_5
        0x20259c -> :sswitch_4
        0x26cdd7 -> :sswitch_3
        0x301db8 -> :sswitch_2
        0x322885 -> :sswitch_1
        0x343538 -> :sswitch_0
    .end sparse-switch
.end method

.method public showDevicesForControlledSetup(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/DiscoveredDevicesViewModel;)V
    .locals 6

    .line 116
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncherKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "showDevicesForControlledSetup called."

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/DiscoveredDevicesViewModel;->getDiscoveredDevices()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevices;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevices;->getDevices()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 118
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 122
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    .line 123
    iget-object v1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncherKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "device"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;->getAdvertisedName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x7c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;->getProductIndex()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;->getDeviceIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    sget-object v1, Lcom/amazon/kindle/ffs/utils/SeenDevices;->INSTANCE:Lcom/amazon/kindle/ffs/utils/SeenDevices;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/ffs/utils/SeenDevices;->canBeProvisioned(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->stopDiscovery()V

    .line 127
    iget-object v1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncherKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This device has not been seen before ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;->getAdvertisedName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;->getProductIndex()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;->getDeviceIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "). "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Launching bottom sheet."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->showBottomSheet$ffs_debug(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V

    .line 130
    sget-object v1, Lcom/amazon/kindle/ffs/utils/SeenDevices;->INSTANCE:Lcom/amazon/kindle/ffs/utils/SeenDevices;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/ffs/utils/SeenDevices;->addAVisit(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V

    goto/16 :goto_1

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncherKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Discarding device, it\'s already been seen."

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public showDevicesIneligibleForAutomatedSetup(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/DiscoveredDevicesViewModel;)V
    .locals 2

    .line 145
    iget-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncherKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "showDevicesIneligibleForAutomatedSetup called."

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showFailure(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/FailureViewModel;)V
    .locals 2

    .line 138
    iget-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncherKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "showFailure called."

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showRecentlySetupDevices(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel;)V
    .locals 2

    .line 152
    iget-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncherKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "showRecentlySetupDevices called."

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final startDiscovery()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncherKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "startDiscovery called against valid autoDiscovery presenter."

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->getAutodiscoveryPresenter()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->startDiscovery()V

    return-void
.end method

.method public final stopDiscovery()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncherKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "stopDiscovery called against valid autoDiscovery presenter."

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->mPresenter:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->terminate()V

    :cond_0
    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->mPresenter:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;

    return-void
.end method
