.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;
.super Landroid/app/job/JobService;
.source "FFSArcusSyncJobService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field mFFSArcusSyncCoordinator:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

.field mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;->broadcastModifiedArcusSettings(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;)V

    return-void
.end method

.method private broadcastModifiedArcusSettings(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;)V
    .locals 2

    .line 131
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;->TAG:Ljava/lang/String;

    const-string v1, "Broadcasting modified Arcus settings"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 133
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->writeToBundle(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;Landroid/os/Bundle;)V

    .line 134
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.amazon.whisperjoin.deviceprovisioningservice.ArcusUpdate.Action"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 136
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;->mContext:Landroid/content/Context;

    const-string v1, "com.amazon.whisperjoin.deviceprovisioningservice.ArcusUpdate.Permission"

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method internalJobFinished(Landroid/app/job/JobParameters;Z)V
    .locals 0

    .line 127
    invoke-virtual {p0, p1, p2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public onCreate()V
    .locals 5

    .line 46
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 47
    invoke-virtual {p0}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;->mContext:Landroid/content/Context;

    .line 48
    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->initializeBaseComponent(Landroid/content/Context;)V

    .line 50
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->getBaseComponent()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;->getMapAuthProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;->getAccount()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;->TAG:Ljava/lang/String;

    const-string v1, "Don\'t refresh arcus since no customer logged in"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Landroid/app/job/JobService;->stopSelf()V

    return-void

    .line 57
    :cond_0
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->getBaseComponent()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;->getSharedPreferencesProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;->getFFSConfigurationPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->getFromSharedPreferences(Landroid/content/SharedPreferences;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    .line 60
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;->TAG:Ljava/lang/String;

    const-string v1, "No persisted ProvisioningServiceConfiguration found for FFS"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0}, Landroid/app/job/JobService;->stopSelf()V

    return-void

    .line 65
    :cond_1
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;

    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->getBaseComponent()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    move-result-object v2

    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfigurationFactory;->createDefault()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

    move-result-object v3

    sget-object v4, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;->FFS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;)V

    .line 66
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;->getDependencyInjector()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesDependencyInjector;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesDependencyInjector;->inject(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;)V

    .line 68
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;->mFFSArcusSyncCoordinator:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;->initializeWithProvisionerClientData(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .line 73
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStartJob"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;->mFFSArcusSyncCoordinator:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;->internalJobFinished(Landroid/app/job/JobParameters;Z)V

    return v1

    .line 83
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->getData()Lio/reactivex/Single;

    move-result-object v0

    new-instance v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService$1;

    invoke-direct {v2, p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;Landroid/app/job/JobParameters;)V

    .line 84
    invoke-virtual {v0, v2}, Lio/reactivex/Single;->subscribeWith(Lio/reactivex/SingleObserver;)Lio/reactivex/SingleObserver;

    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 112
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onStopJob"

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method setContext(Landroid/content/Context;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;->mContext:Landroid/content/Context;

    return-void
.end method
