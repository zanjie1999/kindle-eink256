.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass;
.super Ljava/lang/Object;
.source "ProtobufProvisionableEventTypeClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;,
        Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollectionOrBuilder;,
        Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventType;,
        Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_protobuf_ProtobufProvisionableEventTypeCollection_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_protobuf_ProtobufProvisionableEventTypeCollection_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_protobuf_ProtobufProvisionableEventType_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_protobuf_ProtobufProvisionableEventType_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "\nNWhisperJoinProtocolBuffersModel/schema/ble/events/ProvisionableEventType.proto\u0012\u0008protobuf\"F\n\u001eProtobufProvisionableEventType\u0012\u0011\n\teventUuid\u0018\u0001 \u0002(\u000c\u0012\u0011\n\teventType\u0018\u0002 \u0002(\u0011\"\u0086\u0001\n(ProtobufProvisionableEventTypeCollection\u0012Z\n(protobufProvisionableEventTypeCollection\u0018\u0001 \u0003(\u000b2(.protobuf.ProtobufProvisionableEventTypeBF\n\u001fcom.amazon.whisperjoin.protobufB#ProtobufProvisionableEventTypeClass"

    .line 1451
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1463
    new-instance v1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$1;

    invoke-direct {v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$1;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1472
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 1476
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass;->internal_static_protobuf_ProtobufProvisionableEventType_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1477
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "EventUuid"

    const-string v3, "EventType"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass;->internal_static_protobuf_ProtobufProvisionableEventType_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 1482
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass;->internal_static_protobuf_ProtobufProvisionableEventTypeCollection_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1483
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "ProtobufProvisionableEventTypeCollection"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass;->internal_static_protobuf_ProtobufProvisionableEventTypeCollection_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass;->internal_static_protobuf_ProtobufProvisionableEventType_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass;->internal_static_protobuf_ProtobufProvisionableEventType_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass;->internal_static_protobuf_ProtobufProvisionableEventTypeCollection_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass;->internal_static_protobuf_ProtobufProvisionableEventTypeCollection_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 6
    sput-object p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1446
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
