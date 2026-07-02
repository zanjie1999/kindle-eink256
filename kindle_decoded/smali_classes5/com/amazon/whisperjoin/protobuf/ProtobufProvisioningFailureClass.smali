.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass;
.super Ljava/lang/Object;
.source "ProtobufProvisioningFailureClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;,
        Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailureOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_protobuf_ProtobufProvisioningFailure_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_protobuf_ProtobufProvisioningFailure_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "\n_WhisperJoinProtocolBuffersModel/schema/provisioning/data/provisioning/ProvisioningFailure.proto\u0012\u0008protobuf\"A\n\u001bProtobufProvisioningFailure\u0012\u0011\n\terrorCode\u0018\u0001 \u0002(\u0011\u0012\u000f\n\u0007message\u0018\u0002 \u0001(\tBC\n\u001fcom.amazon.whisperjoin.protobufB ProtobufProvisioningFailureClass"

    .line 690
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 699
    new-instance v1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$1;

    invoke-direct {v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$1;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 708
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 712
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass;->internal_static_protobuf_ProtobufProvisioningFailure_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 713
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "ErrorCode"

    const-string v3, "Message"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass;->internal_static_protobuf_ProtobufProvisioningFailure_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass;->internal_static_protobuf_ProtobufProvisioningFailure_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass;->internal_static_protobuf_ProtobufProvisioningFailure_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 6
    sput-object p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 685
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
