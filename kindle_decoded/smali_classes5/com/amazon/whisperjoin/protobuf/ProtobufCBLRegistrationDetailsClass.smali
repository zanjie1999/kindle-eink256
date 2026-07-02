.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass;
.super Ljava/lang/Object;
.source "ProtobufCBLRegistrationDetailsClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;,
        Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetailsOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_protobuf_ProtobufCBLRegistrationDetails_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_protobuf_ProtobufCBLRegistrationDetails_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "\nbWhisperJoinProtocolBuffersModel/schema/provisioning/data/registration/CBLRegistrationDetails.proto\u0012\u0008protobuf\"\u00c6\u0003\n\u001eProtobufCBLRegistrationDetails\u0012=\n\u0005state\u0018\u0001 \u0002(\u000e2..protobuf.ProtobufCBLRegistrationDetails.State\u0012\u000f\n\u0007message\u0018\u0002 \u0001(\t\u0012\u0010\n\u0008httpCode\u0018\u0003 \u0001(\u0011\"\u00c1\u0002\n\u0005State\u0012\u0012\n\u000eNOT_REGISTERED\u0010\u0000\u0012\u001b\n\u0017COMPLETING_REGISTRATION\u0010\u0001\u0012\u0019\n\u0015REGISTRATION_COMPLETE\u0010\u0002\u0012.\n!REGISTRATION_FAILED_TOKEN_INVALID\u0010\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u0001\u0012.\n!REGISTRATION_FAILED_TOKEN_EXPIRED\u0010\u00fe\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u0001\u00125\n(REGISTRATION_FAILED_SERVER_NOT_REACHABLE\u0010\u00fd\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u0001\u0012-\n REGISTRATION_FAILED_SERVER_ERROR\u0010\u00fc\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u0001\u0012&\n\u0019REGISTRATION_FAILED_OTHER\u0010\u00fb\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u0001BF\n\u001fcom.amazon.whisperjoin.protobufB#ProtobufCBLRegistrationDetailsClass"

    .line 1039
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1057
    new-instance v1, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$1;

    invoke-direct {v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$1;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1066
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 1070
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass;->internal_static_protobuf_ProtobufCBLRegistrationDetails_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1071
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "State"

    const-string v3, "Message"

    const-string v4, "HttpCode"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass;->internal_static_protobuf_ProtobufCBLRegistrationDetails_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass;->internal_static_protobuf_ProtobufCBLRegistrationDetails_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass;->internal_static_protobuf_ProtobufCBLRegistrationDetails_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 6
    sput-object p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1034
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
