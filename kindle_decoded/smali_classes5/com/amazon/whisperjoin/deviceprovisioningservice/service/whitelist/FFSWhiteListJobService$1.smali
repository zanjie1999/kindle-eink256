.class Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService$1;
.super Lio/reactivex/observers/DisposableSingleObserver;
.source "FFSWhiteListJobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DisposableSingleObserver<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;

.field final synthetic val$jobParameters:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;

    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService$1;->val$jobParameters:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Lio/reactivex/observers/DisposableSingleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 91
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "An error occurred during refresh WhiteListPolicy job"

    invoke-static {v0, v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService$1;->val$jobParameters:Landroid/app/job/JobParameters;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public onSuccess(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;)V
    .locals 2

    .line 85
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Successfully completed refresh WhiteListPolicy job"

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService$1;->val$jobParameters:Landroid/app/job/JobParameters;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 82
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService$1;->onSuccess(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;)V

    return-void
.end method
