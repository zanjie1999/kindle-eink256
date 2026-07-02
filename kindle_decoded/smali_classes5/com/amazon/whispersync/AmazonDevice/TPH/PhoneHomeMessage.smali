.class public Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessage;
.super Ljava/lang/Object;
.source "PhoneHomeMessage.java"

# interfaces
.implements Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage;


# instance fields
.field private final mDeviceSerialNumber:Ljava/lang/String;

.field private final mDeviceType:Ljava/lang/String;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessage;->mDeviceSerialNumber:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessage;->mDeviceType:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessage;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDeviceSerialNumber()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessage;->mDeviceSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessage;->mDeviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessage;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage$Type;
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage$Type;->PhoneHome:Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage$Type;

    return-object v0
.end method
