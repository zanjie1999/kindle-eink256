.class public Lcom/amazon/devicesetup/common/v1/DeviceDetails;
.super Ljava/lang/Object;
.source "DeviceDetails.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private authMaterialIndex:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private deviceSerial:Ljava/lang/String;

.field private firmwareVersion:Ljava/lang/String;

.field private hardwareVersion:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private productIndex:Ljava/lang/String;

.field private sdkVersion:Ljava/lang/String;

.field private softwareVersionIndex:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetup.common.v1.DeviceDetails"

    aput-object v2, v0, v1

    .line 99
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 125
    instance-of v0, p1, Lcom/amazon/devicesetup/common/v1/DeviceDetails;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 129
    :cond_0
    check-cast p1, Lcom/amazon/devicesetup/common/v1/DeviceDetails;

    .line 131
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->authMaterialIndex:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->authMaterialIndex:Ljava/lang/String;

    .line 132
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->deviceModel:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->deviceModel:Ljava/lang/String;

    .line 133
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->deviceName:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->deviceName:Ljava/lang/String;

    .line 134
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->deviceSerial:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->deviceSerial:Ljava/lang/String;

    .line 135
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->firmwareVersion:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->firmwareVersion:Ljava/lang/String;

    .line 136
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->hardwareVersion:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->hardwareVersion:Ljava/lang/String;

    .line 137
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->manufacturer:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->manufacturer:Ljava/lang/String;

    .line 138
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->productIndex:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->productIndex:Ljava/lang/String;

    .line 139
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->sdkVersion:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->sdkVersion:Ljava/lang/String;

    .line 140
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->softwareVersionIndex:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->softwareVersionIndex:Ljava/lang/String;

    .line 141
    invoke-static {v0, p1}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAuthMaterialIndex()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->authMaterialIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceSerial()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->deviceSerial:Ljava/lang/String;

    return-object v0
.end method

.method public getFirmwareVersion()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->firmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getHardwareVersion()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->hardwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getProductIndex()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->productIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftwareVersionIndex()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->softwareVersionIndex:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    .line 106
    sget v1, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->classNameHashCode:I

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->authMaterialIndex:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->deviceModel:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->deviceName:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->deviceSerial:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->firmwareVersion:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->hardwareVersion:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->manufacturer:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->productIndex:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->sdkVersion:Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->softwareVersionIndex:Ljava/lang/String;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 106
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setAuthMaterialIndex(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->authMaterialIndex:Ljava/lang/String;

    return-void
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->deviceModel:Ljava/lang/String;

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public setDeviceSerial(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->deviceSerial:Ljava/lang/String;

    return-void
.end method

.method public setFirmwareVersion(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->firmwareVersion:Ljava/lang/String;

    return-void
.end method

.method public setHardwareVersion(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->hardwareVersion:Ljava/lang/String;

    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->manufacturer:Ljava/lang/String;

    return-void
.end method

.method public setProductIndex(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->productIndex:Ljava/lang/String;

    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->sdkVersion:Ljava/lang/String;

    return-void
.end method

.method public setSoftwareVersionIndex(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->softwareVersionIndex:Ljava/lang/String;

    return-void
.end method
