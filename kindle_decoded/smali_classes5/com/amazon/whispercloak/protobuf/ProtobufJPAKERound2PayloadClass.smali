.class public final Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass;
.super Ljava/lang/Object;
.source "ProtobufJPAKERound2PayloadClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;,
        Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2PayloadOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_protobuf_ProtobufJPAKERound2Payload_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_protobuf_ProtobufJPAKERound2Payload_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "\n@WhisperCloakProtocolBuffersModel/schema/JPAKERound2Payload.proto\u0012\u0008protobuf\u001a8WhisperCloakProtocolBuffersModel/schema/BigInteger.proto\u001aEWhisperCloakProtocolBuffersModel/schema/CalculateKnowledgeProof.proto\"\u00a5\u0001\n\u001aProtobufJPAKERound2Payload\u0012\u0015\n\rparticipantId\u0018\u0001 \u0002(\t\u0012\'\n\u0001a\u0018\u0002 \u0002(\u000b2\u001c.protobuf.ProtobufBigInteger\u0012G\n\u0014knowledgeProofForX2s\u0018\u0003 \u0002(\u000b2).protobuf.ProtobufCalculateKnowledgeProofBC\n com.amazon.whispercloak.protobufB\u001fProtobufJPAKERound2PayloadClass"

    .line 1199
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1213
    new-instance v1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$1;

    invoke-direct {v1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$1;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1224
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1225
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 1222
    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 1228
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass;->internal_static_protobuf_ProtobufJPAKERound2Payload_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1229
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "ParticipantId"

    const-string v3, "A"

    const-string v4, "KnowledgeProofForX2S"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass;->internal_static_protobuf_ProtobufJPAKERound2Payload_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 1233
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1234
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass;->internal_static_protobuf_ProtobufJPAKERound2Payload_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass;->internal_static_protobuf_ProtobufJPAKERound2Payload_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 6
    sput-object p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1194
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
