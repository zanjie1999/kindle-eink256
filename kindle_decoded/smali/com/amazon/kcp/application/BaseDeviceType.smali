.class public abstract Lcom/amazon/kcp/application/BaseDeviceType;
.super Lcom/amazon/kcp/application/AndroidDeviceType;
.source "BaseDeviceType.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidDeviceType;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amazon/kcp/application/BaseDeviceType;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAmazonDeviceType()Lcom/amazon/kcp/application/IAmazonDeviceType;
    .locals 2

    .line 20
    invoke-super {p0}, Lcom/amazon/kcp/application/AndroidDeviceType;->getAmazonDeviceType()Lcom/amazon/kcp/application/IAmazonDeviceType;

    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/amazon/kcp/application/AmazonDeviceType;->isUnknownType(Lcom/amazon/kcp/application/IAmazonDeviceType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    iget-object v0, p0, Lcom/amazon/kcp/application/BaseDeviceType;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/BaseDeviceType;->getDeviceTypeIdFromChildResources(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/AmazonDeviceType;->getDeviceTypeFromId(Ljava/lang/String;)Lcom/amazon/kcp/application/IAmazonDeviceType;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method abstract getDeviceTypeIdFromChildResources(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public getPlatformSoftwareVersion()Ljava/lang/String;
    .locals 2

    .line 29
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->getInternalVersionNumber()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
