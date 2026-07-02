.class public Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;
.super Ljava/lang/Object;
.source "ProvisionerInfo.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private application:Ljava/lang/String;

.field private applicationVersion:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private firmwareVersion:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.v1.ProvisionerInfo"

    aput-object v2, v0, v1

    .line 54
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->classNameHashCode:I

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

    .line 75
    instance-of v0, p1, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 79
    :cond_0
    check-cast p1, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    .line 81
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->application:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->application:Ljava/lang/String;

    .line 82
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->applicationVersion:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->applicationVersion:Ljava/lang/String;

    .line 83
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->deviceModel:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->deviceModel:Ljava/lang/String;

    .line 84
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->firmwareVersion:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->firmwareVersion:Ljava/lang/String;

    .line 85
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->manufacturer:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->manufacturer:Ljava/lang/String;

    .line 86
    invoke-static {v0, p1}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getApplication()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->application:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationVersion()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->applicationVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getFirmwareVersion()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->firmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 61
    sget v1, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->classNameHashCode:I

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->application:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->applicationVersion:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->deviceModel:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->firmwareVersion:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->manufacturer:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 61
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setApplication(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->application:Ljava/lang/String;

    return-void
.end method

.method public setApplicationVersion(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->applicationVersion:Ljava/lang/String;

    return-void
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->deviceModel:Ljava/lang/String;

    return-void
.end method

.method public setFirmwareVersion(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->firmwareVersion:Ljava/lang/String;

    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->manufacturer:Ljava/lang/String;

    return-void
.end method
