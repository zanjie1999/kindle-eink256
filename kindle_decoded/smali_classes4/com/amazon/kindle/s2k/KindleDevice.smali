.class public Lcom/amazon/kindle/s2k/KindleDevice;
.super Ljava/lang/Object;
.source "KindleDevice.java"


# instance fields
.field private deviceName:Ljava/lang/String;

.field private deviceSerialNumber:Ljava/lang/String;

.field private isPdfCapable:Z

.field private isWanCapable:Z

.field private isWifiCapable:Z

.field private selected:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/kindle/s2k/KindleDevice;->deviceName:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/amazon/kindle/s2k/KindleDevice;->deviceSerialNumber:Ljava/lang/String;

    .line 32
    iput-boolean p3, p0, Lcom/amazon/kindle/s2k/KindleDevice;->isPdfCapable:Z

    .line 33
    iput-boolean p4, p0, Lcom/amazon/kindle/s2k/KindleDevice;->isWifiCapable:Z

    .line 34
    iput-boolean p5, p0, Lcom/amazon/kindle/s2k/KindleDevice;->isWanCapable:Z

    return-void
.end method


# virtual methods
.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/kindle/s2k/KindleDevice;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceSerialNumber()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/kindle/s2k/KindleDevice;->deviceSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getIsPdfCapable()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/amazon/kindle/s2k/KindleDevice;->isPdfCapable:Z

    return v0
.end method

.method public getIsWanCapable()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/amazon/kindle/s2k/KindleDevice;->isWanCapable:Z

    return v0
.end method

.method public getIsWifiCapable()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/amazon/kindle/s2k/KindleDevice;->isWifiCapable:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/amazon/kindle/s2k/KindleDevice;->selected:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/amazon/kindle/s2k/KindleDevice;->deviceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/s2k/KindleDevice;->deviceSerialNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/amazon/kindle/s2k/KindleDevice;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public setDeviceSerialNumber(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/amazon/kindle/s2k/KindleDevice;->deviceSerialNumber:Ljava/lang/String;

    return-void
.end method

.method public setIsPdfCapable(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/amazon/kindle/s2k/KindleDevice;->isPdfCapable:Z

    return-void
.end method

.method public setIsWanCapable(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/amazon/kindle/s2k/KindleDevice;->isWanCapable:Z

    return-void
.end method

.method public setIsWifiCapable(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/amazon/kindle/s2k/KindleDevice;->isWifiCapable:Z

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/amazon/kindle/s2k/KindleDevice;->selected:Z

    return-void
.end method

.method public toggleSelected()V
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/amazon/kindle/s2k/KindleDevice;->selected:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kindle/s2k/KindleDevice;->selected:Z

    return-void
.end method
