.class public Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingDataTypesBuilder;
.super Ljava/lang/Object;
.source "ReportingDataTypesBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReportingDataTypesBuilder"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static buildCredentialLockerUsageInfo(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 64
    sget-object p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingDataTypesBuilder;->TAG:Ljava/lang/String;

    const-string p1, "Can\'t build CredentialLockerUsageInfo with null doesUserIntendsToSaveCredToLocker"

    invoke-static {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    .line 68
    sget-object p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingDataTypesBuilder;->TAG:Ljava/lang/String;

    const-string p1, "Can\'t build CredentialLockerUsageInfo with null isChoosenSSIDCredChanged"

    invoke-static {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    if-nez p2, :cond_2

    .line 72
    sget-object p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingDataTypesBuilder;->TAG:Ljava/lang/String;

    const-string p1, "Can\'t build CredentialLockerUsageInfo with null isSSIDFromCredlocker"

    invoke-static {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 76
    :cond_2
    new-instance v0, Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;

    invoke-direct {v0}, Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;-><init>()V

    .line 77
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;->setChosenSSIDCredChanged(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;->setUserIntendsToSaveCredentialToLocker(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;->setSsidFromCredlocker(Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildErrorInfo(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)Lcom/amazon/devicesetup/common/v1/ErrorInfo;
    .locals 1

    .line 25
    new-instance v0, Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    invoke-direct {v0}, Lcom/amazon/devicesetup/common/v1/ErrorInfo;-><init>()V

    .line 26
    invoke-virtual {v0, p0}, Lcom/amazon/devicesetup/common/v1/ErrorInfo;->setOperation(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, p2}, Lcom/amazon/devicesetup/common/v1/ErrorInfo;->setCode(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/devicesetup/common/v1/ErrorInfo;->setCause(Ljava/lang/String;)V

    .line 30
    invoke-static {p1}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/devicesetup/common/v1/ErrorInfo;->setDetails(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static buildProvisionableInfo(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;)Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 105
    sget-object p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingDataTypesBuilder;->TAG:Ljava/lang/String;

    const-string p1, "Can\'t build provisionable info with null whisperJoinDeviceDetails"

    invoke-static {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    .line 110
    sget-object p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingDataTypesBuilder;->TAG:Ljava/lang/String;

    const-string p1, "Can\'t build provisionable info with null deviceDetails"

    invoke-static {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 114
    :cond_1
    new-instance v0, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    invoke-direct {v0}, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;-><init>()V

    .line 116
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->setDeviceName(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getSoftwareVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->setSoftwareVersionIndex(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->getDeviceModelNumber()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->setDeviceModel(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->setDeviceSerial(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->getDeviceFirmwareRevision()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->setFirmwareVersion(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->getDeviceHardwareRevision()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->setHardwareVersion(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->getManufacturer()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->setManufacturer(Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildWifiNetworkInfo(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;)Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;
    .locals 2

    if-nez p0, :cond_0

    .line 49
    sget-object p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingDataTypesBuilder;->TAG:Ljava/lang/String;

    const-string v0, "Can\'t build WifiNetworkInfo with null wifiConnectionDetails"

    invoke-static {p0, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_0
    new-instance v0, Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;

    invoke-direct {v0}, Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;-><init>()V

    .line 54
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;->setSsid(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;->getKeyManagement()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingDataTypesBuilder;->getKeyManagementFromWJType(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;->setKeyManagement(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;->getConnectionState()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails$State;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;->setNetworkState(Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildWifiNetworkInfo(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;)Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;
    .locals 2

    if-nez p0, :cond_0

    .line 37
    sget-object p0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingDataTypesBuilder;->TAG:Ljava/lang/String;

    const-string v0, "Can\'t build WifiNetworkInfo with null wifiNetwork"

    invoke-static {p0, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 41
    :cond_0
    new-instance v0, Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;

    invoke-direct {v0}, Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;-><init>()V

    .line 42
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;->setSsid(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->getKeyManagement()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingDataTypesBuilder;->getKeyManagementFromWJType(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;->setKeyManagement(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getKeyManagementFromWJType(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;)Ljava/lang/String;
    .locals 3

    .line 90
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingDataTypesBuilder$1;->$SwitchMap$com$amazon$whisperjoin$common$sharedtypes$provisioning$data$wifi$WifiKeyManagement:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 98
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ReportingDataTypesBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key management for reporting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "NONE"

    return-object p0

    :cond_1
    const-string p0, "WEP"

    return-object p0

    :cond_2
    const-string p0, "WPAPSK"

    return-object p0
.end method
