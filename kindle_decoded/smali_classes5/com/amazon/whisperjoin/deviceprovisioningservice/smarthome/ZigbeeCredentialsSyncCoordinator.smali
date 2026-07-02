.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;
.super Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;
.source "ZigbeeCredentialsSyncCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final SHARED_PREF:Ljava/lang/String; = "DeviceCredentialSync"

.field private static final TAG:Ljava/lang/String; = "ZigbeeCredentialsSyncCoordinator"


# instance fields
.field private final mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

.field private final mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

.field private mZigbeeArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/job/JobScheduler;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)V
    .locals 0

    .line 53
    invoke-direct/range {p0 .. p5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;-><init>(Landroid/app/job/JobScheduler;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;)V

    .line 54
    iput-object p6, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    .line 55
    iput-object p7, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsResponse;)Ljava/util/ArrayList;
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;->buildZigbeeAuthMaterial(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsResponse;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;)Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->mClock:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

    return-object p0
.end method

.method private buildGetAllZigbeeCustomerDevicesCredentialsRequest()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsRequest;
    .locals 3

    .line 90
    new-instance v0, Lcom/amazon/devicesetupservice/smarthome/CredentialRequest;

    invoke-direct {v0}, Lcom/amazon/devicesetupservice/smarthome/CredentialRequest;-><init>()V

    const-string v1, "ZIGBEE"

    .line 91
    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/smarthome/CredentialRequest;->setProtocolType(Ljava/lang/String;)V

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsRequest;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    invoke-direct {v0, v1, v2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsRequest;-><init>(Ljava/util/List;Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)V

    return-object v0
.end method

.method private buildZigbeeAuthMaterial(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsResponse;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsResponse;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry$ZigbeeAuthMaterial;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsResponse;->getAssociatedCredentials()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/devicesetupservice/smarthome/SmartHomeCredential;

    .line 102
    invoke-virtual {v1}, Lcom/amazon/devicesetupservice/smarthome/SmartHomeCredential;->getProtocolType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ZIGBEE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    invoke-virtual {v1}, Lcom/amazon/devicesetupservice/smarthome/SmartHomeCredential;->getAuthMaterialId()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-virtual {v1}, Lcom/amazon/devicesetupservice/smarthome/SmartHomeCredential;->getAuthMaterialData()Ljava/lang/String;

    move-result-object v1

    .line 106
    sget-object v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const-string v6, "Building ZigbeeFFSEntry: ZigId [%s] ZigInstallCode [%s]"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v3, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry$ZigbeeAuthMaterial;

    invoke-direct {v3, v2, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry$ZigbeeAuthMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private scheduleRefresh(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;)V
    .locals 8

    .line 128
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;->mZigbeeArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;->getSyncPeriod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/Iso8601TimeConverter;->convertDurationToMs(Ljava/lang/String;)J

    move-result-wide v0

    .line 129
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->mClock:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

    invoke-interface {v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;->epochTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;->getTimestamp()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 132
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/16 v2, 0x3c

    invoke-static {v2}, Lorg/apache/commons/lang/math/RandomUtils;->nextInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 133
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string v6, "Scheduling refresh. MillisToNextCall: [%d], Jitter: [%d]"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-long/2addr v0, v2

    .line 134
    invoke-direct {p0, v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;->scheduleZigbeeSyncJob(J)V

    return-void
.end method

.method private scheduleZigbeeSyncJob(J)V
    .locals 13

    .line 139
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    add-long v8, p1, v0

    .line 142
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    .line 144
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->mJobInfoProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->mContext:Landroid/content/Context;

    const-class v5, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;

    const v4, 0x4cd0df

    const/4 v12, 0x0

    move-wide v6, p1

    invoke-virtual/range {v2 .. v12}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;->provide(Landroid/content/Context;ILjava/lang/Class;JJJZ)Landroid/app/job/JobInfo;

    move-result-object p1

    .line 154
    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {p2, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method


# virtual methods
.method protected fetchDataFromNetwork()Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;",
            ">;"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;->buildGetAllZigbeeCustomerDevicesCredentialsRequest()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsRequest;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    invoke-interface {v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;->getCustomerDevicesCredentials(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsRequest;)Lio/reactivex/Single;

    move-result-object v0

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;->TAG:Ljava/lang/String;

    const-string v2, "Getting customer\'s Zigbee Credentials"

    .line 76
    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/util/rx/RxLog;->doOnSubscribe(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/functions/Consumer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object v0

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;->TAG:Ljava/lang/String;

    const-string v2, "Got customer\'s Zigbee Credentials"

    .line 77
    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/util/rx/RxLog;->doOnSuccess(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/functions/Consumer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object v0

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;->TAG:Ljava/lang/String;

    const-string v2, "There was an error syncing the Customer\'s Zigbee Credentials"

    .line 78
    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/util/rx/RxLog;->doOnError(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/functions/Consumer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator$1;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;)V

    .line 79
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
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;->mZigbeeArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;

    if-eqz v0, :cond_0

    .line 67
    invoke-super {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->getData()Lio/reactivex/Single;

    move-result-object v0

    return-object v0

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must first initialize with zigbee settings"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->mSharedPreferencesProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;

    const-string v1, "DeviceCredentialSync"

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;->get(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public initializeWithZigbeeSettings(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;->mZigbeeArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;

    return-void
.end method

.method protected isDataInvalid(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;)Z
    .locals 6

    .line 179
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->mClock:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;->epochTimeMillis()J

    move-result-wide v0

    .line 180
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;->getTimestamp()J

    move-result-wide v2

    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;->mZigbeeArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;

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

    .line 35
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;->isDataInvalid(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;)Z

    move-result p1

    return p1
.end method

.method protected onDataFetchedFromNetwork(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;->scheduleRefresh(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;)V

    return-void
.end method

.method protected bridge synthetic onDataFetchedFromNetwork(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;->onDataFetchedFromNetwork(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;)V

    return-void
.end method

.method protected onPersistedDataFetched(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;->scheduleRefresh(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;)V

    return-void
.end method

.method protected bridge synthetic onPersistedDataFetched(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;->onPersistedDataFetched(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;)V

    return-void
.end method

.method protected persistDataToSharedPreferences(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;)V
    .locals 1

    .line 174
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;->writeToSharedPreferences(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method protected bridge synthetic persistDataToSharedPreferences(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;->persistDataToSharedPreferences(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;)V

    return-void
.end method

.method protected readPersistedDataFromSharedPreferences()Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;->readFromSharedPreferences(Landroid/content/SharedPreferences;)Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic readPersistedDataFromSharedPreferences()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;->readPersistedDataFromSharedPreferences()Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;

    move-result-object v0

    return-object v0
.end method

.method protected tag()Ljava/lang/String;
    .locals 1

    .line 159
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;->TAG:Ljava/lang/String;

    return-object v0
.end method
