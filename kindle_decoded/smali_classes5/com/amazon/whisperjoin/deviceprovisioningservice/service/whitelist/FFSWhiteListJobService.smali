.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;
.super Landroid/app/job/JobService;
.source "FFSWhiteListJobService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mMapAuthenticationProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;

.field mWhiteListPolicyCoordinator:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;

.field private mWhiteListRequestDisposable:Lio/reactivex/disposables/Disposable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .line 39
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 40
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p0}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->initializeBaseComponent(Landroid/content/Context;)V

    .line 43
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->getBaseComponent()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;->getMapAuthProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;->mMapAuthenticationProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;

    .line 44
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;->getAccount()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 45
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;->TAG:Ljava/lang/String;

    const-string v1, "Don\'t refresh whitelist since no customer logged in"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 49
    :cond_0
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->getBaseComponent()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;->getSharedPreferencesProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;->getFFSConfigurationPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->getFromSharedPreferences(Landroid/content/SharedPreferences;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    .line 52
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;->TAG:Ljava/lang/String;

    const-string v1, "No persisted ProvisioningServiceConfiguration found for FFS"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;->mWhiteListPolicyCoordinator:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;

    return-void

    .line 56
    :cond_1
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfigurationFactory;->createDefault()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

    move-result-object v1

    .line 58
    sget-object v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;->FFS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    invoke-static {v0, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->getInitializedProvisioningComponent(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->getProvisioningDependencyInjector(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesDependencyInjector;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesDependencyInjector;->inject(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;)V

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 66
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStartJob"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;->mMapAuthenticationProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;

    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;->getAccount()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 69
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;->TAG:Ljava/lang/String;

    const-string v0, "Don\'t refresh whitelist since no customer logged in"

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;->mWhiteListPolicyCoordinator:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;

    if-nez v0, :cond_1

    .line 75
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;->TAG:Ljava/lang/String;

    const-string v0, "No Policy Coordinator Found, cancelling job"

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 81
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->getWhiteListPolicy()Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;Landroid/app/job/JobParameters;)V

    .line 82
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeWith(Lio/reactivex/SingleObserver;)Lio/reactivex/SingleObserver;

    check-cast v1, Lio/reactivex/disposables/Disposable;

    iput-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;->mWhiteListRequestDisposable:Lio/reactivex/disposables/Disposable;

    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 104
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onStopJob"

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;->mWhiteListRequestDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_0

    .line 106
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 p1, 0x0

    .line 107
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;->mWhiteListRequestDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
