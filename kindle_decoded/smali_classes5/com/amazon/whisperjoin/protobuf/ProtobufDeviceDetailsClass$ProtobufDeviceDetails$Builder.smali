.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ProtobufDeviceDetailsClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetailsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;",
        ">;",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetailsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private deviceCapabilitiesMapBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMapOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private deviceCapabilitiesMap_:Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

.field private deviceFirmwareRevision_:Ljava/lang/Object;

.field private deviceHardwareRevision_:Ljava/lang/Object;

.field private deviceModelNumber_:Ljava/lang/Object;

.field private deviceSerialNumber_:Ljava/lang/Object;

.field private lastConnectionWifiDetailsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetailsOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private lastConnectionWifiDetails_:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

.field private manufacturer_:Ljava/lang/Object;

.field private networkSyncToken_:Ljava/lang/Object;

.field private sdkVersion_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 958
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 1207
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->manufacturer_:Ljava/lang/Object;

    .line 1283
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceModelNumber_:Ljava/lang/Object;

    .line 1359
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceSerialNumber_:Ljava/lang/Object;

    .line 1435
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceHardwareRevision_:Ljava/lang/Object;

    .line 1511
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceFirmwareRevision_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1587
    iput-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceCapabilitiesMap_:Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    .line 1705
    iput-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->lastConnectionWifiDetails_:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    .line 1823
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->networkSyncToken_:Ljava/lang/Object;

    .line 1899
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->sdkVersion_:Ljava/lang/Object;

    .line 959
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$1;)V
    .locals 0

    .line 941
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 964
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 1207
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->manufacturer_:Ljava/lang/Object;

    .line 1283
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceModelNumber_:Ljava/lang/Object;

    .line 1359
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceSerialNumber_:Ljava/lang/Object;

    .line 1435
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceHardwareRevision_:Ljava/lang/Object;

    .line 1511
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceFirmwareRevision_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1587
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceCapabilitiesMap_:Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    .line 1705
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->lastConnectionWifiDetails_:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    .line 1823
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->networkSyncToken_:Ljava/lang/Object;

    .line 1899
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->sdkVersion_:Ljava/lang/Object;

    .line 965
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$1;)V
    .locals 0

    .line 941
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private getDeviceCapabilitiesMapFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMapOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1694
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceCapabilitiesMapBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1695
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 1697
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->getDeviceCapabilitiesMap()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    move-result-object v1

    .line 1698
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1699
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceCapabilitiesMapBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1700
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceCapabilitiesMap_:Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    .line 1702
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceCapabilitiesMapBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getLastConnectionWifiDetailsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetailsOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1812
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->lastConnectionWifiDetailsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1813
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 1815
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->getLastConnectionWifiDetails()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    move-result-object v1

    .line 1816
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1817
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->lastConnectionWifiDetailsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1818
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->lastConnectionWifiDetails_:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    .line 1820
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->lastConnectionWifiDetailsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 969
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->getDeviceCapabilitiesMapFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 971
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->getLastConnectionWifiDetailsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;
    .locals 0

    .line 1099
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 941
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 941
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;
    .locals 2

    .line 1015
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;

    move-result-object v0

    .line 1016
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1017
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 941
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 941
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;
    .locals 5

    .line 1023
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$1;)V

    .line 1024
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1029
    :goto_0
    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->manufacturer_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->access$602(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 1033
    :cond_1
    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceModelNumber_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->access$702(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 1037
    :cond_2
    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceSerialNumber_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->access$802(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 1041
    :cond_3
    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceHardwareRevision_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->access$902(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 1045
    :cond_4
    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceFirmwareRevision_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->access$1002(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 1049
    :cond_5
    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceCapabilitiesMapBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_6

    .line 1050
    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceCapabilitiesMap_:Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->access$1102(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    goto :goto_1

    .line 1052
    :cond_6
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->access$1102(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    :goto_1
    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_7

    or-int/lit8 v3, v3, 0x40

    .line 1057
    :cond_7
    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->lastConnectionWifiDetailsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_8

    .line 1058
    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->lastConnectionWifiDetails_:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->access$1202(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    goto :goto_2

    .line 1060
    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->access$1202(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    :goto_2
    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x80

    .line 1065
    :cond_9
    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->networkSyncToken_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->access$1302(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    or-int/lit16 v3, v3, 0x100

    .line 1069
    :cond_a
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->sdkVersion_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->access$1402(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    invoke-static {v0, v3}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->access$1502(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;I)I

    .line 1071
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 941
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 941
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;
    .locals 1

    .line 1076
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 941
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 941
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 941
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;
    .locals 1

    .line 1011
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 941
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 941
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1007
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceCapabilitiesMap()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;
    .locals 1

    .line 1600
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceCapabilitiesMapBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1601
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceCapabilitiesMap_:Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    move-result-object v0

    :cond_0
    return-object v0

    .line 1603
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    return-object v0
.end method

.method public getLastConnectionWifiDetails()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;
    .locals 1

    .line 1718
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->lastConnectionWifiDetailsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1719
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->lastConnectionWifiDetails_:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    move-result-object v0

    :cond_0
    return-object v0

    .line 1721
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    return-object v0
.end method

.method public hasDeviceCapabilitiesMap()Z
    .locals 2

    .line 1594
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeviceFirmwareRevision()Z
    .locals 2

    .line 1516
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeviceHardwareRevision()Z
    .locals 2

    .line 1440
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeviceModelNumber()Z
    .locals 2

    .line 1288
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeviceSerialNumber()Z
    .locals 2

    .line 1364
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLastConnectionWifiDetails()Z
    .locals 2

    .line 1712
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasManufacturer()Z
    .locals 2

    .line 1212
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 952
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    .line 953
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1159
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->hasManufacturer()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1162
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->hasDeviceModelNumber()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 1165
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->hasDeviceSerialNumber()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 1168
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->hasDeviceHardwareRevision()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 1171
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->hasDeviceFirmwareRevision()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 1174
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->hasDeviceCapabilitiesMap()Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 1177
    :cond_5
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->getDeviceCapabilitiesMap()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 1180
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->hasLastConnectionWifiDetails()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1181
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->getLastConnectionWifiDetails()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method public mergeDeviceCapabilitiesMap(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;
    .locals 3

    .line 1640
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceCapabilitiesMapBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/16 v1, 0x20

    if-nez v0, :cond_1

    .line 1641
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceCapabilitiesMap_:Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    if-eqz v0, :cond_0

    .line 1643
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1644
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceCapabilitiesMap_:Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    .line 1645
    invoke-static {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->newBuilder(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceCapabilitiesMap_:Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    goto :goto_0

    .line 1647
    :cond_0
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceCapabilitiesMap_:Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    .line 1649
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_1

    .line 1651
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 1653
    :goto_1
    iget p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;
    .locals 1

    .line 1111
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1112
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasManufacturer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1113
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    .line 1114
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->access$600(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->manufacturer_:Ljava/lang/Object;

    .line 1115
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1117
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasDeviceModelNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1118
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    .line 1119
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->access$700(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceModelNumber_:Ljava/lang/Object;

    .line 1120
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1122
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasDeviceSerialNumber()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1123
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    .line 1124
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->access$800(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceSerialNumber_:Ljava/lang/Object;

    .line 1125
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1127
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasDeviceHardwareRevision()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1128
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    .line 1129
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->access$900(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceHardwareRevision_:Ljava/lang/Object;

    .line 1130
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1132
    :cond_4
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasDeviceFirmwareRevision()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1133
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    .line 1134
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->access$1000(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceFirmwareRevision_:Ljava/lang/Object;

    .line 1135
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1137
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasDeviceCapabilitiesMap()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1138
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getDeviceCapabilitiesMap()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->mergeDeviceCapabilitiesMap(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    .line 1140
    :cond_6
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasLastConnectionWifiDetails()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1141
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getLastConnectionWifiDetails()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->mergeLastConnectionWifiDetails(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    .line 1143
    :cond_7
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasNetworkSyncToken()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1144
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    .line 1145
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->access$1300(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->networkSyncToken_:Ljava/lang/Object;

    .line 1146
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1148
    :cond_8
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasSdkVersion()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1149
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    .line 1150
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->access$1400(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->sdkVersion_:Ljava/lang/Object;

    .line 1151
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1153
    :cond_9
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->access$1600(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    .line 1154
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1194
    :try_start_0
    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1200
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1196
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1197
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 1200
    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    .line 1202
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;
    .locals 1

    .line 1102
    instance-of v0, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;

    if-eqz v0, :cond_0

    .line 1103
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    return-object p0

    .line 1105
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 941
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 941
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 941
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 941
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 941
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    return-object p0
.end method

.method public mergeLastConnectionWifiDetails(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;
    .locals 3

    .line 1758
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->lastConnectionWifiDetailsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/16 v1, 0x40

    if-nez v0, :cond_1

    .line 1759
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->lastConnectionWifiDetails_:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    if-eqz v0, :cond_0

    .line 1761
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1762
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->lastConnectionWifiDetails_:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    .line 1763
    invoke-static {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->newBuilder(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->lastConnectionWifiDetails_:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    goto :goto_0

    .line 1765
    :cond_0
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->lastConnectionWifiDetails_:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    .line 1767
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_1

    .line 1769
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 1771
    :goto_1
    iget p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;
    .locals 0

    .line 1981
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 941
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 941
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setDeviceCapabilitiesMap(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;
    .locals 1

    .line 1610
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceCapabilitiesMapBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 1614
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceCapabilitiesMap_:Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    .line 1615
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1612
    throw p1

    .line 1617
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 1619
    :goto_0
    iget p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    return-object p0
.end method

.method public setDeviceFirmwareRevision(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1559
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    .line 1560
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceFirmwareRevision_:Ljava/lang/Object;

    .line 1561
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1557
    throw p1
.end method

.method public setDeviceHardwareRevision(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1483
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    .line 1484
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceHardwareRevision_:Ljava/lang/Object;

    .line 1485
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1481
    throw p1
.end method

.method public setDeviceModelNumber(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1331
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    .line 1332
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceModelNumber_:Ljava/lang/Object;

    .line 1333
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1329
    throw p1
.end method

.method public setDeviceSerialNumber(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1407
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    .line 1408
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->deviceSerialNumber_:Ljava/lang/Object;

    .line 1409
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1405
    throw p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;
    .locals 0

    .line 1081
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 941
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 941
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setLastConnectionWifiDetails(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;
    .locals 1

    .line 1728
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->lastConnectionWifiDetailsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 1732
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->lastConnectionWifiDetails_:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    .line 1733
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1730
    throw p1

    .line 1735
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 1737
    :goto_0
    iget p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    return-object p0
.end method

.method public setManufacturer(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1255
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    .line 1256
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->manufacturer_:Ljava/lang/Object;

    .line 1257
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1253
    throw p1
.end method

.method public setNetworkSyncToken(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1871
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    .line 1872
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->networkSyncToken_:Ljava/lang/Object;

    .line 1873
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1869
    throw p1
.end method

.method public setSdkVersion(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1947
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->bitField0_:I

    .line 1948
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->sdkVersion_:Ljava/lang/Object;

    .line 1949
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1945
    throw p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;
    .locals 0

    .line 1976
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 941
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 941
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    move-result-object p1

    return-object p1
.end method
