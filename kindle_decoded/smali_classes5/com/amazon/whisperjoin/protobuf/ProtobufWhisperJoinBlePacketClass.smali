.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass;
.super Ljava/lang/Object;
.source "ProtobufWhisperJoinBlePacketClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;,
        Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacketOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_protobuf_ProtobufWhisperJoinBlePacket_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_protobuf_ProtobufWhisperJoinBlePacket_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "\nEWhisperJoinProtocolBuffersModel/schema/ble/WhisperJoinBlePacket.proto\u0012\u0008protobuf\"p\n\u001cProtobufWhisperJoinBlePacket\u0012\u0011\n\tpacketKey\u0018\u0001 \u0002(\u0011\u0012\u0012\n\nchunkIndex\u0018\u0002 \u0002(\u0011\u0012\u0018\n\u0010additionalChunks\u0018\u0003 \u0002(\u0008\u0012\u000f\n\u0007payload\u0018\u0004 \u0002(\u000cBD\n\u001fcom.amazon.whisperjoin.protobufB!ProtobufWhisperJoinBlePacketClass"

    .line 931
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 940
    new-instance v1, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$1;

    invoke-direct {v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$1;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 949
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 953
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass;->internal_static_protobuf_ProtobufWhisperJoinBlePacket_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 954
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "PacketKey"

    const-string v3, "ChunkIndex"

    const-string v4, "AdditionalChunks"

    const-string v5, "Payload"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass;->internal_static_protobuf_ProtobufWhisperJoinBlePacket_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass;->internal_static_protobuf_ProtobufWhisperJoinBlePacket_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass;->internal_static_protobuf_ProtobufWhisperJoinBlePacket_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 6
    sput-object p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 926
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
