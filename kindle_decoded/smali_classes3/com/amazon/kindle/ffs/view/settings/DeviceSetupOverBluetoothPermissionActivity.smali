.class public final Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PermissionActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPermissionActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PermissionActivity.kt\ncom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity\n*L\n1#1,170:1\n*E\n"
.end annotation


# instance fields
.field private final ffsHelper:Lcom/amazon/kindle/ffs/utils/FfsHelper;

.field private final logger$delegate:Lkotlin/Lazy;

.field private final metrics$delegate:Lkotlin/Lazy;

.field private workflowType:Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 30
    const-class v0, Lcom/amazon/kindle/ffs/utils/FfsHelper;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/ffs/utils/FfsHelper;

    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity;->ffsHelper:Lcom/amazon/kindle/ffs/utils/FfsHelper;

    .line 31
    sget-object v0, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$logger$2;->INSTANCE:Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$logger$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity;->logger$delegate:Lkotlin/Lazy;

    .line 32
    sget-object v0, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$metrics$2;->INSTANCE:Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$metrics$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity;->metrics$delegate:Lkotlin/Lazy;

    .line 33
    sget-object v0, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;->Ask:Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;

    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity;->workflowType:Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;

    return-void
.end method

.method private final askForPermissions()V
    .locals 3

    .line 76
    sget-object v0, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;->Ask:Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;

    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity;->workflowType:Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;

    .line 77
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "FFSPlugin"

    const-string v2, "We immediately ask for Location Permissions since Rationale is not necessary"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    invoke-static {p0}, Lcom/amazon/kindle/ffs/extensions/FragmentActivityExtensionsKt;->requestLocationPermission(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method private final emitMetrics(Z)V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity;->workflowType:Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;

    sget-object v1, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "FFS_PERMISSIONS_ACCEPTED_AFTER_RATIONALE"

    goto :goto_0

    :cond_0
    const-string p1, "FFS_PERMISSIONS_REJECTED_AFTER_RATIONALE"

    goto :goto_0

    .line 160
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_2
    if-eqz p1, :cond_3

    const-string p1, "FFS_PERMISSIONS_ACCEPTED_AT_FIRST"

    goto :goto_0

    :cond_3
    const-string p1, "FFS_PERMISSIONS_DENIED_AT_FIRST"

    .line 168
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity;->getMetrics()Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportSettingsMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private final getLogger()Lcom/amazon/kindle/krx/logging/ILogger;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity;->logger$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/logging/ILogger;

    return-object v0
.end method

.method private final getMetrics()Lcom/amazon/kindle/ffs/metrics/MetricsManager;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity;->metrics$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    return-object v0
.end method

.method private final onPermissionsDenied()V
    .locals 4

    .line 117
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "FFSPlugin"

    const-string v2, "User denied location permissions for FFS to start"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity;->ffsHelper:Lcom/amazon/kindle/ffs/utils/FfsHelper;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kindle/ffs/utils/FfsHelper;->deactivateFFS()V

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity;->workflowType:Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;

    sget-object v1, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;->Rationale:Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 121
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_3

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 122
    invoke-virtual {p0, v1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    :cond_3
    if-nez v2, :cond_5

    if-eqz v0, :cond_4

    goto :goto_1

    .line 130
    :cond_4
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity;->showSettingsDialog()V

    goto :goto_2

    .line 128
    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_2
    return-void
.end method

.method private final onPermissionsGranted()V
    .locals 3

    .line 106
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "FFSPlugin"

    const-string v2, "User granted location permissions for FFS to start"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity;->ffsHelper:Lcom/amazon/kindle/ffs/utils/FfsHelper;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kindle/ffs/utils/FfsHelper;->activateFFS()V

    .line 108
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private final shouldShowEducationalUI()Z
    .locals 2

    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 139
    invoke-virtual {p0, v0}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final showRationaleDialog()V
    .locals 3

    .line 96
    sget-object v0, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;->Rationale:Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;

    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity;->workflowType:Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity$WorkflowType;

    .line 97
    new-instance v0, Lcom/amazon/kindle/ffs/view/settings/RationaleFragment;

    invoke-direct {v0}, Lcom/amazon/kindle/ffs/view/settings/RationaleFragment;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "DeviceSetupOverBluetoothDialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity;->getMetrics()Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "FFS_RATIONALE_SHOWN"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportSettingsMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final showSettingsDialog()V
    .locals 3

    .line 87
    new-instance v0, Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment;

    invoke-direct {v0}, Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "DeviceSetupOverBluetoothDialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity;->getMetrics()Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "FFS_SETTINGS_RATIONALE_SHOWN"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportSettingsMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget p1, Lcom/amazon/kindle/ffs/R$layout;->invisible_activity:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 39
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity;->shouldShowEducationalUI()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity;->showRationaleDialog()V

    goto :goto_0

    .line 42
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity;->askForPermissions()V

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x1b9d9

    if-eq p1, v0, :cond_0

    .line 68
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_2

    .line 58
    :cond_0
    array-length p1, p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    aget p1, p3, v1

    if-nez p1, :cond_1

    aget-object p1, p2, v1

    const-string p2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 61
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity;->onPermissionsGranted()V

    goto :goto_1

    .line 63
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity;->onPermissionsDenied()V

    .line 66
    :goto_1
    invoke-direct {p0, v0}, Lcom/amazon/kindle/ffs/view/settings/DeviceSetupOverBluetoothPermissionActivity;->emitMetrics(Z)V

    :goto_2
    return-void
.end method
