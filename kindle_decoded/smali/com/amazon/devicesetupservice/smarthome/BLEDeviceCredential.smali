.class public Lcom/amazon/devicesetupservice/smarthome/BLEDeviceCredential;
.super Ljava/lang/Object;
.source "BLEDeviceCredential.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private macAddress:Ljava/lang/String;

.field private rssi:I

.field private scanRecord:Ljava/lang/String;

.field private timestamp:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.smarthome.BLEDeviceCredential"

    aput-object v2, v0, v1

    .line 45
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/smarthome/BLEDeviceCredential;->classNameHashCode:I

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

    .line 65
    instance-of v0, p1, Lcom/amazon/devicesetupservice/smarthome/BLEDeviceCredential;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 69
    :cond_0
    check-cast p1, Lcom/amazon/devicesetupservice/smarthome/BLEDeviceCredential;

    .line 71
    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/BLEDeviceCredential;->macAddress:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/smarthome/BLEDeviceCredential;->macAddress:Ljava/lang/String;

    .line 72
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/amazon/devicesetupservice/smarthome/BLEDeviceCredential;->rssi:I

    .line 73
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p1, Lcom/amazon/devicesetupservice/smarthome/BLEDeviceCredential;->rssi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/BLEDeviceCredential;->scanRecord:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/smarthome/BLEDeviceCredential;->scanRecord:Ljava/lang/String;

    .line 74
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/amazon/devicesetupservice/smarthome/BLEDeviceCredential;->timestamp:I

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p1, p1, Lcom/amazon/devicesetupservice/smarthome/BLEDeviceCredential;->timestamp:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/BLEDeviceCredential;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/amazon/devicesetupservice/smarthome/BLEDeviceCredential;->rssi:I

    return v0
.end method

.method public getScanRecord()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/BLEDeviceCredential;->scanRecord:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/amazon/devicesetupservice/smarthome/BLEDeviceCredential;->timestamp:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 52
    sget v1, Lcom/amazon/devicesetupservice/smarthome/BLEDeviceCredential;->classNameHashCode:I

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/smarthome/BLEDeviceCredential;->macAddress:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/devicesetupservice/smarthome/BLEDeviceCredential;->rssi:I

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/smarthome/BLEDeviceCredential;->scanRecord:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/devicesetupservice/smarthome/BLEDeviceCredential;->timestamp:I

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 52
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/amazon/devicesetupservice/smarthome/BLEDeviceCredential;->macAddress:Ljava/lang/String;

    return-void
.end method

.method public setRssi(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/amazon/devicesetupservice/smarthome/BLEDeviceCredential;->rssi:I

    return-void
.end method

.method public setScanRecord(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/amazon/devicesetupservice/smarthome/BLEDeviceCredential;->scanRecord:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/amazon/devicesetupservice/smarthome/BLEDeviceCredential;->timestamp:I

    return-void
.end method
