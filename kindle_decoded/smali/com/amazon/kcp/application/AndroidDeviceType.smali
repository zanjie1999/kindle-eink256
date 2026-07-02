.class public abstract Lcom/amazon/kcp/application/AndroidDeviceType;
.super Ljava/lang/Object;
.source "AndroidDeviceType.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmazonDeviceType()Lcom/amazon/kcp/application/IAmazonDeviceType;
    .locals 2

    .line 19
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->DEVICE_TYPE:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/amazon/kcp/application/AmazonDeviceType;->getDeviceTypeFromId(Ljava/lang/String;)Lcom/amazon/kcp/application/IAmazonDeviceType;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPlatformSoftwareVersion()Ljava/lang/String;
.end method
