.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter$1;
.super Lio/reactivex/observers/DisposableCompletableObserver;
.source "SmartHomeProvisioningEventReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->reportEvent(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lio/reactivex/observers/DisposableCompletableObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 139
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Event reported successfully"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 144
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reporting Event Failed"

    invoke-static {v0, v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
