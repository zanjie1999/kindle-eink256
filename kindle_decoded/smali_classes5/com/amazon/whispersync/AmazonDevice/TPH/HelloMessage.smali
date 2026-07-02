.class public Lcom/amazon/whispersync/AmazonDevice/TPH/HelloMessage;
.super Lcom/amazon/whispersync/AmazonDevice/TPH/Packet;
.source "HelloMessage.java"


# instance fields
.field private mDeviceSerial:Ljava/lang/String;

.field private mDeviceType:Ljava/lang/String;

.field private final mSessionTimeoutSec:S

.field private final mSilentPeriodSec:S


# direct methods
.method public constructor <init>(SS)V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/TPH/Packet;-><init>()V

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/HelloMessage;->mDeviceSerial:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/HelloMessage;->mDeviceType:Ljava/lang/String;

    .line 16
    iput-short p1, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/HelloMessage;->mSessionTimeoutSec:S

    .line 17
    iput-short p2, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/HelloMessage;->mSilentPeriodSec:S

    return-void
.end method


# virtual methods
.method public getDeviceSerialNumber()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/HelloMessage;->mDeviceSerial:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceSerialNumberLength()J
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/HelloMessage;->mDeviceSerial:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/HelloMessage;->mDeviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceTypeLength()J
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/HelloMessage;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSessionTimeoutSec()S
    .locals 1

    .line 67
    iget-short v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/HelloMessage;->mSessionTimeoutSec:S

    return v0
.end method

.method public getSilentPeriodSec()S
    .locals 1

    .line 72
    iget-short v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/HelloMessage;->mSilentPeriodSec:S

    return v0
.end method

.method public getType()Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;
    .locals 1

    .line 32
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;->PhoneHomeMessageTypeHello:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/HelloMessage;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/HelloMessage;->mDeviceSerial:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDeviceSerialNumber(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/HelloMessage;->mDeviceSerial:Ljava/lang/String;

    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/HelloMessage;->mDeviceType:Ljava/lang/String;

    return-void
.end method
