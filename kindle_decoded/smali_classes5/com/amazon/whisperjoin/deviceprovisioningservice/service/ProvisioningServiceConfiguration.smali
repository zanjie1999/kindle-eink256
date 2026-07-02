.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;
.super Ljava/lang/Object;
.source "ProvisioningServiceConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;
    }
.end annotation


# static fields
.field private static final CONFIGURATION_SAVED_KEY:Ljava/lang/String; = "ProvisioningServiceConfiguration.ConfigurationSaved"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG_ENABLED:Ljava/lang/String; = "ProvisioningServiceConfiguration.DebugEnabled"

.field private static final DEFAULT_DSS_CONFIG:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;

.field private static final PREFIX:Ljava/lang/String; = "ProvisioningServiceConfiguration."

.field private static final PROVISIONABLE_BEACON_TYPE:Ljava/lang/String; = "ProvisioningServiceConfiguration.ProvisionableBeaconType"

.field private static final PROVISIONER_APP_NAME:Ljava/lang/String; = "ProvisioningServiceConfiguration.ProvisionerAppName"

.field private static final PROVISIONER_DEVICE_GROUP:Ljava/lang/String; = "ProvisioningServiceConfiguration.ProvisionerDeviceGroup"

.field private static final PROVISIONER_VERSION_NUM:Ljava/lang/String; = "ProvisioningServiceConfiguration.ProvisionerAppVersionNumber"


# instance fields
.field private final mDSSServiceConfiguration:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;

.field private final mDebugEnabled:Z

.field private final mLocaleConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;

.field private final mProvisionableBeaconType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

.field private final mProvisionerApplicationName:Ljava/lang/String;

.field private final mProvisionerDeviceGroup:Ljava/lang/String;

.field private final mProvisionerVersionNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    invoke-static {}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;->prod()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->DEFAULT_DSS_CONFIG:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;

    .line 261
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;Z)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mLocaleConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;

    .line 55
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mDSSServiceConfiguration:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;

    .line 56
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionerApplicationName:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionerVersionNumber:Ljava/lang/String;

    .line 58
    iput-object p5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionerDeviceGroup:Ljava/lang/String;

    .line 59
    iput-object p6, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionableBeaconType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    .line 60
    iput-boolean p7, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mDebugEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;ZLcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$1;)V
    .locals 0

    .line 17
    invoke-direct/range {p0 .. p7}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;Z)V

    return-void
.end method

.method static synthetic access$000()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;
    .locals 1

    .line 17
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->DEFAULT_DSS_CONFIG:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;

    return-object v0
.end method

.method public static getFromBundle(Landroid/os/Bundle;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;
    .locals 2

    if-eqz p0, :cond_0

    .line 320
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;-><init>()V

    .line 321
    invoke-static {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->getFromBundle(Landroid/os/Bundle;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->setLocaleConfiguration(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;

    .line 322
    invoke-static {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;->fromBundle(Landroid/os/Bundle;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->setDssServiceConfiguration(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;

    const-string v1, "ProvisioningServiceConfiguration.ProvisionerAppName"

    .line 323
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->setProvisionerApplicationName(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;

    const-string v1, "ProvisioningServiceConfiguration.ProvisionerAppVersionNumber"

    .line 324
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->setProvisionerVersionNumber(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;

    const-string v1, "ProvisioningServiceConfiguration.ProvisionerDeviceGroup"

    .line 325
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->setProvisionerDeviceGroup(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;

    const-string v1, "ProvisioningServiceConfiguration.ProvisionableBeaconType"

    .line 326
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;->fromInt(I)Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->setProvisionableBeaconType(Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;

    const-string v1, "ProvisioningServiceConfiguration.DebugEnabled"

    .line 327
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->setDebugEnabled(Z)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;

    .line 328
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->createProvisioningServiceConfiguration()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    move-result-object p0

    return-object p0

    .line 317
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bundle can not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFromSharedPreferences(Landroid/content/SharedPreferences;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;
    .locals 4

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    const-string v1, "ProvisioningServiceConfiguration.ConfigurationSaved"

    .line 336
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 341
    :cond_0
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;

    invoke-direct {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;-><init>()V

    .line 342
    invoke-static {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->fromSharedPreferences(Landroid/content/SharedPreferences;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->setLocaleConfiguration(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;

    .line 343
    invoke-static {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;->fromSharedPreferences(Landroid/content/SharedPreferences;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->setDssServiceConfiguration(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;

    const-string v3, "ProvisioningServiceConfiguration.ProvisionerAppName"

    .line 344
    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->setProvisionerApplicationName(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;

    const-string v3, "ProvisioningServiceConfiguration.ProvisionerAppVersionNumber"

    .line 345
    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->setProvisionerVersionNumber(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;

    const-string v3, "ProvisioningServiceConfiguration.ProvisionerDeviceGroup"

    .line 346
    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->setProvisionerDeviceGroup(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;

    const-string v2, "ProvisioningServiceConfiguration.ProvisionableBeaconType"

    .line 347
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;->fromInt(I)Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->setProvisionableBeaconType(Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;

    const-string v2, "ProvisioningServiceConfiguration.DebugEnabled"

    .line 348
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->setDebugEnabled(Z)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;

    .line 349
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->createProvisioningServiceConfiguration()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    move-result-object p0

    return-object p0

    .line 333
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "SharedPreferences can not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 131
    const-class v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 132
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    .line 133
    iget-boolean v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mDebugEnabled:Z

    iget-boolean v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mDebugEnabled:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mLocaleConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mLocaleConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;

    .line 134
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mDSSServiceConfiguration:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mDSSServiceConfiguration:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;

    .line 135
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionerApplicationName:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionerApplicationName:Ljava/lang/String;

    .line 136
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionerVersionNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionerVersionNumber:Ljava/lang/String;

    .line 137
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionerDeviceGroup:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionerDeviceGroup:Ljava/lang/String;

    .line 138
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionableBeaconType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    iget-object p1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionableBeaconType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    .line 139
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

.method public getDSSServiceConfiguration()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mDSSServiceConfiguration:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;

    return-object v0
.end method

.method public getLocaleConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mLocaleConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;

    return-object v0
.end method

.method public getProvisionableBeaconType()Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionableBeaconType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    return-object v0
.end method

.method public getProvisionerApplicationName()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionerApplicationName:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisionerDeviceGroup()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionerDeviceGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisionerVersionNumber()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionerVersionNumber:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 144
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mLocaleConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mDSSServiceConfiguration:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionerApplicationName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionerVersionNumber:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionerDeviceGroup:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionableBeaconType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mDebugEnabled:Z

    .line 146
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 144
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDebugEnabled()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mDebugEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 117
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mLocaleConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;

    const-string v2, "mLocaleConfiguration"

    .line 118
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mDSSServiceConfiguration:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;

    const-string v2, "mDSSServiceConfiguration"

    .line 119
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionerApplicationName:Ljava/lang/String;

    const-string v2, "mProvisionerApplicationName"

    .line 120
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionerVersionNumber:Ljava/lang/String;

    const-string v2, "mProvisionerVersionNumber"

    .line 121
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionerDeviceGroup:Ljava/lang/String;

    const-string v2, "mProvisionerDeviceGroup"

    .line 122
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionableBeaconType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    .line 123
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mProvisionableBeaconType"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mDebugEnabled:Z

    const-string v2, "mDebugEnabled"

    .line 124
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 125
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToBundle(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mLocaleConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->writeToBundle(Landroid/os/Bundle;)V

    .line 291
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mDSSServiceConfiguration:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;->writeToBundle(Landroid/os/Bundle;)V

    .line 292
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionerApplicationName:Ljava/lang/String;

    const-string v1, "ProvisioningServiceConfiguration.ProvisionerAppName"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionerVersionNumber:Ljava/lang/String;

    const-string v1, "ProvisioningServiceConfiguration.ProvisionerAppVersionNumber"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionerDeviceGroup:Ljava/lang/String;

    const-string v1, "ProvisioningServiceConfiguration.ProvisionerDeviceGroup"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionableBeaconType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;->toInt()I

    move-result v0

    const-string v1, "ProvisioningServiceConfiguration.ProvisionableBeaconType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 296
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mDebugEnabled:Z

    const-string v1, "ProvisioningServiceConfiguration.DebugEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    .line 287
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bundle can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    if-eqz p1, :cond_6

    .line 231
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 233
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mLocaleConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->writeToBundle(Landroid/os/Bundle;)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mDSSServiceConfiguration:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;

    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {v0, p2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;->writeToBundle(Landroid/os/Bundle;)V

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionerApplicationName:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "ProvisioningServiceConfiguration.ProvisionerAppName"

    .line 242
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionerVersionNumber:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v1, "ProvisioningServiceConfiguration.ProvisionerAppVersionNumber"

    .line 246
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_3
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionerDeviceGroup:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v1, "ProvisioningServiceConfiguration.ProvisionerDeviceGroup"

    .line 250
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_4
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionableBeaconType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    if-eqz v0, :cond_5

    .line 254
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;->toInt()I

    move-result v0

    const-string v1, "ProvisioningServiceConfiguration.ProvisionableBeaconType"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 257
    :cond_5
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mDebugEnabled:Z

    const-string v1, "ProvisioningServiceConfiguration.DebugEnabled"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 258
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void

    .line 228
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dest cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeToSharedPreferences(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 304
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mLocaleConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->writeToSharedPreferences(Landroid/content/SharedPreferences$Editor;)V

    .line 305
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mDSSServiceConfiguration:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;->writeToSharedPreferences(Landroid/content/SharedPreferences$Editor;)V

    const/4 v0, 0x1

    const-string v1, "ProvisioningServiceConfiguration.ConfigurationSaved"

    .line 306
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 307
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionerApplicationName:Ljava/lang/String;

    const-string v1, "ProvisioningServiceConfiguration.ProvisionerAppName"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 308
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionerVersionNumber:Ljava/lang/String;

    const-string v1, "ProvisioningServiceConfiguration.ProvisionerAppVersionNumber"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 309
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionerDeviceGroup:Ljava/lang/String;

    const-string v1, "ProvisioningServiceConfiguration.ProvisionerDeviceGroup"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 310
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mProvisionableBeaconType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;->toInt()I

    move-result v0

    const-string v1, "ProvisioningServiceConfiguration.ProvisionableBeaconType"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 311
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->mDebugEnabled:Z

    const-string v1, "ProvisioningServiceConfiguration.DebugEnabled"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 312
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 301
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "editor can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
