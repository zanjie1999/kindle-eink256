.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;
.super Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/AbstractDeviceEventAccumulator;
.source "WorkflowEventReporter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/AbstractDeviceEventAccumulator<",
        "Ljava/lang/Void;",
        ">;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WorkflowEventReporter"


# instance fields
.field private final mProvisionerEventReporter:Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;

.field private final mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

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

.method public constructor <init>(Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/AbstractDeviceEventAccumulator;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mProvisionerEventReporter:Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;

    .line 53
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    .line 54
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    return-void
.end method

.method private createErrorInfo(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/amazon/devicesetup/common/v1/ErrorInfo;
    .locals 2

    .line 348
    instance-of v0, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/DeviceError;

    if-eqz v0, :cond_0

    .line 349
    move-object p2, p1

    check-cast p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/DeviceError;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/DeviceError;->getOperation()Ljava/lang/String;

    move-result-object p2

    .line 352
    :cond_0
    instance-of v0, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ConnectionFailureDuringSetup;

    if-eqz v0, :cond_1

    .line 353
    move-object p2, p1

    check-cast p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ConnectionFailureDuringSetup;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ConnectionFailureDuringSetup;->getDeviceSession()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->getState()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    .line 357
    :cond_1
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 358
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    invoke-interface {v1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;->map(Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-static {p2, v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingDataTypesBuilder;->buildErrorInfo(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    move-result-object p2

    .line 362
    instance-of v0, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableRegistrationError;

    if-eqz v0, :cond_2

    .line 365
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/devicesetup/common/v1/ErrorInfo;->setDetails(Ljava/lang/String;)V

    :cond_2
    return-object p2
.end method

.method private getCredentialLockerUsageInfo(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;Z)Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;
    .locals 5

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    .line 232
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 234
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 235
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 241
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    .line 242
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;->getWifiConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->getSsid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/lang/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 243
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;->getWifiConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->getKeyManagement()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->getKeyManagement()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 244
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 245
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;->getWifiConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_0

    :cond_3
    move-object p1, v0

    .line 250
    :goto_0
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 249
    invoke-static {p2, v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingDataTypesBuilder;->buildCredentialLockerUsageInfo(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;

    move-result-object p1

    return-object p1

    .line 237
    :cond_4
    :goto_1
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 236
    invoke-static {p1, v0, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingDataTypesBuilder;->buildCredentialLockerUsageInfo(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getDeviceId(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Ljava/lang/String;
    .locals 0

    .line 58
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->getPeripheralDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getDeviceIdentity()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getKeyExchangeMethod(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;)Ljava/lang/String;
    .locals 0

    .line 333
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;->getTrustState()Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/dss/DSSTypesHelper;->getKeyExchangeMethodFromTrustState(Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getProvisionableInfo(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;
    .locals 1

    .line 212
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->getPeripheralDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    move-result-object v0

    .line 213
    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->getSession(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->getProvisioningDetails()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;->getDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 216
    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingDataTypesBuilder;->buildProvisionableInfo(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;)Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getTrustMethod(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;)Ljava/lang/String;
    .locals 0

    .line 329
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;->getTrustState()Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/dss/DSSTypesHelper;->getTrustMethodFromTrustState(Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private logIgnoreReportingEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)V
    .locals 5

    .line 372
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getState()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string p1, "Ignore reporting event: %s %s"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public accept(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)V
    .locals 1

    .line 63
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->getLastWJResult()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/AbstractDeviceEventAccumulator;->accumulate(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->accept(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)V

    return-void
.end method

.method protected bridge synthetic handleConnectionEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Connection;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->handleConnectionEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Connection;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected handleConnectionEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Connection;)Ljava/lang/Void;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 94
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate;

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate;->getDeviceConnectionConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;

    move-result-object v2

    .line 95
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate;

    invoke-virtual {v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate;->getState()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

    move-result-object v3

    .line 97
    sget-object v4, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter$1;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$Event$State:[I

    invoke-virtual/range {p2 .. p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getState()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v4, v6, :cond_5

    const/4 v7, 0x2

    if-eq v4, v7, :cond_3

    const/4 v8, 0x3

    if-eq v4, v8, :cond_0

    .line 123
    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->logIgnoreReportingEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)V

    goto/16 :goto_0

    .line 110
    :cond_0
    sget-object v4, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter$1;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$provisioning$type$ConnectionOperationStatusUpdate$State:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    if-eq v3, v6, :cond_2

    if-eq v3, v7, :cond_1

    .line 119
    iget-object v8, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mProvisionerEventReporter:Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->getDeviceId(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Ljava/lang/String;

    move-result-object v9

    iget-object v3, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    invoke-virtual {v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->getTrustMethod(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->getKeyExchangeMethod(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getError()Ljava/lang/Throwable;

    move-result-object v1

    sget-object v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->CONNECTING_TO_DEVICE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->createErrorInfo(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    move-result-object v14

    const-string v13, "BluetoothLowEnergy"

    invoke-interface/range {v8 .. v14}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;->reportConnectedFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetup/common/v1/ErrorInfo;)V

    goto/16 :goto_0

    .line 115
    :cond_1
    iget-object v15, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mProvisionerEventReporter:Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->getDeviceId(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Ljava/lang/String;

    move-result-object v16

    iget-object v3, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    invoke-virtual {v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct {v0, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->getTrustMethod(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;)Ljava/lang/String;

    move-result-object v18

    invoke-direct {v0, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->getKeyExchangeMethod(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getError()Ljava/lang/Throwable;

    move-result-object v1

    sget-object v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->CONNECTING_TO_DEVICE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->createErrorInfo(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    move-result-object v21

    const-string v20, "BluetoothLowEnergy"

    invoke-interface/range {v15 .. v21}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;->reportSecureChannelEstablishedFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetup/common/v1/ErrorInfo;)V

    goto :goto_0

    .line 112
    :cond_2
    iget-object v6, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mProvisionerEventReporter:Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->getDeviceId(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Ljava/lang/String;

    move-result-object v7

    iget-object v3, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    invoke-virtual {v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->getTrustMethod(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->getKeyExchangeMethod(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getError()Ljava/lang/Throwable;

    move-result-object v1

    sget-object v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->CONNECTING_TO_DEVICE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->createErrorInfo(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    move-result-object v12

    const-string v11, "BluetoothLowEnergy"

    invoke-interface/range {v6 .. v12}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;->reportConnectedFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetup/common/v1/ErrorInfo;)V

    goto :goto_0

    .line 103
    :cond_3
    sget-object v4, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;->CONNECTED_TO_DEVICE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return-object v5

    .line 107
    :cond_4
    iget-object v6, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mProvisionerEventReporter:Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->getDeviceId(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->getTrustMethod(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->getKeyExchangeMethod(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "BluetoothLowEnergy"

    invoke-interface/range {v6 .. v11}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;->reportConnectedSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_5
    iget-object v12, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mProvisionerEventReporter:Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->getDeviceId(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Ljava/lang/String;

    move-result-object v13

    iget-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->getTrustMethod(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v0, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->getKeyExchangeMethod(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "BluetoothLowEnergy"

    invoke-interface/range {v12 .. v17}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;->reportSecureChannelEstablishedSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v5
.end method

.method protected bridge synthetic handleDisconnectionEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Disconnection;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->handleDisconnectionEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Disconnection;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected handleDisconnectionEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Disconnection;)Ljava/lang/Void;
    .locals 11

    .line 132
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->ERROR:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    invoke-virtual {p2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->isState(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 133
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mProvisionerEventReporter:Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;

    invoke-direct {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->getDeviceId(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;->removeReportingSession(Ljava/lang/String;)V

    return-object v0

    .line 137
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getError()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ConnectionFailureDuringSetup;

    if-nez p1, :cond_1

    .line 139
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->TAG:Ljava/lang/String;

    const-string p2, "Expected Disconnection Error to be ConnectionFailureDuringSetup Error"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 143
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getError()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ConnectionFailureDuringSetup;

    .line 144
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ConnectionFailureDuringSetup;->getDeviceSession()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    move-result-object v1

    .line 145
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object v2

    .line 147
    sget-object v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter$1;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$DeviceSession$DeviceState:[I

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->getState()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 174
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to report Disconnection Event due to unrecognized state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->getState()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    :pswitch_0
    invoke-virtual {v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->getPeripheralDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    move-result-object p1

    .line 167
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->getProvisioningDetails()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;->getDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;

    move-result-object v1

    .line 168
    invoke-static {p1, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingDataTypesBuilder;->buildProvisionableInfo(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;)Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    move-result-object p1

    .line 170
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mProvisionerEventReporter:Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;

    invoke-direct {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->getDeviceId(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    invoke-virtual {v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getError()Ljava/lang/Throwable;

    move-result-object v4

    sget-object v5, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->VERIFYING_PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->createErrorInfo(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;->reportProvisionedFailure(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetup/common/v1/ErrorInfo;Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;)V

    goto :goto_0

    .line 158
    :pswitch_1
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mProvisionerEventReporter:Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;

    invoke-direct {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->getDeviceId(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    invoke-virtual {v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->GETTING_PROVISIONING_DETAILS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->createErrorInfo(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    move-result-object p1

    invoke-interface {v1, v2, v3, v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;->reportRetrievedProvisioningDetailsFailure(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;Lcom/amazon/devicesetup/common/v1/ErrorInfo;)V

    goto :goto_0

    .line 151
    :pswitch_2
    iget-object v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mProvisionerEventReporter:Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;

    invoke-direct {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->getDeviceId(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;->toString()Ljava/lang/String;

    move-result-object v6

    .line 152
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->getDeviceConnectionConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->getTrustMethod(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->getDeviceConnectionConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->getKeyExchangeMethod(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;)Ljava/lang/String;

    move-result-object v8

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->CONNECTING_TO_DEVICE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    .line 153
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->createErrorInfo(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    move-result-object v10

    const-string v9, "BluetoothLowEnergy"

    .line 151
    invoke-interface/range {v4 .. v10}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;->reportConnectedFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetup/common/v1/ErrorInfo;)V

    .line 178
    :goto_0
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mProvisionerEventReporter:Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;

    invoke-direct {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->getDeviceId(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;->removeReportingSession(Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic handleDiscoveryEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->handleDiscoveryEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected handleDiscoveryEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;)Ljava/lang/Void;
    .locals 5

    .line 70
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->SUCCESS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    invoke-virtual {p2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->isState(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 72
    invoke-direct {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->logIgnoreReportingEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)V

    return-object v0

    .line 77
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/DiscoveredProvisionable;

    .line 79
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/DiscoveredProvisionable;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->getPeripheralDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getDeviceIdentity()Ljava/lang/String;

    move-result-object v1

    .line 83
    sget-object v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Registering a new reporting URL for device with ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/DiscoveredProvisionable;->getProvisionableReportingUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mProvisionerEventReporter:Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/DiscoveredProvisionable;->getProvisionerReportingUrl()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, v1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;->registerNewReportingSession(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected bridge synthetic handleGetProvisioningDetails(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$GetProvisioningDetails;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->handleGetProvisioningDetails(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$GetProvisioningDetails;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected handleGetProvisioningDetails(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$GetProvisioningDetails;)Ljava/lang/Void;
    .locals 8

    .line 184
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->IN_PROGRESS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    invoke-virtual {p2, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->isState(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->logIgnoreReportingEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)V

    return-object v1

    .line 189
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object v0

    .line 190
    invoke-direct {p0, p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->getProvisionableInfo(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    move-result-object v5

    .line 192
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter$1;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$Event$State:[I

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getState()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 201
    invoke-direct {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->logIgnoreReportingEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)V

    goto :goto_0

    .line 198
    :cond_1
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mProvisionerEventReporter:Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;

    invoke-direct {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->getDeviceId(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getError()Ljava/lang/Throwable;

    move-result-object p2

    sget-object v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->GETTING_PROVISIONING_DETAILS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->createErrorInfo(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    move-result-object p2

    invoke-interface {p1, v0, v2, v5, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;->reportRetrievedProvisioningDetailsFailure(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;Lcom/amazon/devicesetup/common/v1/ErrorInfo;)V

    goto :goto_0

    .line 195
    :cond_2
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mProvisionerEventReporter:Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;

    invoke-direct {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->getDeviceId(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;->reportRetrievedProvisioningDetailsSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;)V

    :goto_0
    return-object v1
.end method

.method protected bridge synthetic handleProvisionDeviceEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisionDevice;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->handleProvisionDeviceEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisionDevice;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected handleProvisionDeviceEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisionDevice;)Ljava/lang/Void;
    .locals 7

    .line 255
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object v0

    .line 256
    invoke-direct {p0, p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->getProvisionableInfo(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    move-result-object v5

    .line 258
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter$1;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$Event$State:[I

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getState()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 286
    invoke-direct {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->logIgnoreReportingEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)V

    goto :goto_0

    .line 280
    :cond_0
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mProvisionerEventReporter:Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;

    invoke-direct {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->getDeviceId(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    .line 281
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;->toString()Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getError()Ljava/lang/Throwable;

    move-result-object p2

    sget-object v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->PROVISIONING_DEVICE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->createErrorInfo(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    move-result-object p2

    .line 280
    invoke-interface {p1, v0, v1, p2, v5}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;->reportProvisionedFailure(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetup/common/v1/ErrorInfo;Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;)V

    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getData()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 263
    :cond_2
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;

    .line 264
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;->getChosenWifiConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object p1

    .line 263
    invoke-static {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingDataTypesBuilder;->buildWifiNetworkInfo(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;)Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;

    move-result-object v4

    .line 265
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;

    .line 266
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;->getChosenWifiConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object p1

    .line 267
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;->getAvailableWifiNetworks()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;

    move-result-object v0

    .line 268
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;->saveWifiNetworkToLocker()Z

    move-result v1

    .line 265
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->getCredentialLockerUsageInfo(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;Z)Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;

    move-result-object v6

    .line 270
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mProvisionerEventReporter:Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;

    invoke-direct {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->getDeviceId(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    .line 271
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;->toString()Ljava/lang/String;

    move-result-object v3

    .line 270
    invoke-interface/range {v1 .. v6}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;->reportProvisionedSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic handleVerifyProvisioningEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$VerifyProvisioning;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->handleVerifyProvisioningEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$VerifyProvisioning;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected handleVerifyProvisioningEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$VerifyProvisioning;)Ljava/lang/Void;
    .locals 8

    .line 294
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->ERROR:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    invoke-virtual {p2, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->isState(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 296
    invoke-direct {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->logIgnoreReportingEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)V

    return-object v1

    .line 299
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object v0

    .line 300
    invoke-direct {p0, p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->getProvisionableInfo(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    move-result-object v7

    .line 302
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getError()Ljava/lang/Throwable;

    move-result-object p1

    .line 304
    instance-of v0, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;

    if-eqz v0, :cond_1

    .line 306
    move-object v0, p1

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;

    .line 307
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;->getWifiConnectionDetails()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingDataTypesBuilder;->buildWifiNetworkInfo(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;)Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;

    move-result-object v5

    .line 308
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mProvisionerEventReporter:Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;

    invoke-direct {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->getDeviceId(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Ljava/lang/String;

    move-result-object v3

    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->VERIFYING_PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->createErrorInfo(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    move-result-object v6

    invoke-interface/range {v2 .. v7}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;->reportNetworkedFailure(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;Lcom/amazon/devicesetup/common/v1/ErrorInfo;Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;)V

    goto :goto_0

    .line 309
    :cond_1
    instance-of v0, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableRegistrationError;

    if-eqz v0, :cond_2

    .line 311
    move-object v0, p1

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableRegistrationError;

    .line 312
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mProvisionerEventReporter:Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;

    invoke-direct {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->getDeviceId(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Ljava/lang/String;

    move-result-object v3

    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableRegistrationError;->getState()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails$State;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    sget-object p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->VERIFYING_PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->createErrorInfo(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    move-result-object v6

    invoke-interface/range {v2 .. v7}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;->reportRegisteredFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetup/common/v1/ErrorInfo;Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;)V

    goto :goto_0

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mProvisionerEventReporter:Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;

    invoke-direct {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->getDeviceId(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->VERIFYING_PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->createErrorInfo(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    move-result-object p1

    invoke-interface {v0, p2, v2, p1, v7}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;->reportProvisionedFailure(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetup/common/v1/ErrorInfo;Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;)V

    :goto_0
    return-object v1
.end method

.method protected bridge synthetic handleWorkflowIdle(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$WorkflowIdle;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;->handleWorkflowIdle(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$WorkflowIdle;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected handleWorkflowIdle(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$WorkflowIdle;)Ljava/lang/Void;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
