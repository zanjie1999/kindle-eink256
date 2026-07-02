.class public final Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandler;
.super Ljava/lang/Object;
.source "FFSItemToggleHandler.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/template/OnToggleHandler;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFFSItemToggleHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FFSItemToggleHandler.kt\ncom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandler\n*L\n1#1,88:1\n*E\n"
.end annotation


# instance fields
.field private final ffsHelper:Lcom/amazon/kindle/ffs/utils/FfsHelper;

.field private final logger$delegate:Lkotlin/Lazy;

.field private final metrics$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-class v0, Lcom/amazon/kindle/ffs/utils/FfsHelper;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/ffs/utils/FfsHelper;

    iput-object v0, p0, Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandler;->ffsHelper:Lcom/amazon/kindle/ffs/utils/FfsHelper;

    .line 35
    sget-object v0, Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandler$logger$2;->INSTANCE:Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandler$logger$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandler;->logger$delegate:Lkotlin/Lazy;

    .line 36
    sget-object v0, Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandler$metrics$2;->INSTANCE:Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandler$metrics$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandler;->metrics$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final activateFFSFunction()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandler;->ffsHelper:Lcom/amazon/kindle/ffs/utils/FfsHelper;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/ffs/utils/FfsHelper;->activateFFS()V

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandler;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "FFSPlugin"

    const-string v2, "Starting FFS from settings page"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandler;->getMetrics()Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const-string v2, "FFS_STARTED_WITH_NO_ISSUES"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportSettingsMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private final askForLocationPermissions(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 3

    .line 64
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandler;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "FFSPlugin"

    const-string v2, "User wants FFS to start but doesn\'t have proper permissions. Asking..."

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 66
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final deactivateFFSFunction()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandler;->ffsHelper:Lcom/amazon/kindle/ffs/utils/FfsHelper;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/ffs/utils/FfsHelper;->deactivateFFS()V

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandler;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "FFSPlugin"

    const-string v2, "Stopping FFS from settings page"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandler;->getMetrics()Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const-string v2, "FFS_DISABLE"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportSettingsMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private final getLogger()Lcom/amazon/kindle/krx/logging/ILogger;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandler;->logger$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/logging/ILogger;

    return-object v0
.end method

.method private final getMetrics()Lcom/amazon/kindle/ffs/metrics/MetricsManager;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandler;->metrics$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    return-object v0
.end method


# virtual methods
.method public onToggle(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_2

    .line 51
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandler;->getMetrics()Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    const-string v1, "FFS_TOGGLE"

    invoke-virtual {p2, v1, v0}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportSettingsMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/ffs/extensions/FragmentActivityExtensionsKt;->hasLocationPermission(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 53
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandler;->activateFFSFunction()V

    goto :goto_0

    .line 55
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandler;->askForLocationPermissions(Landroidx/appcompat/app/AppCompatActivity;)V

    goto :goto_0

    .line 58
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandler;->deactivateFFSFunction()V

    :goto_0
    return-void
.end method
