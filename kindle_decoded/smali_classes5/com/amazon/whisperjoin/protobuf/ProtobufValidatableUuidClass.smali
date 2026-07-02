.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass;
.super Ljava/lang/Object;
.source "ProtobufValidatableUuidClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;,
        Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollectionOrBuilder;,
        Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufValidatableUuid;,
        Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufValidatableUuidOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_protobuf_ProtobufUuidCollection_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_protobuf_ProtobufUuidCollection_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_protobuf_ProtobufValidatableUuid_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_protobuf_ProtobufValidatableUuid_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "\nNWhisperJoinProtocolBuffersModel/schema/provisioning/data/ValidatableUuid.proto\u0012\u0008protobuf\"(\n\u0017ProtobufValidatableUuid\u0012\r\n\u0005value\u0018\u0001 \u0002(\u000c\"[\n\u0016ProtobufUuidCollection\u0012A\n\u0016protobufUuidCollection\u0018\u0001 \u0003(\u000b2!.protobuf.ProtobufValidatableUuidB?\n\u001fcom.amazon.whisperjoin.protobufB\u001cProtobufValidatableUuidClass"

    .line 1325
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1335
    new-instance v1, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$1;

    invoke-direct {v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$1;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1344
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 1348
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass;->internal_static_protobuf_ProtobufValidatableUuid_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1349
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Value"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass;->internal_static_protobuf_ProtobufValidatableUuid_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 1354
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass;->internal_static_protobuf_ProtobufUuidCollection_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1355
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "ProtobufUuidCollection"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass;->internal_static_protobuf_ProtobufUuidCollection_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass;->internal_static_protobuf_ProtobufValidatableUuid_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass;->internal_static_protobuf_ProtobufValidatableUuid_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass;->internal_static_protobuf_ProtobufUuidCollection_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass;->internal_static_protobuf_ProtobufUuidCollection_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 6
    sput-object p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1320
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
