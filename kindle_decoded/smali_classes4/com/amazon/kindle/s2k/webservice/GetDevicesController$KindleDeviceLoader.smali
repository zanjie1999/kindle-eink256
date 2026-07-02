.class Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;
.super Ljava/lang/Object;
.source "GetDevicesController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/s2k/webservice/GetDevicesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KindleDeviceLoader"
.end annotation


# instance fields
.field private deviceName:Ljava/lang/String;

.field private deviceSerialNumber:Ljava/lang/String;

.field private isPdfCapable:Z

.field private isWanCapable:Z

.field private isWifiCapable:Z

.field private key:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/s2k/webservice/GetDevicesController$1;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getConcreteKindleDeviceInstance()Lcom/amazon/kindle/s2k/KindleDevice;
    .locals 7

    .line 165
    new-instance v6, Lcom/amazon/kindle/s2k/KindleDevice;

    iget-object v1, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;->deviceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;->deviceSerialNumber:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;->isPdfCapable:Z

    iget-boolean v4, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;->isWifiCapable:Z

    iget-boolean v5, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;->isWanCapable:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/s2k/KindleDevice;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 170
    invoke-virtual {v6}, Lcom/amazon/kindle/s2k/KindleDevice;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v6

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;->key:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public setDeviceSerialNumber(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;->deviceSerialNumber:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;->key:Ljava/lang/String;

    return-void
.end method

.method public setPdfCapable(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;->isPdfCapable:Z

    return-void
.end method

.method public setWanCapable(Z)V
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;->isWanCapable:Z

    return-void
.end method

.method public setWifiCapable(Z)V
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;->isWifiCapable:Z

    return-void
.end method
