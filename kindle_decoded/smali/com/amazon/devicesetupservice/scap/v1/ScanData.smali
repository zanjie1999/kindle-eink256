.class public Lcom/amazon/devicesetupservice/scap/v1/ScanData;
.super Ljava/lang/Object;
.source "ScanData.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private advertisementData:Ljava/nio/ByteBuffer;

.field private isConnectable:Z

.field private rssi:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.scap.v1.ScanData"

    aput-object v2, v0, v1

    .line 38
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/scap/v1/ScanData;->classNameHashCode:I

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
    instance-of v0, p1, Lcom/amazon/devicesetupservice/scap/v1/ScanData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 61
    :cond_0
    check-cast p1, Lcom/amazon/devicesetupservice/scap/v1/ScanData;

    .line 63
    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/ScanData;->advertisementData:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/scap/v1/ScanData;->advertisementData:Ljava/nio/ByteBuffer;

    .line 64
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/devicesetupservice/scap/v1/ScanData;->isConnectable:Z

    .line 65
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v2, p1, Lcom/amazon/devicesetupservice/scap/v1/ScanData;->isConnectable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/amazon/devicesetupservice/scap/v1/ScanData;->rssi:I

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p1, p1, Lcom/amazon/devicesetupservice/scap/v1/ScanData;->rssi:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAdvertisementData()Ljava/nio/ByteBuffer;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/ScanData;->advertisementData:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/amazon/devicesetupservice/scap/v1/ScanData;->rssi:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 45
    sget v1, Lcom/amazon/devicesetupservice/scap/v1/ScanData;->classNameHashCode:I

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/scap/v1/ScanData;->advertisementData:Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/devicesetupservice/scap/v1/ScanData;->isConnectable:Z

    .line 48
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/devicesetupservice/scap/v1/ScanData;->rssi:I

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 45
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isIsConnectable()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/amazon/devicesetupservice/scap/v1/ScanData;->isConnectable:Z

    return v0
.end method

.method public setAdvertisementData(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/amazon/devicesetupservice/scap/v1/ScanData;->advertisementData:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setIsConnectable(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/amazon/devicesetupservice/scap/v1/ScanData;->isConnectable:Z

    return-void
.end method

.method public setRssi(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/amazon/devicesetupservice/scap/v1/ScanData;->rssi:I

    return-void
.end method
