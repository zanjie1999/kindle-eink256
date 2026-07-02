.class public abstract Lcom/amazon/kindle/krx/application/DeviceInformation;
.super Lcom/amazon/kindle/krx/application/BaseDeviceInformation;
.source "DeviceInformation.java"


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field protected appSettings:Lcom/amazon/kcp/application/IAppSettingsController;

.field protected authManager:Lcom/amazon/kcp/application/IAuthenticationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/kindle/krx/application/DeviceInformation;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/application/DeviceInformation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/IAuthenticationManager;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/amazon/kindle/krx/application/BaseDeviceInformation;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/kindle/krx/application/DeviceInformation;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    .line 28
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/krx/application/DeviceInformation;->appSettings:Lcom/amazon/kcp/application/IAppSettingsController;

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/DeviceInformation;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->ACCESS_TOKEN:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDcpSettingBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/DeviceInformation;->appSettings:Lcom/amazon/kcp/application/IAppSettingsController;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/application/IAppSettingsController;->getDcpSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 43
    :catch_0
    sget-object p1, Lcom/amazon/kindle/krx/application/DeviceInformation;->TAG:Ljava/lang/String;

    const-string v0, "error converting dcp setting to boolean"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return p2
.end method

.method public getDcpSettingInteger(Ljava/lang/String;I)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/DeviceInformation;->appSettings:Lcom/amazon/kcp/application/IAppSettingsController;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/application/IAppSettingsController;->getDcpSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 54
    :catch_0
    sget-object p1, Lcom/amazon/kindle/krx/application/DeviceInformation;->TAG:Ljava/lang/String;

    const-string v0, "error converting dcp setting to integer"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return p2
.end method

.method public getDcpSettingLong(Ljava/lang/String;J)J
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/DeviceInformation;->appSettings:Lcom/amazon/kcp/application/IAppSettingsController;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/application/IAppSettingsController;->getDcpSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    .line 65
    :catch_0
    sget-object p1, Lcom/amazon/kindle/krx/application/DeviceInformation;->TAG:Ljava/lang/String;

    const-string v0, "error converting dcp setting to long"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-wide p2
.end method

.method public getDcpSettingString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/DeviceInformation;->appSettings:Lcom/amazon/kcp/application/IAppSettingsController;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/application/IAppSettingsController;->getDcpSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDeviceSerialNumber()Ljava/lang/String;
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/DeviceInformation;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->DEVICE_SERIAL_NUMBER:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/DeviceInformation;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->DEVICE_TYPE:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptedDSN()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/DeviceInformation;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getEncryptedDSN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptedDeviceSerialNumber()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/DeviceInformation;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getEncryptedDeviceSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptedDeviceType()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/DeviceInformation;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getEncryptedDeviceType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdentityCookies()[Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/DeviceInformation;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getIdentityCookies()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXfsnCookie()Ljava/lang/String;
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/DeviceInformation;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->XFSN_COOKIE:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXmainXacbCookie()Ljava/lang/String;
    .locals 2

    .line 135
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krxsdk/R$bool;->supports_all_xmain_xacb_cookies:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/application/DeviceInformation;->getXmainXacbCookieForDevicePfm()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/DeviceInformation;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->XMAIN_AND_XACB_COOKIES:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXmainXacbCookieForDevicePfm()Ljava/lang/String;
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/DeviceInformation;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->XMAIN_AND_XACB_DEVICE_PFM_KEY:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isGreyScaleScreen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOrientationChangeSupported(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isPurchaseProtected()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSoundSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
