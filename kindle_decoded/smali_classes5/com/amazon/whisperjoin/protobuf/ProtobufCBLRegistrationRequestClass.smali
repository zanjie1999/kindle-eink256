.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass;
.super Ljava/lang/Object;
.source "ProtobufCBLRegistrationRequestClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;,
        Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequestOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_protobuf_ProtobufCBLRegistrationRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_protobuf_ProtobufCBLRegistrationRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "\nbWhisperJoinProtocolBuffersModel/schema/provisioning/data/registration/CBLRegistrationRequest.proto\u0012\u0008protobuf\"F\n\u001eProtobufCBLRegistrationRequest\u0012\u0010\n\u0008linkCode\u0018\u0001 \u0002(\t\u0012\u0012\n\nexpiration\u0018\u0002 \u0002(\u0012BF\n\u001fcom.amazon.whisperjoin.protobufB#ProtobufCBLRegistrationRequestClass"

    .line 770
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 779
    new-instance v1, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$1;

    invoke-direct {v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$1;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 788
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 792
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass;->internal_static_protobuf_ProtobufCBLRegistrationRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 793
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "LinkCode"

    const-string v3, "Expiration"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass;->internal_static_protobuf_ProtobufCBLRegistrationRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass;->internal_static_protobuf_ProtobufCBLRegistrationRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass;->internal_static_protobuf_ProtobufCBLRegistrationRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 6
    sput-object p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 765
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
