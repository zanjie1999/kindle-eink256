.class Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobSchedulerImpl$1;
.super Ljava/lang/Object;
.source "CredSyncJobSchedulerImpl.java"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobSchedulerImpl;->scheduleCredSyncRun(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobSchedulerImpl;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 127
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobSchedulerImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "An error occurred scheduling cred sync job"

    invoke-static {v0, v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method
