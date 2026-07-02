.class public final Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;
.super Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;

# interfaces
.implements Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MetricBatchMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;
    }
.end annotation


# static fields
.field public static final DEVICESERIALNUMBER_FIELD_NUMBER:I = 0x1

.field public static final DEVICETYPE_FIELD_NUMBER:I = 0x2

.field public static final METADATA_FIELD_NUMBER:I = 0x4

.field public static final METRICENTRY_FIELD_NUMBER:I = 0x5

.field public static final TAG_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private deviceSerialNumber_:Ljava/lang/Object;

.field private deviceType_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private metadata_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;",
            ">;"
        }
    .end annotation
.end field

.field private metricEntry_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage;",
            ">;"
        }
    .end annotation
.end field

.field private tag_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;-><init>(Z)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->defaultInstance:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;

    invoke-direct {v0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;-><init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;)V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->memoizedIsInitialized:B

    iput p1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;-><init>(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->memoizedIsInitialized:B

    iput p1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->metadata_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->metadata_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->metricEntry_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->metricEntry_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;I)I
    .locals 0

    iput p1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->bitField0_:I

    return p1
.end method

.method static synthetic access$1300()Z
    .locals 1

    sget-boolean v0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1400()Z
    .locals 1

    sget-boolean v0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->deviceSerialNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->deviceType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->tag_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;
    .locals 1

    sget-object v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->defaultInstance:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->access$000()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceSerialNumberBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->deviceSerialNumber_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->deviceSerialNumber_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/amazon/whispersync/google/protobuf/ByteString;

    return-object v0
.end method

.method private getDeviceTypeBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->deviceType_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->deviceType_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/amazon/whispersync/google/protobuf/ByteString;

    return-object v0
.end method

.method private getTagBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->tag_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->tag_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/amazon/whispersync/google/protobuf/ByteString;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->deviceSerialNumber_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->deviceType_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->tag_:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->metadata_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->metricEntry_:Ljava/util/List;

    return-void
.end method

.method public static newBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->access$300()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->newBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->newBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->access$200(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->newBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->access$200(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->newBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->access$200(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->newBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->access$200(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->newBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->access$200(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->newBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->access$200(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->newBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->access$200(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->newBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->access$200(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->newBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->access$200(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([BLcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->newBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->access$200(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;
    .locals 1

    sget-object v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->defaultInstance:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->getDefaultInstanceForType()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->getDefaultInstanceForType()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSerialNumber()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->deviceSerialNumber_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/amazon/whispersync/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/Internal;->isValidUtf8(Lcom/amazon/whispersync/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->deviceSerialNumber_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->deviceType_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/amazon/whispersync/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/Internal;->isValidUtf8(Lcom/amazon/whispersync/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->deviceType_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getMetadata(I)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->metadata_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    return-object p1
.end method

.method public getMetadataCount()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->metadata_:Ljava/util/List;

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
            "Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->metadata_:Ljava/util/List;

    return-object v0
.end method

.method public getMetadataOrBuilder(I)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValueOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->metadata_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValueOrBuilder;

    return-object p1
.end method

.method public getMetadataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValueOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->metadata_:Ljava/util/List;

    return-object v0
.end method

.method public getMetricEntry(I)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->metricEntry_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage;

    return-object p1
.end method

.method public getMetricEntryCount()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->metricEntry_:Ljava/util/List;

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
            "Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->metricEntry_:Ljava/util/List;

    return-object v0
.end method

.method public getMetricEntryOrBuilder(I)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessageOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->metricEntry_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessageOrBuilder;

    return-object p1
.end method

.method public getMetricEntryOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessageOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->metricEntry_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    iget v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->getDeviceSerialNumberBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/amazon/whispersync/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->getDeviceTypeBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/amazon/whispersync/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->bitField0_:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->getTagBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/amazon/whispersync/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->metadata_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->metadata_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whispersync/google/protobuf/MessageLite;

    invoke-static {v3, v4}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/amazon/whispersync/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->metricEntry_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_5

    const/4 v1, 0x5

    iget-object v3, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->metricEntry_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/google/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/amazon/whispersync/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->memoizedSerializedSize:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->tag_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/amazon/whispersync/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/Internal;->isValidUtf8(Lcom/amazon/whispersync/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->tag_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public hasDeviceSerialNumber()Z
    .locals 2

    iget v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->bitField0_:I

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

    iget v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->bitField0_:I

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

    iget v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->access$100()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->memoizedIsInitialized:B

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->hasDeviceSerialNumber()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->memoizedIsInitialized:B

    return v2

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->getMetadataCount()I

    move-result v3

    if-ge v0, v3, :cond_4

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->getMetadata(I)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    iput-byte v2, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->memoizedIsInitialized:B

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->getMetricEntryCount()I

    move-result v3

    if-ge v0, v3, :cond_6

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->getMetricEntry(I)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_5

    iput-byte v2, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->memoizedIsInitialized:B

    return v2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iput-byte v1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->newBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;
    .locals 2

    new-instance v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;-><init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->newBuilderForType()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->newBuilderForType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->newBuilderForType()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;
    .locals 1

    invoke-static {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->newBuilder(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->toBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->toBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    invoke-super {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->getSerializedSize()I

    iget v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->getDeviceSerialNumberBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeBytes(ILcom/amazon/whispersync/google/protobuf/ByteString;)V

    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->getDeviceTypeBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeBytes(ILcom/amazon/whispersync/google/protobuf/ByteString;)V

    :cond_1
    iget v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->getTagBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeBytes(ILcom/amazon/whispersync/google/protobuf/ByteString;)V

    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->metadata_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->metadata_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v3}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeMessage(ILcom/amazon/whispersync/google/protobuf/MessageLite;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->metricEntry_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->metricEntry_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeMessage(ILcom/amazon/whispersync/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;->writeTo(Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;)V

    return-void
.end method
