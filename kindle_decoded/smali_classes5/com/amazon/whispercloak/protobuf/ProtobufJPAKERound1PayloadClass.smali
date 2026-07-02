.class public final Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass;
.super Ljava/lang/Object;
.source "ProtobufJPAKERound1PayloadClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;,
        Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1PayloadOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_protobuf_ProtobufJPAKERound1Payload_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_protobuf_ProtobufJPAKERound1Payload_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "\n@WhisperCloakProtocolBuffersModel/schema/JPAKERound1Payload.proto\u0012\u0008protobuf\u001a8WhisperCloakProtocolBuffersModel/schema/BigInteger.proto\u001aEWhisperCloakProtocolBuffersModel/schema/CalculateKnowledgeProof.proto\"\u00ac\u0002\n\u001aProtobufJPAKERound1Payload\u0012\u0015\n\rparticipantId\u0018\u0001 \u0002(\t\u0012)\n\u0003gx1\u0018\u0002 \u0002(\u000b2\u001c.protobuf.ProtobufBigInteger\u0012)\n\u0003gx2\u0018\u0003 \u0002(\u000b2\u001c.protobuf.ProtobufBigInteger\u0012F\n\u0013knowledgeProofForX1\u0018\u0004 \u0002(\u000b2).protobuf.ProtobufCalculateKnowledgeProof\u0012F\n\u0013knowledgeProofForX2\u0018\u0005 \u0002(\u000b2).protobuf.ProtobufCalculateKnowledgeProof\u0012\u0011\n\tcurveName\u0018\u0006 \u0001(\tBC\n com.amazon.whispercloak.protobufB\u001fProtobufJPAKERound1PayloadClass"

    .line 1958
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1975
    new-instance v1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$1;

    invoke-direct {v1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$1;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1986
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1987
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 1984
    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 1990
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass;->internal_static_protobuf_ProtobufJPAKERound1Payload_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1991
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "ParticipantId"

    const-string v3, "Gx1"

    const-string v4, "Gx2"

    const-string v5, "KnowledgeProofForX1"

    const-string v6, "KnowledgeProofForX2"

    const-string v7, "CurveName"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass;->internal_static_protobuf_ProtobufJPAKERound1Payload_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 1995
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1996
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass;->internal_static_protobuf_ProtobufJPAKERound1Payload_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass;->internal_static_protobuf_ProtobufJPAKERound1Payload_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 6
    sput-object p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1953
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
