.class public final Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass;
.super Ljava/lang/Object;
.source "ProtobufBigIntegerClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;,
        Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigIntegerOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_protobuf_ProtobufBigInteger_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_protobuf_ProtobufBigInteger_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "\n8WhisperCloakProtocolBuffersModel/schema/BigInteger.proto\u0012\u0008protobuf\"#\n\u0012ProtobufBigInteger\u0012\r\n\u0005value\u0018\u0001 \u0002(\u000cB;\n com.amazon.whispercloak.protobufB\u0017ProtobufBigIntegerClass"

    .line 528
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 535
    new-instance v1, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$1;

    invoke-direct {v1}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$1;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 544
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 548
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass;->internal_static_protobuf_ProtobufBigInteger_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 549
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Value"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass;->internal_static_protobuf_ProtobufBigInteger_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass;->internal_static_protobuf_ProtobufBigInteger_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass;->internal_static_protobuf_ProtobufBigInteger_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 6
    sput-object p0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 523
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
