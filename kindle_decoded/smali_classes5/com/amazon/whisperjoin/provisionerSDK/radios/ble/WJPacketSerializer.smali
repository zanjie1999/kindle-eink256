.class public interface abstract Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/WJPacketSerializer;
.super Ljava/lang/Object;
.source "WJPacketSerializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/WJPacketSerializer$DefaultWJPacketSerializer;
    }
.end annotation


# virtual methods
.method public abstract serialize([B)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;",
            ">;"
        }
    .end annotation
.end method
