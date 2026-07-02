.class public Lcom/amazon/devicesetupservice/smarthome/SmartHomeProvisioneeDetails;
.super Lcom/amazon/devicesetupservice/ProvisioneeDetails;
.source "SmartHomeProvisioneeDetails.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private mac:Ljava/lang/String;

.field private rssi:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.smarthome.SmartHomeProvisioneeDetails"

    aput-object v2, v0, v1

    .line 29
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/smarthome/SmartHomeProvisioneeDetails;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/amazon/devicesetupservice/ProvisioneeDetails;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 48
    instance-of v0, p1, Lcom/amazon/devicesetupservice/smarthome/SmartHomeProvisioneeDetails;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 52
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/devicesetupservice/smarthome/SmartHomeProvisioneeDetails;

    .line 55
    invoke-super {p0, p1}, Lcom/amazon/devicesetupservice/ProvisioneeDetails;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/smarthome/SmartHomeProvisioneeDetails;->mac:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/smarthome/SmartHomeProvisioneeDetails;->mac:Ljava/lang/String;

    .line 56
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/amazon/devicesetupservice/smarthome/SmartHomeProvisioneeDetails;->rssi:I

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v0, v0, Lcom/amazon/devicesetupservice/smarthome/SmartHomeProvisioneeDetails;->rssi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/SmartHomeProvisioneeDetails;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/amazon/devicesetupservice/smarthome/SmartHomeProvisioneeDetails;->rssi:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 37
    invoke-super {p0}, Lcom/amazon/devicesetupservice/ProvisioneeDetails;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/amazon/devicesetupservice/smarthome/SmartHomeProvisioneeDetails;->classNameHashCode:I

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/smarthome/SmartHomeProvisioneeDetails;->mac:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/devicesetupservice/smarthome/SmartHomeProvisioneeDetails;->rssi:I

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 36
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/amazon/devicesetupservice/smarthome/SmartHomeProvisioneeDetails;->mac:Ljava/lang/String;

    return-void
.end method

.method public setRssi(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/amazon/devicesetupservice/smarthome/SmartHomeProvisioneeDetails;->rssi:I

    return-void
.end method
