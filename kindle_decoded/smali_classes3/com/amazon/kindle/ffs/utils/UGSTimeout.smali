.class public final Lcom/amazon/kindle/ffs/utils/UGSTimeout;
.super Ljava/lang/Object;
.source "UGSTimeout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;

.field private static actualScreen:Lcom/amazon/kindle/ffs/utils/Screen;

.field private static logger:Lcom/amazon/kindle/krx/logging/ILogger;

.field private static metricsManager:Lcom/amazon/kindle/ffs/metrics/MetricsManager;

.field private static pairingActivityBuilder:Lcom/amazon/kindle/ffs/view/pairing/PairingActivityBuilder;

.field private static timeout:Ljava/lang/Thread;

.field private static wiFiListActivityBuilder:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->Companion:Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;

    .line 37
    sget-object v0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;->Companion:Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$Companion;

    sput-object v0, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->pairingActivityBuilder:Lcom/amazon/kindle/ffs/view/pairing/PairingActivityBuilder;

    .line 38
    sget-object v0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;->Companion:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity$Companion;

    sput-object v0, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->wiFiListActivityBuilder:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityBuilder;

    .line 39
    sget-object v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    .line 40
    sget-object v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getMetricsManager()Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->metricsManager:Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    .line 47
    sget-object v0, Lcom/amazon/kindle/ffs/utils/Screen;->DISCOVERY:Lcom/amazon/kindle/ffs/utils/Screen;

    sput-object v0, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->actualScreen:Lcom/amazon/kindle/ffs/utils/Screen;

    return-void

    .line 40
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 39
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getActualScreen$cp()Lcom/amazon/kindle/ffs/utils/Screen;
    .locals 1

    .line 32
    sget-object v0, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->actualScreen:Lcom/amazon/kindle/ffs/utils/Screen;

    return-object v0
.end method

.method public static final synthetic access$getLogger$cp()Lcom/amazon/kindle/krx/logging/ILogger;
    .locals 1

    .line 32
    sget-object v0, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    return-object v0
.end method

.method public static final synthetic access$getMetricsManager$cp()Lcom/amazon/kindle/ffs/metrics/MetricsManager;
    .locals 1

    .line 32
    sget-object v0, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->metricsManager:Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    return-object v0
.end method

.method public static final synthetic access$getPairingActivityBuilder$cp()Lcom/amazon/kindle/ffs/view/pairing/PairingActivityBuilder;
    .locals 1

    .line 32
    sget-object v0, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->pairingActivityBuilder:Lcom/amazon/kindle/ffs/view/pairing/PairingActivityBuilder;

    return-object v0
.end method

.method public static final synthetic access$getTimeout$cp()Ljava/lang/Thread;
    .locals 1

    .line 32
    sget-object v0, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->timeout:Ljava/lang/Thread;

    return-object v0
.end method

.method public static final synthetic access$getWiFiListActivityBuilder$cp()Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityBuilder;
    .locals 1

    .line 32
    sget-object v0, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->wiFiListActivityBuilder:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityBuilder;

    return-object v0
.end method

.method public static final synthetic access$setActualScreen$cp(Lcom/amazon/kindle/ffs/utils/Screen;)V
    .locals 0

    .line 32
    sput-object p0, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->actualScreen:Lcom/amazon/kindle/ffs/utils/Screen;

    return-void
.end method

.method public static final synthetic access$setLogger$cp(Lcom/amazon/kindle/krx/logging/ILogger;)V
    .locals 0

    .line 32
    sput-object p0, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    return-void
.end method

.method public static final synthetic access$setMetricsManager$cp(Lcom/amazon/kindle/ffs/metrics/MetricsManager;)V
    .locals 0

    .line 32
    sput-object p0, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->metricsManager:Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    return-void
.end method

.method public static final synthetic access$setPairingActivityBuilder$cp(Lcom/amazon/kindle/ffs/view/pairing/PairingActivityBuilder;)V
    .locals 0

    .line 32
    sput-object p0, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->pairingActivityBuilder:Lcom/amazon/kindle/ffs/view/pairing/PairingActivityBuilder;

    return-void
.end method

.method public static final synthetic access$setTimeout$cp(Ljava/lang/Thread;)V
    .locals 0

    .line 32
    sput-object p0, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->timeout:Ljava/lang/Thread;

    return-void
.end method

.method public static final synthetic access$setWiFiListActivityBuilder$cp(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityBuilder;)V
    .locals 0

    .line 32
    sput-object p0, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->wiFiListActivityBuilder:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityBuilder;

    return-void
.end method
