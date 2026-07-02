.class Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobSchedulerImpl$2;
.super Ljava/lang/Object;
.source "CredSyncJobSchedulerImpl.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobSchedulerImpl;->scheduleCredSyncRun(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;",
        "Lio/reactivex/CompletableSource;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$jobInfoProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;

.field final synthetic val$jobScheduler:Landroid/app/job/JobScheduler;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobSchedulerImpl;Ljava/lang/String;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;Landroid/content/Context;Landroid/app/job/JobScheduler;)V
    .locals 0

    .line 82
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobSchedulerImpl$2;->val$source:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobSchedulerImpl$2;->val$jobInfoProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;

    iput-object p4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobSchedulerImpl$2;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobSchedulerImpl$2;->val$jobScheduler:Landroid/app/job/JobScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;)Lio/reactivex/CompletableSource;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->getZigbeeArcusSettings()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;->getJobScheduleMinLatencyDuration()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/Iso8601TimeConverter;->convertDurationToMs(Ljava/lang/String;)J

    move-result-wide v5

    .line 89
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;->getJobScheduleMaxLatencyDuration()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/Iso8601TimeConverter;->convertDurationToMs(Ljava/lang/String;)J

    move-result-wide v7

    .line 90
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;->getJobScheduleInitialBackOffDuration()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/Iso8601TimeConverter;->convertDurationToMs(Ljava/lang/String;)J

    move-result-wide v9

    .line 93
    new-instance v12, Landroid/os/PersistableBundle;

    invoke-direct {v12}, Landroid/os/PersistableBundle;-><init>()V

    const/4 p1, 0x1

    const-string/jumbo v0, "oneOffRefresh"

    .line 94
    invoke-virtual {v12, v0, p1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobSchedulerImpl$2;->val$source:Ljava/lang/String;

    const-string/jumbo v1, "source"

    invoke-virtual {v12, v1, v0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobSchedulerImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, p1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string p1, "Scheduling cred sync job with minLatency: %d, maxLatency: %d, initialBackoff: %d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobSchedulerImpl$2;->val$jobInfoProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobSchedulerImpl$2;->val$context:Landroid/content/Context;

    const-class v4, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;

    const v3, 0xcd807

    const/4 v11, 0x0

    invoke-virtual/range {v1 .. v12}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;->provide(Landroid/content/Context;ILjava/lang/Class;JJJZLandroid/os/PersistableBundle;)Landroid/app/job/JobInfo;

    move-result-object p1

    .line 109
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobSchedulerImpl$2;->val$jobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 111
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobSchedulerImpl;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Scheduled Refresh Job"

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {}, Lio/reactivex/Completable;->complete()Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobSchedulerImpl$2;->apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;)Lio/reactivex/CompletableSource;

    move-result-object p1

    return-object p1
.end method
