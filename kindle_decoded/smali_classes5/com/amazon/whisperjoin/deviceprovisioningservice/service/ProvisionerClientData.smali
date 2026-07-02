.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;
.super Ljava/lang/Object;
.source "ProvisionerClientData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;
    }
.end annotation


# static fields
.field private static final KEY_APP_NAME:Ljava/lang/String; = "ProvisionerClientData.AppName"

.field private static final KEY_APP_VERSION:Ljava/lang/String; = "ProvisionerClientData.AppVersion"

.field private static final KEY_CUSTOMER_ECID:Ljava/lang/String; = "ProvisionerClientData.CustomerEcid"

.field private static final KEY_DEVICE_FIRMWARE_VERSION:Ljava/lang/String; = "ProvisionerClientData.DeviceFirmwareVersion"

.field private static final KEY_DEVICE_MANUFACTURER:Ljava/lang/String; = "ProvisionerClientData.DeviceManufacturer"

.field private static final KEY_DEVICE_MODEL:Ljava/lang/String; = "ProvisionerClientData.DeviceModel"

.field private static final KEY_DEVICE_SERIAL_NUMBER:Ljava/lang/String; = "ProvisionerClientData.DeviceSerialNumber"

.field private static final KEY_MARKETPLACE:Ljava/lang/String; = "ProvisionerClientData.Marketplace"

.field private static final KEY_METRICS_DEVICE_GROUP:Ljava/lang/String; = "ProvisionerClientData.MetricsDeviceGroup"

.field private static final PREFIX:Ljava/lang/String; = "ProvisionerClientData."

.field private static final TAG:Ljava/lang/String; = "ProvisionerClientData"


# instance fields
.field private final mClientAppName:Ljava/lang/String;

.field private final mClientAppVersion:Ljava/lang/String;

.field private final mCustomerEcid:Ljava/lang/String;

.field private final mDeviceFirmwareVersion:Ljava/lang/String;

.field private final mDeviceManufacturer:Ljava/lang/String;

.field private final mDeviceModel:Ljava/lang/String;

.field private final mDeviceSerialNumber:Ljava/lang/String;

.field private final mMarketplace:Ljava/lang/String;

.field private final mMetricsDeviceGroup:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mClientAppName:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mClientAppVersion:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mDeviceManufacturer:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mDeviceModel:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mDeviceSerialNumber:Ljava/lang/String;

    .line 48
    iput-object p6, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mDeviceFirmwareVersion:Ljava/lang/String;

    .line 49
    iput-object p7, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mMarketplace:Ljava/lang/String;

    .line 50
    iput-object p8, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mMetricsDeviceGroup:Ljava/lang/String;

    .line 51
    iput-object p9, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mCustomerEcid:Ljava/lang/String;

    return-void
.end method

.method public static readFromBundle(Landroid/os/Bundle;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;
    .locals 2

    if-eqz p0, :cond_0

    .line 255
    :try_start_0
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;-><init>()V

    const-string v1, "ProvisionerClientData.AppName"

    .line 256
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->setClientAppName(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;

    const-string v1, "ProvisionerClientData.AppVersion"

    .line 257
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->setClientAppVersion(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;

    const-string v1, "ProvisionerClientData.DeviceManufacturer"

    .line 258
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->setDeviceManufacturer(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;

    const-string v1, "ProvisionerClientData.DeviceModel"

    .line 259
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->setDeviceModel(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;

    const-string v1, "ProvisionerClientData.DeviceSerialNumber"

    .line 260
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->setDeviceSerialNumber(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;

    const-string v1, "ProvisionerClientData.DeviceFirmwareVersion"

    .line 261
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->setDeviceFirmwareVersion(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;

    const-string v1, "ProvisionerClientData.Marketplace"

    .line 262
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->setMarketplace(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;

    const-string v1, "ProvisionerClientData.MetricsDeviceGroup"

    .line 263
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->setMetricsDeviceGroup(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;

    const-string v1, "ProvisionerClientData.CustomerEcid"

    .line 264
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->setCustomerEcid(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;

    .line 265
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->createProvisionerClientData()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 267
    :catch_0
    sget-object p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->TAG:Ljava/lang/String;

    const-string v0, "No Valid ProvisionerClientData found in Bundle"

    invoke-static {p0, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 251
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bundle can not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readFromSharedPreferences(Landroid/content/SharedPreferences;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;
    .locals 3

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 300
    :try_start_0
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;

    invoke-direct {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;-><init>()V

    const-string v2, "ProvisionerClientData.AppName"

    .line 301
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->setClientAppName(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;

    const-string v2, "ProvisionerClientData.AppVersion"

    .line 302
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->setClientAppVersion(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;

    const-string v2, "ProvisionerClientData.DeviceManufacturer"

    .line 303
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->setDeviceManufacturer(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;

    const-string v2, "ProvisionerClientData.DeviceModel"

    .line 304
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->setDeviceModel(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;

    const-string v2, "ProvisionerClientData.DeviceSerialNumber"

    .line 305
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->setDeviceSerialNumber(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;

    const-string v2, "ProvisionerClientData.DeviceFirmwareVersion"

    .line 306
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->setDeviceFirmwareVersion(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;

    const-string v2, "ProvisionerClientData.Marketplace"

    .line 307
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->setMarketplace(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;

    const-string v2, "ProvisionerClientData.MetricsDeviceGroup"

    .line 308
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->setMetricsDeviceGroup(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;

    const-string v2, "ProvisionerClientData.CustomerEcid"

    .line 309
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->setCustomerEcid(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;

    .line 310
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->createProvisionerClientData()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 313
    :catch_0
    sget-object p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->TAG:Ljava/lang/String;

    const-string v1, "No Valid ProvisionerClientData found in SharedPreferences"

    invoke-static {p0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 295
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "sharedPreferences can not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static writeToBundle(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;Landroid/os/Bundle;)V
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getClientAppName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProvisionerClientData.AppName"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getClientAppVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProvisionerClientData.AppVersion"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProvisionerClientData.DeviceManufacturer"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProvisionerClientData.DeviceModel"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProvisionerClientData.DeviceSerialNumber"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProvisionerClientData.DeviceFirmwareVersion"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getMarketplace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProvisionerClientData.Marketplace"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getMetricsDeviceGroup()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProvisionerClientData.MetricsDeviceGroup"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getCustomerEcid()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ProvisionerClientData.CustomerEcid"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 235
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bundle can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 232
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "provisionerClientData can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static writeToSharedPreferences(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;Landroid/content/SharedPreferences;)V
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 279
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 280
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getClientAppName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProvisionerClientData.AppName"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 281
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getClientAppVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProvisionerClientData.AppVersion"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 282
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProvisionerClientData.DeviceManufacturer"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 283
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProvisionerClientData.DeviceModel"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 284
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProvisionerClientData.DeviceSerialNumber"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 285
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProvisionerClientData.DeviceFirmwareVersion"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 286
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getMarketplace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProvisionerClientData.Marketplace"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 287
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getMetricsDeviceGroup()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProvisionerClientData.MetricsDeviceGroup"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 288
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getCustomerEcid()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ProvisionerClientData.CustomerEcid"

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 290
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 277
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "sharedPreferences can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 274
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "provisionerClientData can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 108
    const-class v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 109
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    .line 110
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mClientAppName:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mClientAppName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mClientAppVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mClientAppVersion:Ljava/lang/String;

    .line 111
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mDeviceManufacturer:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mDeviceManufacturer:Ljava/lang/String;

    .line 112
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mDeviceModel:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mDeviceModel:Ljava/lang/String;

    .line 113
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mDeviceSerialNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mDeviceSerialNumber:Ljava/lang/String;

    .line 114
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mDeviceFirmwareVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mDeviceFirmwareVersion:Ljava/lang/String;

    .line 115
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mMarketplace:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mMarketplace:Ljava/lang/String;

    .line 116
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mMetricsDeviceGroup:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mMetricsDeviceGroup:Ljava/lang/String;

    .line 117
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mCustomerEcid:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mCustomerEcid:Ljava/lang/String;

    .line 118
    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getClientAppName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mClientAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getClientAppVersion()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mClientAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerEcid()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mCustomerEcid:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceFirmwareVersion()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mDeviceFirmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceManufacturer()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mDeviceManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mDeviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceSerialNumber()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mDeviceSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketplace()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mMarketplace:Ljava/lang/String;

    return-object v0
.end method

.method public getMetricsDeviceGroup()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mMetricsDeviceGroup:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 123
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mClientAppName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mClientAppVersion:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mDeviceManufacturer:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mDeviceModel:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mDeviceSerialNumber:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mDeviceFirmwareVersion:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mMarketplace:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mMetricsDeviceGroup:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mCustomerEcid:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 92
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mClientAppName:Ljava/lang/String;

    const-string v2, "mClientAppName"

    .line 93
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mClientAppVersion:Ljava/lang/String;

    const-string v2, "mClientAppVersion"

    .line 94
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mDeviceManufacturer:Ljava/lang/String;

    const-string v2, "mDeviceManufacturer"

    .line 95
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mDeviceModel:Ljava/lang/String;

    const-string v2, "mDeviceModel"

    .line 96
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mDeviceSerialNumber:Ljava/lang/String;

    const-string v2, "mDeviceSerialNumber"

    .line 97
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mDeviceFirmwareVersion:Ljava/lang/String;

    const-string v2, "mDeviceFirmwareVersion"

    .line 98
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mMarketplace:Ljava/lang/String;

    const-string v2, "mMarketplace"

    .line 99
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mMetricsDeviceGroup:Ljava/lang/String;

    const-string v2, "mMetricsDeviceGroup"

    .line 100
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->mCustomerEcid:Ljava/lang/String;

    const-string v2, "mCustomerEcid"

    .line 101
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 102
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
