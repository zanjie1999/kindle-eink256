.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;
.super Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;
.source "VerifyProvisioningOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$VerifyProvisioning;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VerifyProvisioningOperation"


# instance fields
.field private final mDashButtonVerificationMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/provisioningverification/ProvisioningVerificationMethod;

.field private final mDefaultVerificationMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/provisioningverification/ProvisioningVerificationMethod;

.field private final mMetricsRecorderProvider:Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

.field private final mSaveWifiNetworkThroughDSS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/SaveWifiNetworkThroughDSS;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/provisioningverification/ProvisioningVerificationMethod;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/provisioningverification/ProvisioningVerificationMethod;Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/SaveWifiNetworkThroughDSS;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;->mDefaultVerificationMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/provisioningverification/ProvisioningVerificationMethod;

    .line 45
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;->mDashButtonVerificationMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/provisioningverification/ProvisioningVerificationMethod;

    .line 46
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;->mMetricsRecorderProvider:Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    .line 47
    iput-object p4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;->mSaveWifiNetworkThroughDSS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/SaveWifiNetworkThroughDSS;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lio/reactivex/Observable;
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;->emitSuccessResult(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lio/reactivex/Completable;
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;->saveNetworkToWifiLockerIfNeeded(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lio/reactivex/Completable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;)Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;->mMetricsRecorderProvider:Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lio/reactivex/Completable;
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;->verifyProvisioning(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lio/reactivex/Completable;

    move-result-object p0

    return-object p0
.end method

.method private emitSuccessResult(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
            ">;"
        }
    .end annotation

    .line 98
    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$VerifyProvisioning;->success(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$VerifyProvisioning;

    move-result-object p1

    .line 99
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private isCoexistenceSupported(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Z
    .locals 2

    .line 112
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;->getDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->getDeviceCapabilitiesMap()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;

    move-result-object p1

    const-string v0, "Connectivity.SupportsCoexistBleWifi"

    .line 114
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 117
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 118
    :cond_0
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 119
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "TRUE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 120
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 123
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private saveNetworkToWifiLockerIfNeeded(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lio/reactivex/Completable;
    .locals 2

    .line 103
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;->saveWifiNetworkToLocker()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    invoke-static {}, Lio/reactivex/Completable;->complete()Lio/reactivex/Completable;

    move-result-object p1

    return-object p1

    .line 106
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;->getChosenWifiConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;->mSaveWifiNetworkThroughDSS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/SaveWifiNetworkThroughDSS;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;->getSessionToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, v0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/SaveWifiNetworkThroughDSS;->saveWifiNetwork(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;Ljava/lang/String;)Lio/reactivex/Completable;

    move-result-object p1

    .line 108
    invoke-virtual {p1}, Lio/reactivex/Completable;->onErrorComplete()Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method private verifyProvisioning(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lio/reactivex/Completable;
    .locals 1

    .line 90
    invoke-direct {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;->isCoexistenceSupported(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;->mDashButtonVerificationMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/provisioningverification/ProvisioningVerificationMethod;

    invoke-interface {v0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/provisioningverification/ProvisioningVerificationMethod;->verify(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;->mDefaultVerificationMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/provisioningverification/ProvisioningVerificationMethod;

    invoke-interface {v0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/provisioningverification/ProvisioningVerificationMethod;->verify(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$VerifyProvisioning;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation$1;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
