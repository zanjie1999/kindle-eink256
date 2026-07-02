.class public Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/WJPacketSerializer$DefaultWJPacketSerializer;
.super Ljava/lang/Object;
.source "WJPacketSerializer.java"

# interfaces
.implements Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/WJPacketSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/WJPacketSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultWJPacketSerializer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize([B)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;",
            ">;"
        }
    .end annotation

    .line 16
    invoke-static {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;->createPackets([B)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
