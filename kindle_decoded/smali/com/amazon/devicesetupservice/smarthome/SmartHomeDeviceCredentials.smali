.class public Lcom/amazon/devicesetupservice/smarthome/SmartHomeDeviceCredentials;
.super Ljava/lang/Object;
.source "SmartHomeDeviceCredentials.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private ble:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/devicesetupservice/smarthome/BLEDeviceCredential;",
            ">;"
        }
    .end annotation
.end field

.field private bleMesh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/devicesetupservice/smarthome/BLEMeshDeviceCredential;",
            ">;"
        }
    .end annotation
.end field

.field private zigbee:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/devicesetupservice/smarthome/ZigbeeDeviceCredential;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.smarthome.SmartHomeDeviceCredentials"

    aput-object v2, v0, v1

    .line 38
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/smarthome/SmartHomeDeviceCredentials;->classNameHashCode:I

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

    .line 57
    instance-of v0, p1, Lcom/amazon/devicesetupservice/smarthome/SmartHomeDeviceCredentials;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 61
    :cond_0
    check-cast p1, Lcom/amazon/devicesetupservice/smarthome/SmartHomeDeviceCredentials;

    .line 63
    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/SmartHomeDeviceCredentials;->ble:Ljava/util/List;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/smarthome/SmartHomeDeviceCredentials;->ble:Ljava/util/List;

    .line 64
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/SmartHomeDeviceCredentials;->bleMesh:Ljava/util/List;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/smarthome/SmartHomeDeviceCredentials;->bleMesh:Ljava/util/List;

    .line 65
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/SmartHomeDeviceCredentials;->zigbee:Ljava/util/List;

    iget-object p1, p1, Lcom/amazon/devicesetupservice/smarthome/SmartHomeDeviceCredentials;->zigbee:Ljava/util/List;

    .line 66
    invoke-static {v0, p1}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getBle()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/devicesetupservice/smarthome/BLEDeviceCredential;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/SmartHomeDeviceCredentials;->ble:Ljava/util/List;

    return-object v0
.end method

.method public getBleMesh()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/devicesetupservice/smarthome/BLEMeshDeviceCredential;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/SmartHomeDeviceCredentials;->bleMesh:Ljava/util/List;

    return-object v0
.end method

.method public getZigbee()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/devicesetupservice/smarthome/ZigbeeDeviceCredential;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/SmartHomeDeviceCredentials;->zigbee:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 45
    sget v1, Lcom/amazon/devicesetupservice/smarthome/SmartHomeDeviceCredentials;->classNameHashCode:I

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/smarthome/SmartHomeDeviceCredentials;->ble:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/smarthome/SmartHomeDeviceCredentials;->bleMesh:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/smarthome/SmartHomeDeviceCredentials;->zigbee:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 45
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setBle(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/devicesetupservice/smarthome/BLEDeviceCredential;",
            ">;)V"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/amazon/devicesetupservice/smarthome/SmartHomeDeviceCredentials;->ble:Ljava/util/List;

    return-void
.end method

.method public setBleMesh(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/devicesetupservice/smarthome/BLEMeshDeviceCredential;",
            ">;)V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/amazon/devicesetupservice/smarthome/SmartHomeDeviceCredentials;->bleMesh:Ljava/util/List;

    return-void
.end method

.method public setZigbee(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/devicesetupservice/smarthome/ZigbeeDeviceCredential;",
            ">;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/amazon/devicesetupservice/smarthome/SmartHomeDeviceCredentials;->zigbee:Ljava/util/List;

    return-void
.end method
