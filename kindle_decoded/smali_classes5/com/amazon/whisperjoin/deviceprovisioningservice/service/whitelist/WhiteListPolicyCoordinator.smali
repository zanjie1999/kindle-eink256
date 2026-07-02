.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;
.super Ljava/lang/Object;
.source "WhiteListPolicyCoordinator.java"


# static fields
.field private static final ANDROID_PLATFORM:Ljava/lang/String; = "Android"

.field private static final SHARED_PREF_NAME:Ljava/lang/String; = "WhiteListPolicy"

.field private static final TAG:Ljava/lang/String; = "WhiteListPolicyCoordinator"


# instance fields
.field private final mClock:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

.field private final mContext:Landroid/content/Context;

.field private final mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

.field private final mJobInfoProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;

.field private final mJobScheduler:Landroid/app/job/JobScheduler;

.field private final mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/job/JobScheduler;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->mContext:Landroid/content/Context;

    const-string p1, "WhiteListPolicy"

    .line 57
    invoke-virtual {p4, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;->get(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 58
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 59
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->mJobInfoProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;

    .line 60
    iput-object p5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->mClock:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

    .line 61
    iput-object p6, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    .line 62
    iput-object p7, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyResponse;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->buildWhiteListPolicyFromResponse(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyResponse;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;)Landroid/content/SharedPreferences;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->broadcastWhiteListPolicyUpdate(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;J)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->scheduleRefreshJob(J)V

    return-void
.end method

.method private broadcastWhiteListPolicyUpdate(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;)V
    .locals 2

    .line 133
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->TAG:Ljava/lang/String;

    const-string v1, "Broadcasting WhiteListPolicy Update"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 135
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->writeToBundle(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;Landroid/os/Bundle;)V

    .line 136
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->writeToBundle(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;Landroid/os/Bundle;)V

    .line 138
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.amazon.whisperjoin.deviceprovisioningservice.WHITE_LIST_POLICY_UPDATE_ACTION"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 140
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->mContext:Landroid/content/Context;

    const-string v1, "com.amazon.whisperjoin.deviceprovisioningservice.WhiteListPolicyUpdate.Permission"

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private buildFFSWhiteListPolicyRequest()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;
    .locals 10

    .line 108
    new-instance v9, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    .line 109
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    .line 110
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    .line 112
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    .line 113
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getClientAppName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    .line 114
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getClientAppVersion()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    .line 115
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getMarketplace()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    .line 116
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getCustomerEcid()Ljava/lang/String;

    move-result-object v8

    const-string v3, "Android"

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method private buildWhiteListPolicyFromResponse(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyResponse;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;
    .locals 8

    .line 146
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyResponse;->getFfsScanningEnabled()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;->getFromValue(I)Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 148
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->TAG:Ljava/lang/String;

    const-string v1, "Unrecognized scanning mode, falling back to Low Power scan"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;->LOW_POWER_HIGH_LATENCY:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    :cond_0
    move-object v2, v0

    .line 152
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->mClock:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;->epochTimeMillis()J

    move-result-wide v6

    .line 153
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyResponse;->getHoursToNextCall()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    add-long v4, v6, v0

    .line 154
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyResponse;->getMinBatteryLevel()I

    move-result v3

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;IJJ)V

    return-object v0
.end method

.method private isPersistedPolicyValid(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 198
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->TAG:Ljava/lang/String;

    const-string p2, "Policy is null"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    if-nez p2, :cond_1

    .line 201
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->TAG:Ljava/lang/String;

    const-string p2, "Client data is null"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->mClock:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

    invoke-interface {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;->epochTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->getPolicyExpiresAt()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-lez p1, :cond_2

    .line 204
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->TAG:Ljava/lang/String;

    const-string p2, "Current Policy is expired"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 207
    :cond_2
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 208
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->TAG:Ljava/lang/String;

    const-string p2, "Policy not for current provisioner client"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private scheduleRefreshJob(J)V
    .locals 13

    .line 169
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling Job to refresh policy in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "millis"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    add-long v8, p1, v0

    .line 174
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    .line 176
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->mJobInfoProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->mContext:Landroid/content/Context;

    const-class v5, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;

    const v4, 0x8291ec

    const/4 v12, 0x0

    move-wide v6, p1

    invoke-virtual/range {v2 .. v12}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;->provide(Landroid/content/Context;ILjava/lang/Class;JJJZ)Landroid/app/job/JobInfo;

    move-result-object p1

    .line 186
    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {p2, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method

.method private scheduleRefreshJobForPolicy(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;)V
    .locals 4

    .line 159
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->TAG:Ljava/lang/String;

    const-string v1, "Rescheduling policy refresh"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->getPolicyExpiresAt()J

    move-result-wide v0

    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->mClock:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

    invoke-interface {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;->epochTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 161
    invoke-direct {p0, v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->scheduleRefreshJob(J)V

    return-void
.end method


# virtual methods
.method public cancelAnyPendingRefreshJobs()V
    .locals 2

    .line 124
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->TAG:Ljava/lang/String;

    const-string v1, "Trying to cancel any pending white list refresh jobs."

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->mJobScheduler:Landroid/app/job/JobScheduler;

    const v1, 0x8291ec

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    return-void
.end method

.method public getWhiteListPolicy()Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->readFromSharedPreferences(Landroid/content/SharedPreferences;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->readFromSharedPreferences(Landroid/content/SharedPreferences;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    move-result-object v1

    .line 80
    invoke-direct {p0, v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->isPersistedPolicyValid(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->TAG:Ljava/lang/String;

    const-string v2, "Current policy is still valid, continue using it."

    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->scheduleRefreshJobForPolicy(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;)V

    .line 83
    invoke-static {v0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0

    .line 86
    :cond_0
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->TAG:Ljava/lang/String;

    const-string v1, "No valid policy exists, refreshing policy"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->buildFFSWhiteListPolicyRequest()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    invoke-interface {v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;->getFFSWhiteListPolicy(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator$1;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;)V

    .line 89
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method
