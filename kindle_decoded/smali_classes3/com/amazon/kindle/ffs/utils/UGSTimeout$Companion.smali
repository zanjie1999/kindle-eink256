.class public final Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;
.super Ljava/lang/Object;
.source "UGSTimeout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/ffs/utils/UGSTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$triggerTimeoutAction(Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;->triggerTimeoutAction(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V

    return-void
.end method

.method private final triggerTimeoutAction(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V
    .locals 12

    .line 73
    sget-object v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 74
    sget-object v2, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->Companion:Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner$Companion;

    invoke-virtual {v2}, Lcom/amazon/kindle/ffs/utils/SingletonHolder;->getInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;

    if-eqz p1, :cond_0

    .line 76
    sget-object v3, Lcom/amazon/kindle/ffs/utils/SeenDevices;->INSTANCE:Lcom/amazon/kindle/ffs/utils/SeenDevices;

    invoke-virtual {v3, p1}, Lcom/amazon/kindle/ffs/utils/SeenDevices;->subtractAVisit(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V

    .line 78
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->access$getActualScreen$cp()Lcom/amazon/kindle/ffs/utils/Screen;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_b

    const/high16 v4, 0x10000000

    const/4 v5, 0x2

    if-eq v3, v5, :cond_a

    const/4 p1, 0x3

    if-eq v3, p1, :cond_1

    goto/16 :goto_0

    .line 98
    :cond_1
    sget-object v3, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->INSTANCE:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;

    invoke-virtual {v3}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    const-string v6, "WiFiListActivity:statusKey"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 100
    invoke-static {}, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->access$getLogger$cp()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    invoke-static {}, Lcom/amazon/kindle/ffs/utils/UGSTimeoutKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "I\'m trying to fire a timeout in WiFi List but there\'s no bundle"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 103
    :cond_2
    sget-object v3, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->INSTANCE:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;

    invoke-virtual {v3}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    const-string v7, "WiFiListState.bundle.getString(STATUS_KEY)!!"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

    move-result-object v3

    .line 105
    invoke-static {}, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->access$getLogger$cp()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v8

    invoke-static {}, Lcom/amazon/kindle/ffs/utils/UGSTimeoutKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Firing timeout with bundle with state "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->INSTANCE:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;

    invoke-virtual {v11}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->getBundle()Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v9, v6}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v6, Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v6, v3

    if-eq v3, v5, :cond_7

    if-eq v3, p1, :cond_5

    const/4 p1, 0x4

    if-eq v3, p1, :cond_3

    goto/16 :goto_0

    .line 135
    :cond_3
    invoke-static {}, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->access$getMetricsManager$cp()Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v5, "FFS_UGS_TIMEOUT_WIFI_LIST_CONNECTING"

    invoke-virtual/range {v4 .. v9}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportUGSFastMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 136
    invoke-static {}, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->access$getLogger$cp()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    invoke-static {}, Lcom/amazon/kindle/ffs/utils/UGSTimeoutKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v3, "We are in wifi connecting screen, so we show an timeout message"

    invoke-interface {p1, v0, v3}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance p1, Lcom/amazon/kindle/ffs/view/WJTimeoutError;

    invoke-direct {p1}, Lcom/amazon/kindle/ffs/view/WJTimeoutError;-><init>()V

    .line 139
    invoke-virtual {v2}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->stopSetup()V

    .line 140
    invoke-virtual {v2}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->getActualIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v1, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity;->Companion:Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity$Companion;

    invoke-virtual {v1, v0, p1}, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity$Companion;->addError(Landroid/content/Intent;Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;)Landroid/content/Intent;

    move-result-object v1

    :cond_4
    invoke-virtual {v2, v1}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->requireOpenActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 125
    :cond_5
    invoke-static {}, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->access$getMetricsManager$cp()Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v4, "FFS_UGS_TIMEOUT_WIFI_LIST_SELECTION"

    invoke-virtual/range {v3 .. v8}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportUGSFastMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 126
    invoke-static {}, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->access$getLogger$cp()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    invoke-static {}, Lcom/amazon/kindle/ffs/utils/UGSTimeoutKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v3, "We are in wifi selection screen, so we show an timeout message"

    invoke-interface {p1, v0, v3}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance p1, Lcom/amazon/kindle/ffs/view/WJTimeoutError;

    invoke-direct {p1}, Lcom/amazon/kindle/ffs/view/WJTimeoutError;-><init>()V

    .line 131
    invoke-virtual {v2}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->stopSetup()V

    .line 132
    invoke-virtual {v2}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->getActualIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v1, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity;->Companion:Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity$Companion;

    invoke-virtual {v1, v0, p1}, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity$Companion;->addError(Landroid/content/Intent;Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;)Landroid/content/Intent;

    move-result-object v1

    :cond_6
    invoke-virtual {v2, v1}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->requireOpenActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 115
    :cond_7
    invoke-static {}, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->access$getMetricsManager$cp()Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v7, "FFS_UGS_TIMEOUT_WIFI_LIST_SCANNING"

    invoke-virtual/range {v6 .. v11}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportUGSFastMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 116
    invoke-static {}, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->access$getLogger$cp()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    invoke-static {}, Lcom/amazon/kindle/ffs/utils/UGSTimeoutKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v3, "We are in scanning screen, so we show an error message"

    invoke-interface {p1, v1, v3}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance p1, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    const/4 v1, 0x0

    invoke-direct {p1, v5, v1, v1, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;-><init>(IIII)V

    .line 121
    invoke-virtual {v2}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->stopSetup()V

    .line 122
    sget-object v1, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity;->Companion:Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity$Companion;

    invoke-static {}, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->access$getWiFiListActivityBuilder$cp()Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityBuilder;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityBuilder;->getIntentWithArgumentsForScanning(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "wiFiListActivityBuilder.\u2026t.FLAG_ACTIVITY_NEW_TASK)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p1}, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity$Companion;->addError(Landroid/content/Intent;Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 105
    :cond_8
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 103
    :cond_9
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 88
    :cond_a
    invoke-static {}, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->access$getMetricsManager$cp()Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v6, "FFS_UGS_TIMEOUT_PAIRING"

    invoke-virtual/range {v5 .. v10}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportUGSFastMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 89
    invoke-static {}, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->access$getLogger$cp()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v1

    invoke-static {}, Lcom/amazon/kindle/ffs/utils/UGSTimeoutKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v3

    const-string v5, "We are in pairing screen, so we show a bluetooth connection error popup message"

    invoke-interface {v1, v3, v5}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v2}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->stopSetup()V

    if-eqz p1, :cond_c

    .line 94
    sget-object v1, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity;->Companion:Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity$Companion;

    invoke-static {}, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->access$getPairingActivityBuilder$cp()Lcom/amazon/kindle/ffs/view/pairing/PairingActivityBuilder;

    move-result-object v2

    invoke-interface {v2, v0, p1}, Lcom/amazon/kindle/ffs/view/pairing/PairingActivityBuilder;->getIntentWithArguments(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const-string v2, "pairingActivityBuilder.g\u2026t.FLAG_ACTIVITY_NEW_TASK)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/amazon/kindle/ffs/view/WJTimeoutError;

    invoke-direct {v2}, Lcom/amazon/kindle/ffs/view/WJTimeoutError;-><init>()V

    invoke-virtual {v1, p1, v2}, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity$Companion;->addError(Landroid/content/Intent;Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 80
    :cond_b
    invoke-static {}, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->access$getMetricsManager$cp()Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v4, "FFS_UGS_TIMEOUT_DISCOVERY"

    invoke-virtual/range {v3 .. v8}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportUGSFastMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 81
    invoke-static {}, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->access$getLogger$cp()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    invoke-static {}, Lcom/amazon/kindle/ffs/utils/UGSTimeoutKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "We are in discovery screen, so we restart UGS"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v2}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->restartSetup()V

    :cond_c
    :goto_0
    return-void

    .line 73
    :cond_d
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method


# virtual methods
.method public final keepDiscoveryScreenReference()V
    .locals 1

    .line 164
    sget-object v0, Lcom/amazon/kindle/ffs/utils/Screen;->DISCOVERY:Lcom/amazon/kindle/ffs/utils/Screen;

    invoke-static {v0}, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->access$setActualScreen$cp(Lcom/amazon/kindle/ffs/utils/Screen;)V

    return-void
.end method

.method public final keepPairingScreenReference()V
    .locals 1

    .line 160
    sget-object v0, Lcom/amazon/kindle/ffs/utils/Screen;->PAIRING:Lcom/amazon/kindle/ffs/utils/Screen;

    invoke-static {v0}, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->access$setActualScreen$cp(Lcom/amazon/kindle/ffs/utils/Screen;)V

    return-void
.end method

.method public final keepWiFiListScreenReference()V
    .locals 1

    .line 168
    sget-object v0, Lcom/amazon/kindle/ffs/utils/Screen;->WIFI_LIST:Lcom/amazon/kindle/ffs/utils/Screen;

    invoke-static {v0}, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->access$setActualScreen$cp(Lcom/amazon/kindle/ffs/utils/Screen;)V

    return-void
.end method

.method public final startTimeout(JLcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V
    .locals 11

    .line 55
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;->stopExistingTimeout()V

    .line 56
    invoke-static {}, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->access$getLogger$cp()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kindle/ffs/utils/UGSTimeoutKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting a new timeout for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3e8

    int-to-long v3, v3

    div-long v3, p1, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x73

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v8, Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion$startTimeout$1;

    invoke-direct {v8, p1, p2, p3}, Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion$startTimeout$1;-><init>(JLcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x1f

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->access$setTimeout$cp(Ljava/lang/Thread;)V

    return-void
.end method

.method public final stopExistingTimeout()V
    .locals 4

    .line 152
    invoke-static {}, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->access$getTimeout$cp()Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->access$getTimeout$cp()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 153
    sget-object v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amazon/kindle/ffs/utils/UGSTimeoutKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Stopping existing timeouts"

    invoke-interface {v0, v2, v3}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->access$getTimeout$cp()Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 155
    :cond_2
    invoke-static {v1}, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->access$setTimeout$cp(Ljava/lang/Thread;)V

    goto :goto_1

    .line 152
    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_4
    :goto_1
    return-void
.end method
