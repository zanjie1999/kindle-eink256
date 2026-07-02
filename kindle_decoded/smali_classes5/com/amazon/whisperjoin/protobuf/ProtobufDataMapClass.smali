.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass;
.super Ljava/lang/Object;
.source "ProtobufDataMapClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;,
        Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMapOrBuilder;,
        Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;,
        Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntryOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_protobuf_ProtobufDataMap_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_protobuf_ProtobufDataMap_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_protobuf_ProtobufMapEntry_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_protobuf_ProtobufMapEntry_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "\nTWhisperJoinProtocolBuffersModel/schema/provisioning/data/configuration/DataMap.proto\u0012\u0008protobuf\"p\n\u0010ProtobufMapEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0002(\t\u0012\u0012\n\nbytesValue\u0018\u0002 \u0001(\u000c\u0012\u0013\n\u000bstringValue\u0018\u0003 \u0001(\t\u0012\u0013\n\u000bsint32Value\u0018\u0004 \u0001(\u0011\u0012\u0011\n\tboolValue\u0018\u0005 \u0001(\u0008\">\n\u000fProtobufDataMap\u0012+\n\u0007dataMap\u0018\u0001 \u0003(\u000b2\u001a.protobuf.ProtobufMapEntryB7\n\u001fcom.amazon.whisperjoin.protobufB\u0014ProtobufDataMapClass"

    .line 1806
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1817
    new-instance v1, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$1;

    invoke-direct {v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$1;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1826
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 1830
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass;->internal_static_protobuf_ProtobufMapEntry_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1831
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Key"

    const-string v3, "BytesValue"

    const-string v4, "StringValue"

    const-string v5, "Sint32Value"

    const-string v6, "BoolValue"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass;->internal_static_protobuf_ProtobufMapEntry_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 1836
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass;->internal_static_protobuf_ProtobufDataMap_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1837
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "DataMap"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass;->internal_static_protobuf_ProtobufDataMap_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass;->internal_static_protobuf_ProtobufMapEntry_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass;->internal_static_protobuf_ProtobufMapEntry_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1400()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass;->internal_static_protobuf_ProtobufDataMap_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass;->internal_static_protobuf_ProtobufDataMap_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 6
    sput-object p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1801
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
