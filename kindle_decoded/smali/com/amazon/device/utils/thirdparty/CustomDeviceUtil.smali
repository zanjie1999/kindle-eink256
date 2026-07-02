.class public Lcom/amazon/device/utils/thirdparty/CustomDeviceUtil;
.super Lcom/amazon/device/utils/thirdparty/AbstractDeviceUtil;
.source "CustomDeviceUtil.java"

# interfaces
.implements Lcom/amazon/device/utils/thirdparty/DeviceUtil;


# static fields
.field private static final DEFAULT_PREFERRED_MARKETPLACE:Ljava/lang/String; = "UNKNOWN"


# instance fields
.field private mCountryOfResidence:Ljava/lang/String;

.field private mDeviceSerialNumber:Ljava/lang/String;

.field private mDeviceType:Ljava/lang/String;

.field private mPreferredMarketplace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/amazon/device/utils/thirdparty/AbstractDeviceUtil;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fetchCountryOfResidence()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/amazon/device/utils/thirdparty/CustomDeviceUtil;->mCountryOfResidence:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 129
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public fetchDeviceLanguage()Ljava/lang/String;
    .locals 1

    .line 156
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

    .line 104
    iget-object v0, p0, Lcom/amazon/device/utils/thirdparty/CustomDeviceUtil;->mDeviceSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public fetchDeviceSerialNumberOrAnonymous()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/amazon/device/utils/thirdparty/CustomDeviceUtil;->mDeviceSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public fetchDeviceType()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/device/utils/thirdparty/CustomDeviceUtil;->mDeviceType:Ljava/lang/String;

    return-object v0
.end method

.method public fetchOSFileTag()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public fetchOTAGroupName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public fetchPreferredMarketplace()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazon/device/utils/thirdparty/CustomDeviceUtil;->mPreferredMarketplace:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "UNKNOWN"

    :cond_0
    return-object v0
.end method

.method public fetchRsmGroupName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public fetchStaticCredential()Ljava/lang/String;
    .locals 1

    .line 203
    invoke-virtual {p0}, Lcom/amazon/device/utils/thirdparty/CustomDeviceUtil;->fetchDeviceType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fetchWANSupportedDeviceMode()Ljava/lang/String;
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

    .line 66
    iput-object p1, p0, Lcom/amazon/device/utils/thirdparty/CustomDeviceUtil;->mDeviceSerialNumber:Ljava/lang/String;

    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/amazon/device/utils/thirdparty/CustomDeviceUtil;->mDeviceType:Ljava/lang/String;

    return-void
.end method

.method public setPreferredMarketplace(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/amazon/device/utils/thirdparty/CustomDeviceUtil;->mPreferredMarketplace:Ljava/lang/String;

    return-void
.end method
