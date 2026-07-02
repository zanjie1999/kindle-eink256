.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass;
.super Ljava/lang/Object;
.source "ProtobufDeviceDetailsClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;,
        Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetailsOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_protobuf_ProtobufDeviceDetails_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_protobuf_ProtobufDeviceDetails_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "\nYWhisperJoinProtocolBuffersModel/schema/provisioning/data/provisioning/DeviceDetails.proto\u0012\u0008protobuf\u001aTWhisperJoinProtocolBuffersModel/schema/provisioning/data/configuration/DataMap.proto\u001aYWhisperJoinProtocolBuffersModel/schema/provisioning/data/wifi/WifiConnectionDetails.proto\"\u00d8\u0002\n\u0015ProtobufDeviceDetails\u0012\u0014\n\u000cmanufacturer\u0018\u0001 \u0002(\t\u0012\u0019\n\u0011deviceModelNumber\u0018\u0002 \u0002(\t\u0012\u001a\n\u0012deviceSerialNumber\u0018\u0003 \u0002(\t\u0012\u001e\n\u0016deviceHardwareRevision\u0018\u0004 \u0002(\t\u0012\u001e\n\u0016deviceFirmwareRevision\u0018\u0005 \u0002(\t\u00128\n\u0015deviceCapabilitiesMap\u0018\u0006 \u0002(\u000b2\u0019.protobuf.ProtobufDataMap\u0012J\n\u0019lastConnectionWifiDetails\u0018\u0007 \u0001(\u000b2\'.protobuf.ProtobufWifiConnectionDetails\u0012\u0018\n\u0010networkSyncToken\u0018\u0008 \u0001(\t\u0012\u0012\n\nsdkVersion\u0018\t \u0001(\tB=\n\u001fcom.amazon.whisperjoin.protobufB\u001aProtobufDeviceDetailsClass"

    .line 2036
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2056
    new-instance v1, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$1;

    invoke-direct {v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$1;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2067
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2068
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 2065
    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 2071
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass;->internal_static_protobuf_ProtobufDeviceDetails_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2072
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Manufacturer"

    const-string v3, "DeviceModelNumber"

    const-string v4, "DeviceSerialNumber"

    const-string v5, "DeviceHardwareRevision"

    const-string v6, "DeviceFirmwareRevision"

    const-string v7, "DeviceCapabilitiesMap"

    const-string v8, "LastConnectionWifiDetails"

    const-string v9, "NetworkSyncToken"

    const-string v10, "SdkVersion"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass;->internal_static_protobuf_ProtobufDeviceDetails_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2076
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2077
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass;->internal_static_protobuf_ProtobufDeviceDetails_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass;->internal_static_protobuf_ProtobufDeviceDetails_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 6
    sput-object p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 2031
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
