.class public interface abstract Lcom/amazon/ras/uservalidation/cache/IDeviceConfigurationCache;
.super Ljava/lang/Object;
.source "IDeviceConfigurationCache.java"


# virtual methods
.method public abstract getEndpoint()Ljava/lang/String;
.end method

.method public abstract getProfileLink()Lcom/amazon/ras/uservalidation/models/ProfileLink;
.end method

.method public abstract isEnabled()Ljava/lang/Boolean;
.end method

.method public abstract isExpired()Z
.end method

.method public abstract setDeviceConfiguration(Lcom/amazon/ras/uservalidation/models/DeviceConfiguration;)Z
.end method
