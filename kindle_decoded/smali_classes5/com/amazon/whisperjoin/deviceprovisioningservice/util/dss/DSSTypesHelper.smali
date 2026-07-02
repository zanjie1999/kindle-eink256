.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/util/dss/DSSTypesHelper;
.super Ljava/lang/Object;
.source "DSSTypesHelper.java"


# direct methods
.method private static convertAuthMaterialIdentifier(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 165
    :cond_0
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier$Builder;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier$Builder;-><init>()V

    .line 166
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;->getAuthMaterialIndex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier$Builder;->setAuthMaterialIndex(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier$Builder;

    .line 167
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;->getProductIndex()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier$Builder;->setProductIndex(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier$Builder;

    .line 168
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier$Builder;->build()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static convertBarcodeIdentifier(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 173
    :cond_0
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier$Builder;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier$Builder;-><init>()V

    .line 174
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier;->getBarcodeData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier$Builder;->setBarcodeData(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier$Builder;

    .line 175
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier$Builder;->build()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static convertGetCustomerProvisioneesSetupStatusResponse(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusResponse;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetCustomerProvisioneesSetupStatusResponse;
    .locals 3

    .line 207
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetCustomerProvisioneesSetupStatusResponse$Builder;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetCustomerProvisioneesSetupStatusResponse$Builder;-><init>()V

    .line 210
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusResponse;->getProvisioneeSetupStatuses()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;

    .line 211
    invoke-static {v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/dss/DSSTypesHelper;->convertProvisioneeSetupStatus(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetCustomerProvisioneesSetupStatusResponse$Builder;->addProvisioneeSetupStatus(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetCustomerProvisioneesSetupStatusResponse$Builder;

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusResponse;->getSearchIntervalUsed()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetCustomerProvisioneesSetupStatusResponse$Builder;->setSearchIntervalUsed(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetCustomerProvisioneesSetupStatusResponse$Builder;

    .line 214
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetCustomerProvisioneesSetupStatusResponse$Builder;->createResponse()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetCustomerProvisioneesSetupStatusResponse;

    move-result-object p0

    return-object p0
.end method

.method private static convertLegacyIdentifier(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 180
    :cond_0
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier$Builder;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier$Builder;-><init>()V

    .line 181
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier$Builder;->setDeviceType(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier$Builder;

    .line 182
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;->getDsn()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier$Builder;->setDsn(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier$Builder;

    .line 183
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier$Builder;->build()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static convertProvisioneeSetupStatus(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 188
    :cond_0
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;-><init>()V

    .line 190
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->getAuthMaterialIdentifier()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;

    move-result-object v1

    .line 189
    invoke-static {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/dss/DSSTypesHelper;->convertAuthMaterialIdentifier(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->setAuthMaterialIdentifier(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;

    .line 192
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->getProvisionerInformation()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;

    move-result-object v1

    .line 191
    invoke-static {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/dss/DSSTypesHelper;->convertLegacyIdentifier(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->setProvisionerInformation(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;

    .line 194
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->getProvisioneeAuthMaterialIdentifier()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;

    move-result-object v1

    .line 193
    invoke-static {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/dss/DSSTypesHelper;->convertAuthMaterialIdentifier(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->setProvisioneeAuthMaterialIdentifier(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;

    .line 196
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->getProvisioneeBarcodeIdentifier()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier;

    move-result-object v1

    .line 195
    invoke-static {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/dss/DSSTypesHelper;->convertBarcodeIdentifier(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->setProvisioneeBarcodeIdentifier(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;

    .line 197
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->setErrorCode(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;

    .line 198
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->getLastUpdatedTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->setLastUpdatedTime(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;

    .line 199
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->getProvisioningMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->setProvisioningMethod(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;

    .line 200
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->getProvisioningState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->setProvisioningState(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;

    .line 201
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->getProvisioningStatus()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->setProvisioningStatus(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;

    .line 202
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->build()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static convertToDssWifiConfiguration(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;)Lcom/amazon/devicesetupservice/v1/WifiConfiguration;
    .locals 5

    .line 127
    new-instance v0, Lcom/amazon/devicesetupservice/v1/WifiConfiguration;

    invoke-direct {v0}, Lcom/amazon/devicesetupservice/v1/WifiConfiguration;-><init>()V

    .line 130
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;->setSsid(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiBaseConfiguration;->getNetworkPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/WifiConfiguration;->setPriority(I)V

    .line 133
    new-instance v1, Lcom/amazon/devicesetupservice/v1/CredentialConfiguration;

    invoke-direct {v1}, Lcom/amazon/devicesetupservice/v1/CredentialConfiguration;-><init>()V

    .line 134
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->getPsk()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->getPsk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/devicesetupservice/v1/CredentialConfiguration;->setPrivateSharedKey(Ljava/lang/String;)V

    .line 138
    :cond_0
    new-instance v2, Lcom/amazon/devicesetupservice/v1/WepKeyConfiguration;

    invoke-direct {v2}, Lcom/amazon/devicesetupservice/v1/WepKeyConfiguration;-><init>()V

    .line 140
    sget-object v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/dss/DSSTypesHelper$1;->$SwitchMap$com$amazon$whisperjoin$common$sharedtypes$provisioning$data$wifi$WifiKeyManagement:[I

    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->getKeyManagement()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 p0, 0x3

    if-eq v3, p0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string p0, "NONE"

    .line 152
    invoke-virtual {v0, p0}, Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;->setKeyManagement(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v3, "WEP"

    .line 146
    invoke-virtual {v0, v3}, Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;->setKeyManagement(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->getWepKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/amazon/devicesetupservice/v1/WepKeyConfiguration;->setWepKeyList(Ljava/util/List;)V

    .line 148
    invoke-virtual {v1, v2}, Lcom/amazon/devicesetupservice/v1/CredentialConfiguration;->setWepKeyConfiguration(Lcom/amazon/devicesetupservice/v1/WepKeyConfiguration;)V

    .line 149
    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/WifiConfiguration;->setCredentialConfiguration(Lcom/amazon/devicesetupservice/v1/CredentialConfiguration;)V

    goto :goto_0

    :cond_3
    const-string p0, "WPAPSK"

    .line 142
    invoke-virtual {v0, p0}, Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;->setKeyManagement(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/WifiConfiguration;->setCredentialConfiguration(Lcom/amazon/devicesetupservice/v1/CredentialConfiguration;)V

    :goto_0
    return-object v0
.end method

.method public static createWifiScanDataFromWifiConnectionDetails(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;)Lcom/amazon/devicesetup/common/v1/WifiScanData;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 107
    :cond_0
    new-instance v0, Lcom/amazon/devicesetup/common/v1/WifiScanData;

    invoke-direct {v0}, Lcom/amazon/devicesetup/common/v1/WifiScanData;-><init>()V

    .line 108
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetup/common/v1/WifiScanData;->setSsid(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;->getKeyManagement()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/dss/DSSTypesHelper;->getSecurityProtocolFromKeyManagement(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/devicesetup/common/v1/WifiScanData;->setSecurityProtocol(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createWifiScanDataFromWifiNetwork(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;)Lcom/amazon/devicesetup/common/v1/WifiScanData;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 96
    :cond_0
    new-instance v0, Lcom/amazon/devicesetup/common/v1/WifiScanData;

    invoke-direct {v0}, Lcom/amazon/devicesetup/common/v1/WifiScanData;-><init>()V

    .line 97
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetup/common/v1/WifiScanData;->setSsid(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->getKeyManagement()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/dss/DSSTypesHelper;->getSecurityProtocolFromKeyManagement(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/devicesetup/common/v1/WifiScanData;->setSecurityProtocol(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createWifiScanDataFromWifiScanResult(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;)Lcom/amazon/devicesetup/common/v1/WifiScanData;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_0
    new-instance v0, Lcom/amazon/devicesetup/common/v1/WifiScanData;

    invoke-direct {v0}, Lcom/amazon/devicesetup/common/v1/WifiScanData;-><init>()V

    .line 68
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetup/common/v1/WifiScanData;->setSsid(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->getKeyManagement()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/dss/DSSTypesHelper;->getSecurityProtocolFromKeyManagement(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetup/common/v1/WifiScanData;->setSecurityProtocol(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;->getFrequencyBand()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetup/common/v1/WifiScanData;->setFrequency(I)V

    .line 71
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;->getSignalStrength()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/amazon/devicesetup/common/v1/WifiScanData;->setRssi(I)V

    return-object v0
.end method

.method public static createWifiScanDataListFromWifiScanResults(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResultCollection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResultCollection;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/devicesetup/common/v1/WifiScanData;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/GenericTreeSetCollection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/GenericTreeSetCollection;->getSetCollection()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;

    .line 86
    invoke-static {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/dss/DSSTypesHelper;->createWifiScanDataFromWifiScanResult(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;)Lcom/amazon/devicesetup/common/v1/WifiScanData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getKeyExchangeMethodFromTrustState(Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;)Ljava/lang/String;
    .locals 3

    .line 50
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/dss/DSSTypesHelper$1;->$SwitchMap$com$amazon$whisperjoin$common$sharedtypes$cryptography$TrustProvider$TrustState:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "ECDHE"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string p0, "JPAKE"

    return-object p0

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected TrustState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v2
.end method

.method public static getSecurityProtocolFromKeyManagement(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;)Ljava/lang/String;
    .locals 1

    .line 76
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;->NONE:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "OPEN"

    return-object p0

    .line 80
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTrustMethodFromTrustState(Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;)Ljava/lang/String;
    .locals 3

    .line 37
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/dss/DSSTypesHelper$1;->$SwitchMap$com$amazon$whisperjoin$common$sharedtypes$cryptography$TrustProvider$TrustState:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    const-string v2, "UNAUTHENTICATED"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-object v2

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected TrustState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v2

    :cond_2
    const-string p0, "AUTHENTICATED"

    return-object p0
.end method
