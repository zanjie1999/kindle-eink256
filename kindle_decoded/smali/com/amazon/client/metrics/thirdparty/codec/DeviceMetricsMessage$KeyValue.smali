.class public final Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;
.super Lcom/google/protobuf/GeneratedMessageV3;

# interfaces
.implements Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private volatile key_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;

    invoke-direct {v0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;-><init>()V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->DEFAULT_INSTANCE:Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;

    new-instance v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$1;

    invoke-direct {v0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$1;-><init>()V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->memoizedIsInitialized:B

    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->key_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->value_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;-><init>()V

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    const/16 v4, 0x12

    if-eq v2, v4, :cond_1

    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iget v3, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->bitField0_:I

    iput-object v2, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->value_:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iget v4, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->bitField0_:I

    iput-object v2, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->key_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

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

    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :cond_5
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

    invoke-direct {p0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte p1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$4700()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->key_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4902(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->key_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5000(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->value_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5002(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5102(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;I)I
    .locals 0

    iput p1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->bitField0_:I

    return p1
.end method

.method static synthetic access$5200(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;
    .locals 1

    sget-object v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->DEFAULT_INSTANCE:Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage;->access$4300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;
    .locals 1

    sget-object v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->DEFAULT_INSTANCE:Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->toBuilder()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

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
    instance-of v1, p1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->hasKey()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->hasKey()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->hasKey()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->getKey()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->hasValue()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->hasValue()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->hasValue()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->getValue()Ljava/lang/String;

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

    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;
    .locals 1

    sget-object v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->DEFAULT_INSTANCE:Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->getDefaultInstanceForType()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->getDefaultInstanceForType()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->key_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->key_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->key_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->value_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->value_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->value_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public hasKey()Z
    .locals 2

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->bitField0_:I

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

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->bitField0_:I

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

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
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

    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage;->access$4400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;

    const-class v2, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    iget-byte v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->hasKey()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->memoizedIsInitialized:B

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->hasValue()Z

    move-result v0

    if-nez v0, :cond_3

    iput-byte v2, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->memoizedIsInitialized:B

    return v2

    :cond_3
    iput-byte v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;
    .locals 1

    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->newBuilder()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;
    .locals 2

    new-instance v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->newBuilderForType()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->newBuilderForType()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;
    .locals 2

    sget-object v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->DEFAULT_INSTANCE:Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;-><init>(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;-><init>(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$1;)V

    invoke-virtual {v0, p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->mergeFrom(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->toBuilder()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->key_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->value_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
