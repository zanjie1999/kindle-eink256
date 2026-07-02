.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass;
.super Ljava/lang/Object;
.source "ProtobufWifiKeyManagementClass.java"


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_protobuf_ProtobufWifiKeyManagement_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_protobuf_ProtobufWifiKeyManagement_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "\nUWhisperJoinProtocolBuffersModel/schema/provisioning/data/wifi/WifiKeyManagement.proto\u0012\u0008protobuf\"[\n\u0019ProtobufWifiKeyManagement\">\n\u0011WifiKeyManagement\u0012\u0008\n\u0004NONE\u0010\u0000\u0012\u000b\n\u0007WPA_PSK\u0010\u0001\u0012\u0007\n\u0003WEP\u0010\u0002\u0012\t\n\u0005OTHER\u0010\u0003BA\n\u001fcom.amazon.whisperjoin.protobufB\u001eProtobufWifiKeyManagementClass"

    .line 529
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 538
    new-instance v1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$1;

    invoke-direct {v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$1;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 547
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 551
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass;->internal_static_protobuf_ProtobufWifiKeyManagement_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 552
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass;->internal_static_protobuf_ProtobufWifiKeyManagement_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-void
.end method

.method static synthetic access$802(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 6
    sput-object p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 524
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
