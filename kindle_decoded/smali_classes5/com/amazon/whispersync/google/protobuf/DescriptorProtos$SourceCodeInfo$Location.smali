.class public final Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
.super Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$LocationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Location"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    }
.end annotation


# static fields
.field public static final PATH_FIELD_NUMBER:I = 0x1

.field public static final SPAN_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private pathMemoizedSerializedSize:I

.field private path_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private spanMemoizedSerializedSize:I

.field private span_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;-><init>(Z)V

    sput-object v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->defaultInstance:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-direct {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;-><init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->pathMemoizedSerializedSize:I

    iput p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->spanMemoizedSerializedSize:I

    iput-byte p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->memoizedIsInitialized:B

    iput p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;-><init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->pathMemoizedSerializedSize:I

    iput p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->spanMemoizedSerializedSize:I

    iput-byte p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->memoizedIsInitialized:B

    iput p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$19900(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$19902(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$20000(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$20002(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    sget-object v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->defaultInstance:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$19300()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    return-void
.end method

.method public static newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->access$19600()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->access$19500(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->access$19500(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->access$19500(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->access$19500(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->access$19500(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->access$19500(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->access$19500(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->access$19500(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->access$19500(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([BLcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->access$19500(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    sget-object v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->defaultInstance:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public getPath(I)I
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getPathCount()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPathList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int v1, v0, v2

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getPathList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    :cond_2
    iput v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->pathMemoizedSerializedSize:I

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getSpanList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    iput v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->spanMemoizedSerializedSize:I

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->memoizedSerializedSize:I

    return v1
.end method

.method public getSpan(I)I
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getSpanCount()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSpanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$19400()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    iget-byte v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->memoizedIsInitialized:B

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iput-byte v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 2

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;-><init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->newBuilderForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->newBuilderForType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->newBuilderForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->newBuilder(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->toBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->toBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

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

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getSerializedSize()I

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getPathList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->pathMemoizedSerializedSize:I

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getSpanList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/16 v1, 0x12

    invoke-virtual {p1, v1}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->spanMemoizedSerializedSize:I

    invoke-virtual {p1, v1}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;->writeTo(Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;)V

    return-void
.end method
