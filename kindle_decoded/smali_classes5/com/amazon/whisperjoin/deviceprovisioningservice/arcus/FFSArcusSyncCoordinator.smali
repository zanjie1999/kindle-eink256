.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;
.super Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;
.source "FFSArcusSyncCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final SHARED_PREF_NAME:Ljava/lang/String; = "FFSArcusSyncCoordinator"

.field private static final SYNC_ARCUS_JOB_ID:I = 0x14403

.field private static final TAG:Ljava/lang/String; = "FFSArcusSyncCoordinator"


# instance fields
.field private final mFFSArcusClient:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/job/JobScheduler;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;)V
    .locals 0

    .line 47
    invoke-direct/range {p0 .. p5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;-><init>(Landroid/app/job/JobScheduler;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;)V

    .line 48
    iput-object p6, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;->mFFSArcusClient:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;)Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->mClock:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

    return-object p0
.end method

.method private getExpireAt(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;)J
    .locals 4

    .line 156
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;->getFFSArcusSettings()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->getArcusSyncPeriod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/Iso8601TimeConverter;->convertDurationToMs(Ljava/lang/String;)J

    move-result-wide v0

    .line 157
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;->getTimestamp()J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method private scheduleJob(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;)V
    .locals 16

    move-object/from16 v0, p0

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncState;->readFromSharedPreferences(Landroid/content/SharedPreferences;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncState;

    move-result-object v1

    .line 109
    invoke-direct/range {p0 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;->getExpireAt(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;)J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncState;->getSyncBlockedUntilTimestampMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 112
    iget-object v3, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->mClock:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

    invoke-interface {v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;->epochTimeMillis()J

    move-result-wide v3

    sub-long v9, v1, v3

    .line 115
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    add-long v11, v9, v1

    .line 118
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    .line 120
    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "Scheduling Arcus Sync Job to be executed in [%d]ms with a deadline of [%d]ms"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v5, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->mJobInfoProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;

    iget-object v6, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->mContext:Landroid/content/Context;

    const-class v8, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;

    const v7, 0x14403

    const/4 v15, 0x0

    invoke-virtual/range {v5 .. v15}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;->provide(Landroid/content/Context;ILjava/lang/Class;JJJZ)Landroid/app/job/JobInfo;

    move-result-object v1

    .line 132
    iget-object v2, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v2, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method


# virtual methods
.method protected fetchDataFromNetwork()Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;->mFFSArcusClient:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;->syncWithArcus()Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator$1;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;)V

    .line 60
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;->mFFSArcusClient:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;

    .line 80
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;->getStoredConfiguration()Lio/reactivex/Single;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->onErrorResumeNext(Lio/reactivex/Single;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public getFFSArcusSettings()Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;",
            ">;"
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->getData()Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator$2;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator$2;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method protected getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->mSharedPreferencesProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;

    const-string v1, "FFSArcusSyncCoordinator"

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;->get(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public initializeWithProvisionerClientData(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->initializeWithProvisionerClientData(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V

    .line 54
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;->mFFSArcusClient:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;->initWithProvisionerClientData(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V

    return-void
.end method

.method protected isDataInvalid(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;)Z
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->mClock:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;->epochTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;->getExpireAt(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;)J

    move-result-wide v2

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

    .line 31
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;->isDataInvalid(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;)Z

    move-result p1

    return p1
.end method

.method protected onDataFetchedFromNetwork(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;->scheduleJob(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;)V

    return-void
.end method

.method protected bridge synthetic onDataFetchedFromNetwork(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;->onDataFetchedFromNetwork(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;)V

    return-void
.end method

.method protected onPersistedDataFetched(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;->scheduleJob(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;)V

    return-void
.end method

.method protected bridge synthetic onPersistedDataFetched(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;->onPersistedDataFetched(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;)V

    return-void
.end method

.method protected persistDataToSharedPreferences(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;)V
    .locals 1

    .line 152
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;->writeToSharedPreferences(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method protected bridge synthetic persistDataToSharedPreferences(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;->persistDataToSharedPreferences(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;)V

    return-void
.end method

.method protected readPersistedDataFromSharedPreferences()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;
    .locals 1

    .line 147
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;->readFromSharedPreferences(Landroid/content/SharedPreferences;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic readPersistedDataFromSharedPreferences()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;->readPersistedDataFromSharedPreferences()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;

    move-result-object v0

    return-object v0
.end method

.method protected tag()Ljava/lang/String;
    .locals 1

    .line 137
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;->TAG:Ljava/lang/String;

    return-object v0
.end method
