.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass;
.super Ljava/lang/Object;
.source "ProtobufWifiScanResultClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultCollection;,
        Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultCollectionOrBuilder;,
        Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;,
        Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_protobuf_ProtobufWifiScanResultCollection_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_protobuf_ProtobufWifiScanResultCollection_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_protobuf_ProtobufWifiScanResult_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_protobuf_ProtobufWifiScanResult_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "\nRWhisperJoinProtocolBuffersModel/schema/provisioning/data/wifi/WifiScanResult.proto\u0012\u0008protobuf\u001aUWhisperJoinProtocolBuffersModel/schema/provisioning/data/wifi/WifiKeyManagement.proto\"\u00a7\u0001\n\u0016ProtobufWifiScanResult\u0012\u000c\n\u0004ssid\u0018\u0001 \u0002(\t\u0012P\n\u0011wifiKeyManagement\u0018\u0002 \u0002(\u000e25.protobuf.ProtobufWifiKeyManagement.WifiKeyManagement\u0012\u0015\n\rfrequencyBand\u0018\u0003 \u0002(\u0011\u0012\u0016\n\u000esignalStrength\u0018\u0004 \u0002(\u0011\"n\n ProtobufWifiScanResultCollection\u0012J\n protobufWifiScanResultCollection\u0018\u0001 \u0003(\u000b2 .protobuf.ProtobufWifiScanResultB>\n\u001fcom.amazon.whisperjoin.protobufB\u001bProtobufWifiScanResultClass"

    .line 1804
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1820
    new-instance v1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$1;

    invoke-direct {v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$1;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1831
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 1829
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 1834
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass;->internal_static_protobuf_ProtobufWifiScanResult_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1835
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v3, "Ssid"

    const-string v4, "WifiKeyManagement"

    const-string v5, "FrequencyBand"

    const-string v6, "SignalStrength"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass;->internal_static_protobuf_ProtobufWifiScanResult_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 1840
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass;->internal_static_protobuf_ProtobufWifiScanResultCollection_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1841
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "ProtobufWifiScanResultCollection"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass;->internal_static_protobuf_ProtobufWifiScanResultCollection_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 1845
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass;->internal_static_protobuf_ProtobufWifiScanResult_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass;->internal_static_protobuf_ProtobufWifiScanResult_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass;->internal_static_protobuf_ProtobufWifiScanResultCollection_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass;->internal_static_protobuf_ProtobufWifiScanResultCollection_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 6
    sput-object p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1799
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
