.class public final Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;
.super Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;

# interfaces
.implements Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;
    }
.end annotation


# static fields
.field public static final KEY_FIELD_NUMBER:I = 0x1

.field public static final VALUE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private key_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;-><init>(Z)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->defaultInstance:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    invoke-direct {v0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;-><init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;)V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->memoizedIsInitialized:B

    iput p1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;-><init>(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->memoizedIsInitialized:B

    iput p1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$4500()Z
    .locals 1

    sget-boolean v0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4702(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->key_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4802(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4902(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;I)I
    .locals 0

    iput p1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;
    .locals 1

    sget-object v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->defaultInstance:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->access$4000()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getKeyBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->key_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->key_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/amazon/whispersync/google/protobuf/ByteString;

    return-object v0
.end method

.method private getValueBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->value_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->value_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/amazon/whispersync/google/protobuf/ByteString;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->key_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->value_:Ljava/lang/Object;

    return-void
.end method

.method public static newBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->access$4300()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->newBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->mergeFrom(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->newBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->access$4200(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->newBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->access$4200(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->newBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->access$4200(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->newBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->access$4200(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->newBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->access$4200(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->newBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->access$4200(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->newBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->access$4200(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->newBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->access$4200(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->newBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->access$4200(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([BLcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->newBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->access$4200(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;
    .locals 1

    sget-object v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->defaultInstance:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->getDefaultInstanceForType()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->getDefaultInstanceForType()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->key_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->key_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->getKeyBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/amazon/whispersync/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->getValueBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/amazon/whispersync/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->memoizedSerializedSize:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->value_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->value_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public hasKey()Z
    .locals 2

    iget v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasValue()Z
    .locals 2

    iget v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->access$4100()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->memoizedIsInitialized:B

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
    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->hasKey()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->memoizedIsInitialized:B

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->hasValue()Z

    move-result v0

    if-nez v0, :cond_3

    iput-byte v2, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->memoizedIsInitialized:B

    return v2

    :cond_3
    iput-byte v1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->newBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;
    .locals 2

    new-instance v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;-><init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->newBuilderForType()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->newBuilderForType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->newBuilderForType()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;
    .locals 1

    invoke-static {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->newBuilder(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->toBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->toBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->getSerializedSize()I

    iget v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->getKeyBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeBytes(ILcom/amazon/whispersync/google/protobuf/ByteString;)V

    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->getValueBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeBytes(ILcom/amazon/whispersync/google/protobuf/ByteString;)V

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;->writeTo(Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;)V

    return-void
.end method
