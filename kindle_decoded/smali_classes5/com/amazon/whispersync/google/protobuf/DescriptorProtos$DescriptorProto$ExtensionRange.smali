.class public final Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
.super Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtensionRange"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    }
.end annotation


# static fields
.field public static final END_FIELD_NUMBER:I = 0x2

.field public static final START_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private end_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private start_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;-><init>(Z)V

    sput-object v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->defaultInstance:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-direct {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;-><init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;)V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->memoizedIsInitialized:B

    iput p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;-><init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->memoizedIsInitialized:B

    iput p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$3102(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;I)I
    .locals 0

    iput p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->start_:I

    return p1
.end method

.method static synthetic access$3202(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;I)I
    .locals 0

    iput p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->end_:I

    return p1
.end method

.method static synthetic access$3302(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;I)I
    .locals 0

    iput p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1

    sget-object v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->defaultInstance:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$2500()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->start_:I

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->end_:I

    return-void
.end method

.method public static newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->access$2800()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->access$2700(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->access$2700(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->access$2700(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->access$2700(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->access$2700(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->access$2700(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->access$2700(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->access$2700(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->access$2700(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([BLcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->access$2700(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1

    sget-object v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->defaultInstance:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public getEnd()I
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->end_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->start_:I

    invoke-static {v2, v1}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->end_:I

    invoke-static {v2, v1}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->memoizedSerializedSize:I

    return v0
.end method

.method public getStart()I
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->start_:I

    return v0
.end method

.method public hasEnd()Z
    .locals 2

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->bitField0_:I

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

.method public hasStart()Z
    .locals 2

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$2600()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    iget-byte v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    .locals 2

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;-><init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilderForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilderForType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilderForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    .locals 1

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilder(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->toBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->toBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

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

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->getSerializedSize()I

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->start_:I

    invoke-virtual {p1, v1, v0}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->end_:I

    invoke-virtual {p1, v1, v0}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;->writeTo(Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;)V

    return-void
.end method
