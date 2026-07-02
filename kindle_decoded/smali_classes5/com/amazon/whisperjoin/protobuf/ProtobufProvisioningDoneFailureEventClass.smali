.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass;
.super Ljava/lang/Object;
.source "ProtobufProvisioningDoneFailureEventClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;,
        Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEventOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_protobuf_ProtobufProvisioningDoneFailureEvent_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_protobuf_ProtobufProvisioningDoneFailureEvent_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "\nTWhisperJoinProtocolBuffersModel/schema/ble/events/ProvisioningDoneFailureEvent.proto\u0012\u0008protobuf\u001a_WhisperJoinProtocolBuffersModel/schema/provisioning/data/provisioning/ProvisioningFailure.proto\"n\n$ProtobufProvisioningDoneFailureEvent\u0012\u000c\n\u0004uuid\u0018\u0001 \u0002(\u000c\u00128\n\teventData\u0018\u0002 \u0002(\u000b2%.protobuf.ProtobufProvisioningFailureBL\n\u001fcom.amazon.whisperjoin.protobufB)ProtobufProvisioningDoneFailureEventClass"

    .line 825
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 837
    new-instance v1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$1;

    invoke-direct {v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$1;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 848
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 846
    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 851
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass;->internal_static_protobuf_ProtobufProvisioningDoneFailureEvent_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 852
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Uuid"

    const-string v3, "EventData"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass;->internal_static_protobuf_ProtobufProvisioningDoneFailureEvent_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 856
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass;->internal_static_protobuf_ProtobufProvisioningDoneFailureEvent_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass;->internal_static_protobuf_ProtobufProvisioningDoneFailureEvent_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 6
    sput-object p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 820
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
