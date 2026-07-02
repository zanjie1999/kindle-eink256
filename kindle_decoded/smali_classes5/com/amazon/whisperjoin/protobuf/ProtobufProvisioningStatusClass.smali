.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass;
.super Ljava/lang/Object;
.source "ProtobufProvisioningStatusClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;,
        Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatusOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_protobuf_ProtobufProvisioningStatus_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_protobuf_ProtobufProvisioningStatus_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "\nLWhisperJoinProtocolBuffersModel/schema/provisioning/ProvisioningStatus.proto\u0012\u0008protobuf\"\u00ca\u0002\n\u001aProtobufProvisioningStatus\u00129\n\u0005state\u0018\u0001 \u0002(\u000e2*.protobuf.ProtobufProvisioningStatus.State\u0012\u001d\n\u0015insecureModeSupported\u0018\u0002 \u0002(\u0008\"\u00d1\u0001\n\u0005State\u0012\u001d\n\u0019PROVISIONING_SESSION_IDLE\u0010\u0000\u0012\u001b\n\u0017WAITING_FOR_PROVISIONER\u0010\u0001\u0012\u001b\n\u0017AUTHORIZING_PROVISIONER\u0010\u0002\u0012\u0019\n\u0015ACTIVELY_PROVISIONING\u0010\u0003\u0012\u0019\n\u0015PROVISIONING_COMPLETE\u0010\u0004\u0012\u001b\n\u0017PROVISIONING_TERMINATED\u0010\u0005\u0012\u001c\n\u0018CONNECTED_TO_PROVISIONER\u0010\u0006BB\n\u001fcom.amazon.whisperjoin.protobufB\u001fProtobufProvisioningStatusClass"

    .line 825
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 840
    new-instance v1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$1;

    invoke-direct {v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$1;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 849
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 853
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass;->internal_static_protobuf_ProtobufProvisioningStatus_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 854
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "State"

    const-string v3, "InsecureModeSupported"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass;->internal_static_protobuf_ProtobufProvisioningStatus_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass;->internal_static_protobuf_ProtobufProvisioningStatus_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass;->internal_static_protobuf_ProtobufProvisioningStatus_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 6
    sput-object p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 820
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
