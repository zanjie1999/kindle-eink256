.class public interface abstract Lcom/audible/mobile/identity/IdentityManager;
.super Ljava/lang/Object;
.source "IdentityManager.java"


# virtual methods
.method public abstract getActiveAccountCustomerId()Lcom/audible/mobile/domain/CustomerId;
.end method

.method public abstract getCustomerPreferredMarketplace()Lcom/audible/mobile/identity/Marketplace;
.end method

.method public abstract getDeviceActivationSerialNumber()Lcom/audible/mobile/identity/DeviceSerialNumber;
.end method

.method public abstract getDeviceSerialNumber()Lcom/audible/mobile/identity/DeviceSerialNumber;
.end method

.method public abstract getDeviceType()Lcom/audible/mobile/identity/DeviceType;
.end method

.method public abstract isAccountRegistered()Z
.end method

.method public abstract newAuthenticatedHttpUrlConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract newAuthenticatedHttpUrlConnectionHeaders(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;[B)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;[B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract registerPreLogoutAction(Ljava/lang/Runnable;)V
.end method

.method public abstract setDeviceActivationSerialNumberEncoder(Lcom/audible/mobile/identity/DeviceActivationSerialNumberEncoder;)V
.end method
