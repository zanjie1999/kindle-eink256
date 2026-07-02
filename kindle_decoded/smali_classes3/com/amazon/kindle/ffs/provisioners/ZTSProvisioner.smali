.class public final Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;
.super Ljava/lang/Object;
.source "ZTSProvisioner.kt"

# interfaces
.implements Lcom/amazon/kindle/ffs/provisioners/FFSProvisioner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner$ProvisioningServiceConnection;,
        Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nZTSProvisioner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZTSProvisioner.kt\ncom/amazon/kindle/ffs/provisioners/ZTSProvisioner\n*L\n1#1,115:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner$Companion;

.field private static final defaultFFSEventListenerSupplier:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/amazon/kindle/krx/logging/ILogger;",
            "Lcom/amazon/kindle/ffs/logging/FFSEventListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;

.field private final ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

.field private final logger:Lcom/amazon/kindle/krx/logging/ILogger;

.field private final mFFSEventListener:Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback$Stub;

.field private mService:Lcom/amazon/whisperjoin/deviceprovisioningservice/DeviceProvisioningServiceInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->Companion:Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner$Companion;

    .line 34
    sget-object v0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner$Companion$defaultFFSEventListenerSupplier$1;->INSTANCE:Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner$Companion$defaultFFSEventListenerSupplier$1;

    sput-object v0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->defaultFFSEventListenerSupplier:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/krx/logging/ILogger;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/kindle/krx/logging/ILogger;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amazon/kindle/krx/logging/ILogger;",
            "+",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback$Stub;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ffsEventListenerSupplier"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    .line 39
    invoke-interface {p3, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback$Stub;

    iput-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->mFFSEventListener:Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback$Stub;

    .line 40
    sget-object p1, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    return-void

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/krx/logging/ILogger;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 31
    sget-object p3, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->defaultFFSEventListenerSupplier:Lkotlin/jvm/functions/Function1;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/logging/ILogger;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$getLogger$p(Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;)Lcom/amazon/kindle/krx/logging/ILogger;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    return-object p0
.end method

.method private final startFFSScanning()V
    .locals 3

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->mService:Lcom/amazon/whisperjoin/deviceprovisioningservice/DeviceProvisioningServiceInterface;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->mFFSEventListener:Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback$Stub;

    invoke-interface {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/DeviceProvisioningServiceInterface;->addCallback(Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback;)Z

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->mService:Lcom/amazon/whisperjoin/deviceprovisioningservice/DeviceProvisioningServiceInterface;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {v1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getProvisioningServiceConfiguration$ffs_debug()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/DeviceProvisioningServiceInterface;->start(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;)Z

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisionerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Started scanning"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisionerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot start ZTS scan. Lost connection with ZTS background service"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final startFFSService()V
    .locals 5

    .line 64
    new-instance v0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner$ProvisioningServiceConnection;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner$ProvisioningServiceConnection;-><init>(Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;)V

    .line 66
    iget-object v1, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisionerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Launching provisioning service"

    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.amazon.whisperjoin.deviceprovisioningservice.BindService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    iget-object v2, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 70
    iget-object v3, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {v3}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getProvisioningServiceConfiguration$ffs_debug()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->writeToBundle(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 72
    iget-object v2, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 73
    iget-object v2, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisionerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Provisioning service started"

    invoke-interface {v2, v3, v4}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v2, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->context:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 75
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisionerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Provisioning service bound"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getMService()Lcom/amazon/whisperjoin/deviceprovisioningservice/DeviceProvisioningServiceInterface;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->mService:Lcom/amazon/whisperjoin/deviceprovisioningservice/DeviceProvisioningServiceInterface;

    return-object v0
.end method

.method public final hasBluetoothPermissions()Z
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->context:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->context:Landroid/content/Context;

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

.method public provision()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisionerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Provisioning start"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->hasBluetoothPermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisionerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User has bluetooth permissions, starting FFS scan"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->startFFSService()V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisionerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "App has no bluetooth permissions. Aborting..."

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final setMService(Lcom/amazon/whisperjoin/deviceprovisioningservice/DeviceProvisioningServiceInterface;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->mService:Lcom/amazon/whisperjoin/deviceprovisioningservice/DeviceProvisioningServiceInterface;

    if-eqz p1, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->startFFSScanning()V

    :cond_0
    return-void
.end method

.method public final stopProvisioning()V
    .locals 8

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getMetricsManager()Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    move-result-object v1

    const-string v2, "FFS_ZTS_STOPPED"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportZTSFastMetrics$default(Lcom/amazon/kindle/ffs/metrics/MetricsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisionerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Stopped scanning"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->mService:Lcom/amazon/whisperjoin/deviceprovisioningservice/DeviceProvisioningServiceInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/DeviceProvisioningServiceInterface;->shutdown()Z
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisionerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot stop ZTS scan. Lost connection with ZTS background service"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
