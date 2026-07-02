.class public interface abstract Lcom/amazon/kindle/krx/application/IDeviceInformation;
.super Ljava/lang/Object;
.source "IDeviceInformation.java"


# virtual methods
.method public abstract getAccessToken()Ljava/lang/String;
.end method

.method public abstract getDcpSettingBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract getDcpSettingInteger(Ljava/lang/String;I)I
.end method

.method public abstract getDcpSettingLong(Ljava/lang/String;J)J
.end method

.method public abstract getDcpSettingString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDeviceSerialNumber()Ljava/lang/String;
.end method

.method public abstract getDeviceType()Ljava/lang/String;
.end method

.method public abstract getEncryptedDSN()Ljava/lang/String;
.end method

.method public abstract getEncryptedDeviceSerialNumber()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getEncryptedDeviceType()Ljava/lang/String;
.end method

.method public abstract getIdentityCookies()[Ljava/lang/String;
.end method

.method public abstract getXfsnCookie()Ljava/lang/String;
.end method

.method public abstract getXmainXacbCookie()Ljava/lang/String;
.end method

.method public abstract getXmainXacbCookieForDevicePfm()Ljava/lang/String;
.end method

.method public abstract isGreyScaleScreen()Z
.end method

.method public abstract isOrientationChangeSupported(I)Z
.end method

.method public abstract isPurchaseProtected()Z
.end method

.method public abstract isSoundSupported()Z
.end method
