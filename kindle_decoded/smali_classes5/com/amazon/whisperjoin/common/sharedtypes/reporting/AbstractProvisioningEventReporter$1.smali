.class Lcom/amazon/whisperjoin/common/sharedtypes/reporting/AbstractProvisioningEventReporter$1;
.super Lio/reactivex/observers/DisposableCompletableObserver;
.source "AbstractProvisioningEventReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/common/sharedtypes/reporting/AbstractProvisioningEventReporter;->reportEvent(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/common/sharedtypes/reporting/AbstractProvisioningEventReporter;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;)V
    .locals 0

    .line 44
    iput-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/AbstractProvisioningEventReporter$1;->val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;

    invoke-direct {p0}, Lio/reactivex/observers/DisposableCompletableObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 52
    invoke-static {}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/AbstractProvisioningEventReporter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An error occurred while reporting event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/AbstractProvisioningEventReporter$1;->val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
