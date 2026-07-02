.class public Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;
.super Ljava/lang/Object;
.source "ProvisionableInfo.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private deviceModel:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private deviceSerial:Ljava/lang/String;

.field private firmwareVersion:Ljava/lang/String;

.field private hardwareVersion:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private sdkVersion:Ljava/lang/String;

.field private softwareVersionIndex:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.v1.ProvisionableInfo"

    aput-object v2, v0, v1

    .line 81
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->classNameHashCode:I

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

    .line 105
    instance-of v0, p1, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 109
    :cond_0
    check-cast p1, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    .line 111
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->deviceModel:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->deviceModel:Ljava/lang/String;

    .line 112
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->deviceName:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->deviceName:Ljava/lang/String;

    .line 113
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->deviceSerial:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->deviceSerial:Ljava/lang/String;

    .line 114
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->firmwareVersion:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->firmwareVersion:Ljava/lang/String;

    .line 115
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->hardwareVersion:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->hardwareVersion:Ljava/lang/String;

    .line 116
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->manufacturer:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->manufacturer:Ljava/lang/String;

    .line 117
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->sdkVersion:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->sdkVersion:Ljava/lang/String;

    .line 118
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->softwareVersionIndex:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->softwareVersionIndex:Ljava/lang/String;

    .line 119
    invoke-static {v0, p1}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceSerial()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->deviceSerial:Ljava/lang/String;

    return-object v0
.end method

.method public getFirmwareVersion()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->firmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getHardwareVersion()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->hardwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftwareVersionIndex()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->softwareVersionIndex:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 88
    sget v1, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->classNameHashCode:I

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->deviceModel:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->deviceName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->deviceSerial:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->firmwareVersion:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->hardwareVersion:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->manufacturer:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->sdkVersion:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->softwareVersionIndex:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 88
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->deviceModel:Ljava/lang/String;

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public setDeviceSerial(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->deviceSerial:Ljava/lang/String;

    return-void
.end method

.method public setFirmwareVersion(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->firmwareVersion:Ljava/lang/String;

    return-void
.end method

.method public setHardwareVersion(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->hardwareVersion:Ljava/lang/String;

    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->manufacturer:Ljava/lang/String;

    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->sdkVersion:Ljava/lang/String;

    return-void
.end method

.method public setSoftwareVersionIndex(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->softwareVersionIndex:Ljava/lang/String;

    return-void
.end method
