.class public final Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass;
.super Ljava/lang/Object;
.source "ProtobufJPAKERound3PayloadClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;,
        Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3PayloadOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_protobuf_ProtobufJPAKERound3Payload_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_protobuf_ProtobufJPAKERound3Payload_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "\n@WhisperCloakProtocolBuffersModel/schema/JPAKERound3Payload.proto\u0012\u0008protobuf\u001a8WhisperCloakProtocolBuffersModel/schema/BigInteger.proto\"a\n\u001aProtobufJPAKERound3Payload\u0012\u0015\n\rparticipantId\u0018\u0001 \u0002(\t\u0012,\n\u0006macTag\u0018\u0002 \u0002(\u000b2\u001c.protobuf.ProtobufBigIntegerBC\n com.amazon.whispercloak.protobufB\u001fProtobufJPAKERound3PayloadClass"

    .line 926
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 936
    new-instance v1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$1;

    invoke-direct {v1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$1;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 947
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 945
    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 950
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass;->internal_static_protobuf_ProtobufJPAKERound3Payload_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 951
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "ParticipantId"

    const-string v3, "MacTag"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass;->internal_static_protobuf_ProtobufJPAKERound3Payload_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 955
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass;->internal_static_protobuf_ProtobufJPAKERound3Payload_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass;->internal_static_protobuf_ProtobufJPAKERound3Payload_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 6
    sput-object p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 921
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
