.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;
.super Landroid/app/Service;
.source "FFSBackgroundProvisioningServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$FFSServiceActionReceiver;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ClientEventDispatch;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ServiceInterface;
    }
.end annotation


# static fields
.field private static final PREF_NAME:Ljava/lang/String; = "FFSBackgroundProvisioningServiceBinder"

.field private static final PREF_SHUTDOWN_BY_CLIENT:Ljava/lang/String; = "ShutdownByClient"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mEventDispatch:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ClientEventDispatch;

.field private mFFSProvisioningService:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

.field private mFFSServiceActionReceiver:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$FFSServiceActionReceiver;

.field mMapAuthenticationProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;

.field private mProvisioningServiceConfiguration:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

.field private mServiceInterface:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ServiceInterface;

.field mSharedPreferencesProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 32
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ClientEventDispatch;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ClientEventDispatch;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$1;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->mEventDispatch:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ClientEventDispatch;

    .line 34
    iput-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->mFFSProvisioningService:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->mFFSProvisioningService:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->logAIDLException(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;Z)Z
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->startFFSService(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ClientEventDispatch;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->mEventDispatch:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ClientEventDispatch;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;Z)Z
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->stopFFSService(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->mProvisioningServiceConfiguration:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    return-object p0
.end method

.method private attemptRestartFFS(Landroid/content/Intent;)V
    .locals 8

    .line 117
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->getFromSharedPreferences(Landroid/content/SharedPreferences;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    move-result-object v0

    .line 118
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "ShutdownByClient"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 120
    sget-object v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v7, 0x2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "attemptRestartFFS - Existing Configuration: %b. Shutdown By Client: %b. Binder Service Restarted After Being Killed: %b."

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 123
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->TAG:Ljava/lang/String;

    const-string v1, "Attempting restart of FFS"

    invoke-static {p1, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-direct {p0, v0, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->startFFSService(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;Z)Z

    move-result p1

    .line 127
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FFS successfully restarted after being killed by system: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 129
    :cond_2
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->TAG:Ljava/lang/String;

    const-string v0, "Not attempting restart of FFS"

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private getPreferences()Landroid/content/SharedPreferences;
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->mSharedPreferencesProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;

    const-string v1, "FFSBackgroundProvisioningServiceBinder"

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;->get(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private initFFSServiceActionReceiver()V
    .locals 4

    .line 336
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->TAG:Ljava/lang/String;

    const-string v1, "initFFSServiceActionReceiver"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$FFSServiceActionReceiver;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$FFSServiceActionReceiver;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->mFFSServiceActionReceiver:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$FFSServiceActionReceiver;

    .line 340
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.amazon.whisperjoin.deviceprovisioningservice.FFSServiceAction.StartFFS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.amazon.whisperjoin.deviceprovisioningservice.FFSServiceAction.StopFFS"

    .line 341
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 342
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->mFFSServiceActionReceiver:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$FFSServiceActionReceiver;

    const-string v2, "com.amazon.whisperjoin.deviceprovisioningservice.FFSServiceAction.permission"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private logAIDLException(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 4

    .line 202
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const-string p2, "An exception occurred while executing method %s. Exception: %s, RootCause: %s"

    invoke-static {v1, p2, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private startFFSService(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;Z)Z
    .locals 5

    if-eqz p1, :cond_2

    .line 149
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->mProvisioningServiceConfiguration:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    .line 151
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->mMapAuthenticationProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;

    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;->getAccount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const-string/jumbo v4, "startFFSService - startedByClient: %b, configuration: %s"

    invoke-static {v1, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->mFFSProvisioningService:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/RemoteClientProvisioningEventListener;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->mEventDispatch:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ClientEventDispatch;

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/RemoteClientProvisioningEventListener;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback;)V

    invoke-direct {v0, p1, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ProvisioningEventListener;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->mFFSProvisioningService:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    .line 162
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->TAG:Ljava/lang/String;

    const-string v1, "Starting FFS Provisioning Service"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->mFFSProvisioningService:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->start()V

    .line 167
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ShutdownByClient"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 168
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->writeToSharedPreferences(Landroid/content/SharedPreferences$Editor;)V

    return p2

    .line 171
    :cond_0
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->TAG:Ljava/lang/String;

    const-string p2, "FFS Service not started because its already running"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 152
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FFS can\'t be started if a customer is not logged in"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 146
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "provisioningServiceConfiguration can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private stopFFSService(Z)Z
    .locals 6

    .line 185
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "stopFFSService - shutdownByClient :%b"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "ShutdownByClient"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->mFFSProvisioningService:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    if-eqz p1, :cond_1

    .line 191
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->shutdown()V

    const/4 p1, 0x0

    .line 192
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->mFFSProvisioningService:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    :cond_1
    return v2
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .line 86
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBind: Intent - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->mServiceInterface:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ServiceInterface;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 51
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->initializeBaseComponent(Landroid/content/Context;)V

    .line 52
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->getBaseDependencyInjector()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseDependencyInjector;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseDependencyInjector;->inject(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;)V

    .line 54
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->initFFSServiceActionReceiver()V

    .line 56
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 57
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ServiceInterface;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ServiceInterface;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->mServiceInterface:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ServiceInterface;

    .line 58
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 66
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 67
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->stopFFSService(Z)Z

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->mServiceInterface:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$ServiceInterface;

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->mFFSServiceActionReceiver:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$FFSServiceActionReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2

    .line 80
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->TAG:Ljava/lang/String;

    const-string v1, "onRebind"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .line 101
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 102
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    if-nez p1, :cond_0

    const-string v3, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v2, p3

    const-string/jumbo p2, "onStartCommand - Intent: %s. Flags: %d. StartId: %d."

    invoke-static {v1, p2, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->attemptRestartFFS(Landroid/content/Intent;)V

    return p3
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3

    .line 92
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnbind - Intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
