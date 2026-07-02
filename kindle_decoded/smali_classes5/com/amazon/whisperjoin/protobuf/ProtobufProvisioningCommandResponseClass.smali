.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass;
.super Ljava/lang/Object;
.source "ProtobufProvisioningCommandResponseClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;,
        Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponseOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_protobuf_ProtobufProvisioningCommandResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_protobuf_ProtobufProvisioningCommandResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "\nUWhisperJoinProtocolBuffersModel/schema/ble/commands/ProvisioningCommandResponse.proto\u0012\u0008protobuf\"Q\n#ProtobufProvisioningCommandResponse\u0012\u000c\n\u0004uuid\u0018\u0001 \u0002(\u000c\u0012\u000e\n\u0006status\u0018\u0002 \u0002(\u0011\u0012\u000c\n\u0004data\u0018\u0003 \u0001(\u000cBK\n\u001fcom.amazon.whisperjoin.protobufB(ProtobufProvisioningCommandResponseClass"

    .line 800
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 809
    new-instance v1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$1;

    invoke-direct {v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$1;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 818
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 822
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass;->internal_static_protobuf_ProtobufProvisioningCommandResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 823
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Uuid"

    const-string v3, "Status"

    const-string v4, "Data"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass;->internal_static_protobuf_ProtobufProvisioningCommandResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass;->internal_static_protobuf_ProtobufProvisioningCommandResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass;->internal_static_protobuf_ProtobufProvisioningCommandResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 6
    sput-object p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 795
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
