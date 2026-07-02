.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;
.super Ljava/lang/Object;
.source "SmartHomeProvisioningEventReporter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartHomeProvisioningEventReporter"


# instance fields
.field private mBleMacAddress:Ljava/lang/String;

.field private final mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

.field private final mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

.field private mReportingSession:Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;

.field private final mWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    .line 37
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->mWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    .line 38
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createErrorInfo(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;Ljava/lang/Throwable;)Lcom/amazon/devicesetup/common/v1/ErrorInfo;
    .locals 1

    .line 168
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->mWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    invoke-interface {v0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;->map(Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingDataTypesBuilder;->buildErrorInfo(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    move-result-object p1

    return-object p1
.end method

.method private createReportSmartHomeEventRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;
    .locals 1

    const/4 v0, 0x0

    .line 150
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->createReportSmartHomeEventRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetup/common/v1/ErrorInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;

    move-result-object p1

    return-object p1
.end method

.method private createReportSmartHomeEventRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetup/common/v1/ErrorInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;
    .locals 2

    .line 154
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;-><init>()V

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->mReportingSession:Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;

    .line 155
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;->getNextSequenceNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->setSequenceNumber(I)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->mReportingSession:Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;

    .line 156
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->setReportEventIdentifier(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    .line 157
    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->setProvisionerInfo(Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;

    move-result-object v0

    .line 158
    invoke-virtual {v0, p2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->setEvent(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;

    move-result-object p2

    .line 159
    invoke-virtual {p2, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->setState(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;

    move-result-object p1

    .line 160
    invoke-virtual {p1, p3}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->setErrorInfo(Lcom/amazon/devicesetup/common/v1/ErrorInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->mBleMacAddress:Ljava/lang/String;

    .line 161
    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->setBleMac(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;

    move-result-object p1

    const-string p2, "BluetoothLowEnergy"

    .line 162
    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->setRadio(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;

    move-result-object p1

    const-string/jumbo p2, "wHXD"

    .line 163
    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->setProductIndex(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;

    move-result-object p1

    .line 164
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->createReportSmartHomeEventRequest()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;

    move-result-object p1

    return-object p1
.end method

.method private reportEvent(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;->reportSmartHomeEvent(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;)Lio/reactivex/Completable;

    move-result-object p1

    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter$1;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;)V

    .line 136
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->subscribeWith(Lio/reactivex/CompletableObserver;)Lio/reactivex/CompletableObserver;

    return-void
.end method

.method private verifyReportingSessionRegistered()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->mReportingSession:Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;

    if-eqz v0, :cond_0

    return-void

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No SessionId registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public registerDeviceForEventReporting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 46
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerDeviceForEventReporting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->mReportingSession:Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;

    .line 48
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->mBleMacAddress:Ljava/lang/String;

    return-void
.end method

.method public reportConnectionFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 65
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reportConnectionFailure"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->verifyReportingSessionRegistered()V

    .line 67
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;->CONNECTING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;

    invoke-direct {p0, v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->createErrorInfo(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;Ljava/lang/Throwable;)Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    move-result-object p1

    const-string v0, "CONNECTED"

    const-string v1, "FAILURE"

    .line 68
    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->createReportSmartHomeEventRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetup/common/v1/ErrorInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;

    move-result-object p1

    .line 69
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->reportEvent(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;)V

    return-void
.end method

.method public reportConnectionSuccess()V
    .locals 2

    .line 55
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reportConnectionSuccess"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->verifyReportingSessionRegistered()V

    const-string v0, "CONNECTED"

    const-string v1, "SUCCESS"

    .line 57
    invoke-direct {p0, v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->createReportSmartHomeEventRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;

    move-result-object v0

    .line 58
    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->reportEvent(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;)V

    return-void
.end method

.method public reportDoneSuccess()V
    .locals 2

    .line 128
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reportDoneSuccess"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->verifyReportingSessionRegistered()V

    const-string v0, "DONE"

    const-string v1, "SUCCESS"

    .line 130
    invoke-direct {p0, v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->createReportSmartHomeEventRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;

    move-result-object v0

    .line 131
    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->reportEvent(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;)V

    return-void
.end method

.method public reportProvisionedFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 117
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reportProvisionedFailure"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->verifyReportingSessionRegistered()V

    .line 119
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;->PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;

    invoke-direct {p0, v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->createErrorInfo(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;Ljava/lang/Throwable;)Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    move-result-object p1

    const-string v0, "PROVISIONED"

    const-string v1, "FAILURE"

    .line 120
    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->createReportSmartHomeEventRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetup/common/v1/ErrorInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;

    move-result-object p1

    .line 121
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->reportEvent(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;)V

    return-void
.end method

.method public reportProvisionedSuccess()V
    .locals 2

    .line 107
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reportProvisionedSuccess"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->verifyReportingSessionRegistered()V

    const-string v0, "PROVISIONED"

    const-string v1, "SUCCESS"

    .line 109
    invoke-direct {p0, v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->createReportSmartHomeEventRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;

    move-result-object v0

    .line 110
    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->reportEvent(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;)V

    return-void
.end method

.method public reportRetrievedProvisioningDetailsFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 96
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reportRetrievedProvisioningDetailsFailure"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->verifyReportingSessionRegistered()V

    .line 98
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;->PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;

    invoke-direct {p0, v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->createErrorInfo(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;Ljava/lang/Throwable;)Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    move-result-object p1

    const-string v0, "RETRIEVED_PROVISIONING_DETAILS"

    const-string v1, "FAILURE"

    .line 99
    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->createReportSmartHomeEventRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetup/common/v1/ErrorInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;

    move-result-object p1

    .line 100
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->reportEvent(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;)V

    return-void
.end method

.method public reportRetrievedProvisioningDetailsSuccess(Ljava/lang/String;)V
    .locals 2

    .line 76
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reportRetrievedProvisioningDetailsSuccess"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->verifyReportingSessionRegistered()V

    .line 78
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;-><init>()V

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->mReportingSession:Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;

    .line 79
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;->getNextSequenceNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->setSequenceNumber(I)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->mReportingSession:Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;

    .line 80
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingSesssion;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->setReportEventIdentifier(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    .line 81
    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->setProvisionerInfo(Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;

    move-result-object v0

    const-string v1, "SUCCESS"

    .line 82
    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->setEvent(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;

    move-result-object v0

    const-string v1, "RETRIEVED_PROVISIONING_DETAILS"

    .line 83
    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->setState(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->mBleMacAddress:Ljava/lang/String;

    .line 84
    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->setBleMac(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->setZigbeeMac(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;

    move-result-object p1

    const-string/jumbo v0, "wHXD"

    .line 86
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->setProductIndex(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;

    move-result-object p1

    const-string v0, "BluetoothLowEnergy"

    .line 87
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->setRadio(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest$Builder;->createReportSmartHomeEventRequest()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;

    move-result-object p1

    .line 89
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->reportEvent(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;)V

    return-void
.end method
