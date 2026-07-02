.class Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService$1;
.super Lio/reactivex/observers/DisposableSingleObserver;
.source "FFSArcusSyncJobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DisposableSingleObserver<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;

.field final synthetic val$jobParameters:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;

    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService$1;->val$jobParameters:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Lio/reactivex/observers/DisposableSingleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 99
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "There was an error syncing arcus settings"

    invoke-static {v0, v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    invoke-virtual {p0}, Lio/reactivex/observers/DisposableSingleObserver;->dispose()V

    .line 103
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService$1;->val$jobParameters:Landroid/app/job/JobParameters;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;->internalJobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public onSuccess(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;)V
    .locals 2

    .line 87
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sync Successful"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;->isModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;->getFFSArcusSettings()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;)V

    .line 93
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/observers/DisposableSingleObserver;->dispose()V

    .line 94
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService$1;->val$jobParameters:Landroid/app/job/JobParameters;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;->internalJobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 84
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService$1;->onSuccess(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;)V

    return-void
.end method
