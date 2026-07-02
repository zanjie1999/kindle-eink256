.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass;
.super Ljava/lang/Object;
.source "ProtobufWifiConnectionDetailsClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;,
        Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetailsOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_protobuf_ProtobufWifiConnectionDetails_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_protobuf_ProtobufWifiConnectionDetails_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "\nYWhisperJoinProtocolBuffersModel/schema/provisioning/data/wifi/WifiConnectionDetails.proto\u0012\u0008protobuf\u001aUWhisperJoinProtocolBuffersModel/schema/provisioning/data/wifi/WifiKeyManagement.proto\"\u0095\u0004\n\u001dProtobufWifiConnectionDetails\u0012\u000c\n\u0004ssid\u0018\u0001 \u0002(\t\u0012P\n\u0011wifiKeyManagement\u0018\u0002 \u0002(\u000e25.protobuf.ProtobufWifiKeyManagement.WifiKeyManagement\u0012<\n\u0005state\u0018\u0003 \u0002(\u000e2-.protobuf.ProtobufWifiConnectionDetails.State\"\u00d5\u0002\n\u0005State\u0012!\n\u001dINITIATING_CONNECTION_ATTEMPT\u0010\u0000\u0012\u0010\n\u000cDISCONNECTED\u0010\u0001\u0012\u000e\n\nCONNECTING\u0010\u0002\u0012\u000e\n\nASSOCIATED\u0010\u0003\u0012\r\n\tCONNECTED\u0010\u0004\u0012-\n CONNECTION_FAILED_INTERNAL_ERROR\u0010\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u0001\u0012,\n\u001fCONNECTED_BEHIND_CAPTIVE_PORTAL\u0010\u00fe\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u0001\u0012+\n\u001eCONNECTED_LIMITED_CONNECTIVITY\u0010\u00fd\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u0001\u00121\n$CONNECTION_FAILED_PSK_AUTHENTICATION\u0010\u00fc\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u0001\u0012+\n\u001eCONNECTION_FAILED_AP_NOT_FOUND\u0010\u00fb\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u0001BE\n\u001fcom.amazon.whisperjoin.protobufB\"ProtobufWifiConnectionDetailsClass"

    .line 1081
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1103
    new-instance v1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$1;

    invoke-direct {v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$1;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1114
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1112
    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 1117
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass;->internal_static_protobuf_ProtobufWifiConnectionDetails_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1118
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Ssid"

    const-string v3, "WifiKeyManagement"

    const-string v4, "State"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass;->internal_static_protobuf_ProtobufWifiConnectionDetails_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 1122
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass;->internal_static_protobuf_ProtobufWifiConnectionDetails_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass;->internal_static_protobuf_ProtobufWifiConnectionDetails_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 6
    sput-object p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1076
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
