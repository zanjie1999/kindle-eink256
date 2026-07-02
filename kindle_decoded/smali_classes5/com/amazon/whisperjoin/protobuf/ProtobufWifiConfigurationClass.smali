.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass;
.super Ljava/lang/Object;
.source "ProtobufWifiConfigurationClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;,
        Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfigurationOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_protobuf_ProtobufWifiConfiguration_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_protobuf_ProtobufWifiConfiguration_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "\nUWhisperJoinProtocolBuffersModel/schema/provisioning/data/wifi/WifiConfiguration.proto\u0012\u0008protobuf\u001aUWhisperJoinProtocolBuffersModel/schema/provisioning/data/wifi/WifiKeyManagement.proto\"\u00ca\u0001\n\u0019ProtobufWifiConfiguration\u0012\u000c\n\u0004ssid\u0018\u0001 \u0002(\t\u0012P\n\u0011wifiKeyManagement\u0018\u0002 \u0002(\u000e25.protobuf.ProtobufWifiKeyManagement.WifiKeyManagement\u0012\u0017\n\u000fnetworkPriority\u0018\u0003 \u0002(\u0011\u0012\u0017\n\u000fisHiddenNetwork\u0018\u0004 \u0002(\u0008\u0012\u000e\n\u0006wepKey\u0018\u0005 \u0001(\t\u0012\u000b\n\u0003psk\u0018\u0006 \u0001(\tBA\n\u001fcom.amazon.whisperjoin.protobufB\u001eProtobufWifiConfigurationClass"

    .line 1458
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1472
    new-instance v1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$1;

    invoke-direct {v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$1;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1483
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1481
    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 1486
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass;->internal_static_protobuf_ProtobufWifiConfiguration_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1487
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Ssid"

    const-string v3, "WifiKeyManagement"

    const-string v4, "NetworkPriority"

    const-string v5, "IsHiddenNetwork"

    const-string v6, "WepKey"

    const-string v7, "Psk"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass;->internal_static_protobuf_ProtobufWifiConfiguration_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 1491
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass;->internal_static_protobuf_ProtobufWifiConfiguration_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass;->internal_static_protobuf_ProtobufWifiConfiguration_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 6
    sput-object p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1453
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
