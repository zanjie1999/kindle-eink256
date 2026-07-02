.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;
.super Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;
.source "AssociatedDeviceCredentialsSyncCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final SHARED_PREF:Ljava/lang/String; = "AssociatedDeviceCredentialSync"

.field private static final TAG:Ljava/lang/String; = "AssociatedDeviceCredentialsSyncCoordinator"


# instance fields
.field private final mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

.field private final mGson:Lcom/google/gson/Gson;

.field private final mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

.field private mZigbeeArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/job/JobScheduler;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;Lcom/google/gson/Gson;)V
    .locals 0

    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;-><init>(Landroid/app/job/JobScheduler;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;)V

    .line 52
    iput-object p6, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    .line 53
    iput-object p7, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    .line 54
    iput-object p8, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;->mGson:Lcom/google/gson/Gson;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;)Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->mClock:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;)Lcom/google/gson/Gson;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;->mGson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method private buildGetAllSmartHomeCredentialsRequest()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsRequest;
    .locals 5

    .line 89
    new-instance v0, Lcom/amazon/devicesetupservice/smarthome/CredentialRequest;

    invoke-direct {v0}, Lcom/amazon/devicesetupservice/smarthome/CredentialRequest;-><init>()V

    const-string v1, "BLE_MESH"

    .line 90
    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/smarthome/CredentialRequest;->setProtocolType(Ljava/lang/String;)V

    .line 92
    new-instance v1, Lcom/amazon/devicesetupservice/smarthome/CredentialRequest;

    invoke-direct {v1}, Lcom/amazon/devicesetupservice/smarthome/CredentialRequest;-><init>()V

    const-string v2, "ZIGBEE"

    .line 93
    invoke-virtual {v1, v2}, Lcom/amazon/devicesetupservice/smarthome/CredentialRequest;->setProtocolType(Ljava/lang/String;)V

    .line 95
    new-instance v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsRequest;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/devicesetupservice/smarthome/CredentialRequest;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    invoke-direct {v2, v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsRequest;-><init>(Ljava/util/List;Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)V

    return-object v2
.end method

.method private scheduleRefresh(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncResult;)V
    .locals 8

    .line 110
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;->mZigbeeArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;->isPeriodicSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;->TAG:Ljava/lang/String;

    const-string v0, "Periodic Sync not enabled, not scheduling a refresh job in future"

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;->mZigbeeArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;->getSyncPeriod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/Iso8601TimeConverter;->convertDurationToMs(Ljava/lang/String;)J

    move-result-wide v0

    .line 116
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->mClock:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

    invoke-interface {v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;->epochTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncResult;->getTimestamp()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 119
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/16 v2, 0x3c

    invoke-static {v2}, Lorg/apache/commons/lang/math/RandomUtils;->nextInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 120
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "Scheduling refresh. MillisToNextCall: [%d], Jitter: [%d]"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-long/2addr v0, v2

    .line 121
    invoke-direct {p0, v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;->scheduleZigbeeSyncJob(J)V

    return-void
.end method

.method private scheduleZigbeeSyncJob(J)V
    .locals 17

    move-object/from16 v0, p0

    .line 125
    iget-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;->mZigbeeArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;->getJobScheduleMinLatencyDuration()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/Iso8601TimeConverter;->convertDurationToMs(Ljava/lang/String;)J

    move-result-wide v1

    .line 126
    iget-object v3, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;->mZigbeeArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;

    invoke-virtual {v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;->getJobScheduleMaxLatencyDuration()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/Iso8601TimeConverter;->convertDurationToMs(Ljava/lang/String;)J

    move-result-wide v3

    .line 127
    iget-object v5, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;->mZigbeeArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;

    invoke-virtual {v5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;->getJobScheduleInitialBackOffDuration()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/Iso8601TimeConverter;->convertDurationToMs(Ljava/lang/String;)J

    move-result-wide v14

    .line 130
    sget-object v5, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;->TAG:Ljava/lang/String;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const-string v7, "Scheduling cred sync job with minLatency: %d, maxLatency: %d, initialBackoff: %d"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v6, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->mJobInfoProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;

    iget-object v7, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->mContext:Landroid/content/Context;

    const-class v9, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;

    add-long v10, p1, v1

    add-long v12, p1, v3

    const v8, 0x4cd0df

    const/16 v16, 0x1

    invoke-virtual/range {v6 .. v16}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;->provide(Landroid/content/Context;ILjava/lang/Class;JJJZ)Landroid/app/job/JobInfo;

    move-result-object v1

    .line 141
    iget-object v2, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v2, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method


# virtual methods
.method protected fetchDataFromNetwork()Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncResult;",
            ">;"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;->buildGetAllSmartHomeCredentialsRequest()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsRequest;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    invoke-interface {v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;->getCustomerDevicesCredentialsV2(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsRequest;)Lio/reactivex/Single;

    move-result-object v0

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;->TAG:Ljava/lang/String;

    const-string v2, "Getting customer\'s SmartHome Credentials"

    .line 75
    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/util/rx/RxLog;->doOnSubscribe(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/functions/Consumer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object v0

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;->TAG:Ljava/lang/String;

    const-string v2, "Got customer\'s SmartHome Credentials"

    .line 76
    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/util/rx/RxLog;->doOnSuccess(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/functions/Consumer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object v0

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;->TAG:Ljava/lang/String;

    const-string v2, "There was an error syncing the Customer\'s SmartHome Credentials"

    .line 77
    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/util/rx/RxLog;->doOnError(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/functions/Consumer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator$1;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;)V

    .line 78
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncResult;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;->mZigbeeArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;

    if-eqz v0, :cond_0

    .line 66
    invoke-super {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->getData()Lio/reactivex/Single;

    move-result-object v0

    return-object v0

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must first initialize with zigbee settings"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->mSharedPreferencesProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;

    const-string v1, "AssociatedDeviceCredentialSync"

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;->get(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public initializeWithZigbeeSettings(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;->mZigbeeArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;

    return-void
.end method

.method protected isDataInvalid(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncResult;)Z
    .locals 6

    .line 167
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->mClock:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;->epochTimeMillis()J

    move-result-wide v0

    .line 168
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncResult;->getTimestamp()J

    move-result-wide v2

    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;->mZigbeeArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;->getCacheExpirationPeriod()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/Iso8601TimeConverter;->convertDurationToMs(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected bridge synthetic isDataInvalid(Ljava/lang/Object;)Z
    .locals 0

    .line 33
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncResult;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;->isDataInvalid(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncResult;)Z

    move-result p1

    return p1
.end method

.method protected onDataFetchedFromNetwork(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncResult;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;->scheduleRefresh(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncResult;)V

    return-void
.end method

.method protected bridge synthetic onDataFetchedFromNetwork(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncResult;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;->onDataFetchedFromNetwork(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncResult;)V

    return-void
.end method

.method protected onPersistedDataFetched(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncResult;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;->scheduleRefresh(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncResult;)V

    return-void
.end method

.method protected bridge synthetic onPersistedDataFetched(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncResult;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;->onPersistedDataFetched(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncResult;)V

    return-void
.end method

.method protected persistDataToSharedPreferences(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncResult;)V
    .locals 1

    .line 162
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncResult;->writeToSharedPreferences(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncResult;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method protected bridge synthetic persistDataToSharedPreferences(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncResult;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;->persistDataToSharedPreferences(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncResult;)V

    return-void
.end method

.method protected readPersistedDataFromSharedPreferences()Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncResult;
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncResult;->readFromSharedPreferences(Landroid/content/SharedPreferences;)Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic readPersistedDataFromSharedPreferences()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;->readPersistedDataFromSharedPreferences()Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncResult;

    move-result-object v0

    return-object v0
.end method

.method protected tag()Ljava/lang/String;
    .locals 1

    .line 147
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;->TAG:Ljava/lang/String;

    return-object v0
.end method
