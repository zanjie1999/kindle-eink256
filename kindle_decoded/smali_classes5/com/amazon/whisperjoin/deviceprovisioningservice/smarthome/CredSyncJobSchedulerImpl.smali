.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobSchedulerImpl;
.super Ljava/lang/Object;
.source "CredSyncJobSchedulerImpl.java"

# interfaces
.implements Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobScheduler;


# static fields
.field private static final CRED_SYNC_JOB_ID:I = 0xcd807

.field private static final TAG:Ljava/lang/String; = "CredSyncJobSchedulerImpl"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobSchedulerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public scheduleCredSyncRun(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .line 43
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->initializeBaseComponent(Landroid/content/Context;)V

    .line 45
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->getBaseComponent()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;->getMapAuthProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;

    move-result-object v0

    .line 46
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;->getAccount()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 47
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobSchedulerImpl;->TAG:Ljava/lang/String;

    const-string p2, "Don\'t refresh credentials since no customer logged in"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 51
    :cond_0
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->getBaseComponent()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;->getSharedPreferencesProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;->getFFSConfigurationPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->getFromSharedPreferences(Landroid/content/SharedPreferences;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    .line 55
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobSchedulerImpl;->TAG:Ljava/lang/String;

    const-string p2, "Configuration not saved yet, not running credentials sync service"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 59
    :cond_1
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfigurationFactory;->createDefault()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

    move-result-object v1

    .line 60
    sget-object v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;->FFS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    invoke-static {v0, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->getInitializedProvisioningComponent(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->getBaseComponent()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;->getFFSArcusSyncCoordinator()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

    move-result-object v1

    .line 64
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->providesProvisionerClientData()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;->initializeWithProvisionerClientData(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V

    .line 65
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->getBaseComponent()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;->getJobInfoProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;

    move-result-object v5

    .line 66
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->getBaseComponent()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v7

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_2

    .line 71
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x1

    const-string/jumbo v1, "oneOffRefresh"

    .line 72
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "source"

    const-string v1, "S2DM"

    .line 73
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 77
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobSchedulerImpl;->TAG:Ljava/lang/String;

    const-string p2, "Started credential refresh service."

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 82
    :cond_2
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;->getFFSArcusSettings()Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobSchedulerImpl$2;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobSchedulerImpl$2;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobSchedulerImpl;Ljava/lang/String;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;Landroid/content/Context;Landroid/app/job/JobScheduler;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->flatMapCompletable(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object p1

    new-instance p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobSchedulerImpl$1;

    invoke-direct {p2, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobSchedulerImpl$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobSchedulerImpl;)V

    .line 114
    invoke-virtual {p1, p2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/CompletableObserver;)V

    return-void
.end method
