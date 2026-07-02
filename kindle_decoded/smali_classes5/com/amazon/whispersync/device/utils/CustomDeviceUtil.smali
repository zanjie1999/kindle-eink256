.class public Lcom/amazon/whispersync/device/utils/CustomDeviceUtil;
.super Ljava/lang/Object;
.source "CustomDeviceUtil.java"

# interfaces
.implements Lcom/amazon/whispersync/device/utils/DeviceUtil;


# instance fields
.field private mDeviceSerialNumber:Ljava/lang/String;

.field private mDeviceType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/whispersync/device/utils/CustomDeviceUtil;->mDeviceType:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/amazon/whispersync/device/utils/CustomDeviceUtil;->mDeviceSerialNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fetchCountryOfResidence()Ljava/lang/String;
    .locals 1

    .line 49
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fetchCustomerID()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public fetchDeviceLanguage()Ljava/lang/String;
    .locals 1

    .line 65
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fetchDeviceMode()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public fetchDeviceSerialNumber()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/CustomDeviceUtil;->mDeviceSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public fetchDeviceSerialNumberOrAnonymous()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/CustomDeviceUtil;->mDeviceSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public fetchDeviceType()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/CustomDeviceUtil;->mDeviceType:Ljava/lang/String;

    return-object v0
.end method

.method public fetchPreferredMarketplace()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public fetchRemoteIP()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public fetchRsmGroupName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public fetchSessionID()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public fetchStaticCredential()Ljava/lang/String;
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/amazon/whispersync/device/utils/CustomDeviceUtil;->fetchDeviceType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fetchUserAgent()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isDeviceSerialNumberAnonymous()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setDeviceSerialNumber(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/amazon/whispersync/device/utils/CustomDeviceUtil;->mDeviceSerialNumber:Ljava/lang/String;

    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/amazon/whispersync/device/utils/CustomDeviceUtil;->mDeviceType:Ljava/lang/String;

    return-void
.end method
