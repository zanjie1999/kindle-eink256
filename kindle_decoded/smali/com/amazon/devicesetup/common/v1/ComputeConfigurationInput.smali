.class public Lcom/amazon/devicesetup/common/v1/ComputeConfigurationInput;
.super Ljava/lang/Object;
.source "ComputeConfigurationInput.java"


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

.field private deviceDetails:Lcom/amazon/devicesetup/common/v1/DeviceDetails;

.field private nonce:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetup.common.v1.ComputeConfigurationInput"

    aput-object v2, v0, v1

    .line 47
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationInput;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 67
    instance-of v0, p1, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationInput;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 71
    :cond_0
    check-cast p1, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationInput;

    .line 73
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationInput;->configuration:Ljava/util/Map;

    iget-object v2, p1, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationInput;->configuration:Ljava/util/Map;

    .line 74
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationInput;->deviceDetails:Lcom/amazon/devicesetup/common/v1/DeviceDetails;

    iget-object v2, p1, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationInput;->deviceDetails:Lcom/amazon/devicesetup/common/v1/DeviceDetails;

    .line 75
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationInput;->nonce:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationInput;->nonce:Ljava/lang/String;

    .line 76
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationInput;->sessionId:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationInput;->sessionId:Ljava/lang/String;

    .line 77
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

    .line 15
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationInput;->configuration:Ljava/util/Map;

    return-object v0
.end method

.method public getDeviceDetails()Lcom/amazon/devicesetup/common/v1/DeviceDetails;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationInput;->deviceDetails:Lcom/amazon/devicesetup/common/v1/DeviceDetails;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationInput;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationInput;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 54
    sget v1, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationInput;->classNameHashCode:I

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationInput;->configuration:Ljava/util/Map;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationInput;->deviceDetails:Lcom/amazon/devicesetup/common/v1/DeviceDetails;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationInput;->nonce:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationInput;->sessionId:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 54
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

    .line 19
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationInput;->configuration:Ljava/util/Map;

    return-void
.end method

.method public setDeviceDetails(Lcom/amazon/devicesetup/common/v1/DeviceDetails;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationInput;->deviceDetails:Lcom/amazon/devicesetup/common/v1/DeviceDetails;

    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationInput;->nonce:Ljava/lang/String;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationInput;->sessionId:Ljava/lang/String;

    return-void
.end method
