.class public final Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;
.super Lcom/google/protobuf/GeneratedMessageV3;

# interfaces
.implements Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MetricBatchMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private volatile deviceSerialNumber_:Ljava/lang/Object;

.field private volatile deviceType_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private metadata_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;",
            ">;"
        }
    .end annotation
.end field

.field private metricEntry_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessage;",
            ">;"
        }
    .end annotation
.end field

.field private volatile tag_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;

    invoke-direct {v0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;-><init>()V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->DEFAULT_INSTANCE:Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;

    new-instance v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$1;

    invoke-direct {v0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$1;-><init>()V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->memoizedIsInitialized:B

    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->deviceSerialNumber_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->deviceType_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->tag_:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->metadata_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->metricEntry_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;-><init>()V

    if-eqz p2, :cond_e

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/16 v3, 0x10

    const/16 v4, 0x8

    if-nez v1, :cond_b

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_8

    const/16 v7, 0xa

    if-eq v5, v7, :cond_7

    const/16 v7, 0x12

    if-eq v5, v7, :cond_6

    const/16 v7, 0x1a

    if-eq v5, v7, :cond_5

    const/16 v7, 0x22

    if-eq v5, v7, :cond_3

    const/16 v7, 0x2a

    if-eq v5, v7, :cond_1

    invoke-virtual {p0, p1, v0, p2, v5}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_1
    and-int/lit8 v5, v2, 0x10

    if-eq v5, v3, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->metricEntry_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x10

    :cond_2
    iget-object v5, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->metricEntry_:Ljava/util/List;

    sget-object v6, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    :goto_1
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    and-int/lit8 v5, v2, 0x8

    if-eq v5, v4, :cond_4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->metadata_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    :cond_4
    iget-object v5, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->metadata_:Ljava/util/List;

    sget-object v6, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iget v6, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->bitField0_:I

    iput-object v5, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->tag_:Ljava/lang/Object;

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iget v6, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->bitField0_:I

    iput-object v5, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->deviceType_:Ljava/lang/Object;

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iget v7, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->bitField0_:I

    or-int/2addr v6, v7

    iput v6, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->bitField0_:I

    iput-object v5, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->deviceSerialNumber_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_8
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p2

    :catch_1
    move-exception p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x8

    if-ne p2, v4, :cond_9

    iget-object p2, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->metadata_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->metadata_:Ljava/util/List;

    :cond_9
    and-int/lit8 p2, v2, 0x10

    if-ne p2, v3, :cond_a

    iget-object p2, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->metricEntry_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->metricEntry_:Ljava/util/List;

    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_b
    and-int/lit8 p1, v2, 0x8

    if-ne p1, v4, :cond_c

    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->metadata_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->metadata_:Ljava/util/List;

    :cond_c
    and-int/lit8 p1, v2, 0x10

    if-ne p1, v3, :cond_d

    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->metricEntry_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->metricEntry_:Ljava/util/List;

    :cond_d
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :cond_e
    const/4 p1, 0x0

    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->metricEntry_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->metricEntry_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;I)I
    .locals 0

    iput p1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->bitField0_:I

    return p1
.end method

.method static synthetic access$1200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$600(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->deviceSerialNumber_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->deviceSerialNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$700(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->deviceType_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$702(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->deviceType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$800(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->tag_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$802(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->tag_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$900(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->metadata_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$902(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->metadata_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;
    .locals 1

    sget-object v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->DEFAULT_INSTANCE:Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;
    .locals 1

    sget-object v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->DEFAULT_INSTANCE:Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->toBuilder()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->hasDeviceSerialNumber()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->hasDeviceSerialNumber()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->hasDeviceSerialNumber()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->hasDeviceType()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->hasDeviceType()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->hasDeviceType()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->hasTag()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->hasTag()Z

    move-result v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->hasTag()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->getMetadataList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->getMetadataList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->getMetricEntryList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->getMetricEntryList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    :goto_7
    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_8

    :cond_d
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;
    .locals 1

    sget-object v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->DEFAULT_INSTANCE:Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->getDefaultInstanceForType()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->getDefaultInstanceForType()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSerialNumber()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->deviceSerialNumber_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->deviceSerialNumber_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->deviceType_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->deviceType_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getMetadata(I)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;
    .locals 1

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->metadata_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;

    return-object p1
.end method

.method public getMetadataCount()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->metadata_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMetadataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->metadata_:Ljava/util/List;

    return-object v0
.end method

.method public getMetricEntry(I)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessage;
    .locals 1

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->metricEntry_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessage;

    return-object p1
.end method

.method public getMetricEntryCount()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->metricEntry_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMetricEntryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->metricEntry_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->deviceSerialNumber_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->deviceType_:Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->bitField0_:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    iget-object v4, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->tag_:Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->metadata_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->metadata_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->metricEntry_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_5

    const/4 v1, 0x5

    iget-object v3, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->metricEntry_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->tag_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->tag_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasDeviceSerialNumber()Z
    .locals 2

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasDeviceType()Z
    .locals 2

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->bitField0_:I

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

.method public hasTag()Z
    .locals 2

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->bitField0_:I

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

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->hasDeviceSerialNumber()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->hasDeviceType()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->hasTag()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->getMetadataCount()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->getMetadataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->getMetricEntryCount()I

    move-result v1

    if-lez v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->getMetricEntryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;

    const-class v2, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->hasDeviceSerialNumber()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->memoizedIsInitialized:B

    return v2

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->getMetadataCount()I

    move-result v3

    if-ge v0, v3, :cond_4

    invoke-virtual {p0, v0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->getMetadata(I)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    iput-byte v2, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->memoizedIsInitialized:B

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->getMetricEntryCount()I

    move-result v3

    if-ge v0, v3, :cond_6

    invoke-virtual {p0, v0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->getMetricEntry(I)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessage;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_5

    iput-byte v2, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->memoizedIsInitialized:B

    return v2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iput-byte v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;
    .locals 1

    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->newBuilder()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;
    .locals 2

    new-instance v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->newBuilderForType()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->newBuilderForType()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;
    .locals 2

    sget-object v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->DEFAULT_INSTANCE:Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;-><init>(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;-><init>(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$1;)V

    invoke-virtual {v0, p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->mergeFrom(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->toBuilder()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->deviceSerialNumber_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->deviceType_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1
    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->tag_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->metadata_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->metadata_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->metricEntry_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->metricEntry_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
