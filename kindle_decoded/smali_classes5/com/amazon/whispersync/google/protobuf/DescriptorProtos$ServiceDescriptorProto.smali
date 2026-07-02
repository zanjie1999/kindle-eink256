.class public final Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;
.super Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    }
.end annotation


# static fields
.field public static final METHOD_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private method_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Ljava/lang/Object;

.field private options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;-><init>(Z)V

    sput-object v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->defaultInstance:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-direct {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;-><init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;)V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->memoizedIsInitialized:B

    iput p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;-><init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->memoizedIsInitialized:B

    iput p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$8702(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8800(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$8802(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$8902(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceOptions;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 0

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceOptions;

    return-object p1
.end method

.method static synthetic access$9002(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;I)I
    .locals 0

    iput p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1

    sget-object v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->defaultInstance:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$8100()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getNameBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/amazon/whispersync/google/protobuf/ByteString;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceOptions;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceOptions;

    return-void
.end method

.method public static newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->access$8400()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->access$8300(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->access$8300(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->access$8300(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->access$8300(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->access$8300(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->access$8300(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->access$8300(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->access$8300(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->access$8300(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([BLcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->access$8300(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1

    sget-object v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->defaultInstance:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getMethod(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object p1
.end method

.method public getMethodCount()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMethodList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProto;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    return-object v0
.end method

.method public getMethodOrBuilder(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProtoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProtoOrBuilder;

    return-object p1
.end method

.method public getMethodOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getOptions()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public getOptionsOrBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceOptionsOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->getNameBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/amazon/whispersync/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ge v2, v1, :cond_2

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/google/protobuf/MessageLite;

    invoke-static {v3, v1}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/amazon/whispersync/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceOptions;

    invoke-static {v1, v2}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/amazon/whispersync/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->memoizedSerializedSize:I

    return v0
.end method

.method public hasName()Z
    .locals 2

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasOptions()Z
    .locals 2

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->bitField0_:I

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

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$8200()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->memoizedIsInitialized:B

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
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->getMethodCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->getMethod(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->memoizedIsInitialized:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->getOptions()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceOptions;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->memoizedIsInitialized:B

    return v2

    :cond_4
    iput-byte v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 2

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;-><init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->newBuilderForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->newBuilderForType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->newBuilderForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 1

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->newBuilder(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->toBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->toBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->getSerializedSize()I

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->getNameBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeBytes(ILcom/amazon/whispersync/google/protobuf/ByteString;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeMessage(ILcom/amazon/whispersync/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceOptions;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeMessage(ILcom/amazon/whispersync/google/protobuf/MessageLite;)V

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;->writeTo(Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;)V

    return-void
.end method
