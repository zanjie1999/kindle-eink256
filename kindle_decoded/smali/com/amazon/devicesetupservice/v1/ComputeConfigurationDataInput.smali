.class public Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataInput;
.super Ljava/lang/Object;
.source "ComputeConfigurationDataInput.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private configuration:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private configurationDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetup/common/DataMapValue;",
            ">;"
        }
    .end annotation
.end field

.field private deviceDetails:Lcom/amazon/devicesetup/common/v1/DeviceDetails;

.field private nonce:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.v1.ComputeConfigurationDataInput"

    aput-object v2, v0, v1

    .line 49
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataInput;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 69
    instance-of v0, p1, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataInput;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 73
    :cond_0
    check-cast p1, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataInput;

    .line 75
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataInput;->configuration:Ljava/util/Map;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataInput;->configuration:Ljava/util/Map;

    .line 76
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataInput;->configurationDataMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataInput;->configurationDataMap:Ljava/util/Map;

    .line 77
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataInput;->deviceDetails:Lcom/amazon/devicesetup/common/v1/DeviceDetails;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataInput;->deviceDetails:Lcom/amazon/devicesetup/common/v1/DeviceDetails;

    .line 78
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataInput;->nonce:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataInput;->nonce:Ljava/lang/String;

    .line 79
    invoke-static {v0, p1}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getConfiguration()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataInput;->configuration:Ljava/util/Map;

    return-object v0
.end method

.method public getConfigurationDataMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetup/common/DataMapValue;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataInput;->configurationDataMap:Ljava/util/Map;

    return-object v0
.end method

.method public getDeviceDetails()Lcom/amazon/devicesetup/common/v1/DeviceDetails;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataInput;->deviceDetails:Lcom/amazon/devicesetup/common/v1/DeviceDetails;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataInput;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 56
    sget v1, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataInput;->classNameHashCode:I

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataInput;->configuration:Ljava/util/Map;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataInput;->configurationDataMap:Ljava/util/Map;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataInput;->deviceDetails:Lcom/amazon/devicesetup/common/v1/DeviceDetails;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataInput;->nonce:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 56
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setConfiguration(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataInput;->configuration:Ljava/util/Map;

    return-void
.end method

.method public setConfigurationDataMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetup/common/DataMapValue;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataInput;->configurationDataMap:Ljava/util/Map;

    return-void
.end method

.method public setDeviceDetails(Lcom/amazon/devicesetup/common/v1/DeviceDetails;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataInput;->deviceDetails:Lcom/amazon/devicesetup/common/v1/DeviceDetails;

    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataInput;->nonce:Ljava/lang/String;

    return-void
.end method
