.class public final Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;
.super Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableMessage;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableMessage<",
        "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;",
        ">;",
        "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final MESSAGE_SET_WIRE_FORMAT_FIELD_NUMBER:I = 0x1

.field public static final NO_STANDARD_DESCRIPTOR_ACCESSOR_FIELD_NUMBER:I = 0x2

.field public static final UNINTERPRETED_OPTION_FIELD_NUMBER:I = 0x3e7

.field private static final defaultInstance:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private messageSetWireFormat_:Z

.field private noStandardDescriptorAccessor_:Z

.field private uninterpretedOption_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;-><init>(Z)V

    sput-object v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->defaultInstance:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    invoke-direct {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableMessage;-><init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;)V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->memoizedIsInitialized:B

    iput p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;-><init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableMessage;-><init>()V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->memoizedIsInitialized:B

    iput p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$12402(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->messageSetWireFormat_:Z

    return p1
.end method

.method static synthetic access$12502(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor_:Z

    return p1
.end method

.method static synthetic access$12600(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$12602(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$12702(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;I)I
    .locals 0

    iput p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;
    .locals 1

    sget-object v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->defaultInstance:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$11800()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->messageSetWireFormat_:Z

    iput-boolean v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor_:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    return-void
.end method

.method public static newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->access$12100()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->access$12000(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->access$12000(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->access$12000(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->access$12000(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->access$12000(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->access$12000(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->access$12000(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->access$12000(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->access$12000(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([BLcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->access$12000(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;
    .locals 1

    sget-object v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->defaultInstance:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public getMessageSetWireFormat()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->messageSetWireFormat_:Z

    return v0
.end method

.method public getNoStandardDescriptorAccessor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->messageSetWireFormat_:Z

    invoke-static {v1, v0}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor_:Z

    invoke-static {v3, v1}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    const/16 v1, 0x3e7

    iget-object v3, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/google/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/amazon/whispersync/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableMessage;->extensionsSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->memoizedSerializedSize:I

    return v0
.end method

.method public getUninterpretedOption(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;

    return-object p1
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUninterpretedOptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public getUninterpretedOptionOrBuilder(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;

    return-object p1
.end method

.method public getUninterpretedOptionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public hasMessageSetWireFormat()Z
    .locals 2

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasNoStandardDescriptorAccessor()Z
    .locals 2

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->bitField0_:I

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

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$11900()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->memoizedIsInitialized:B

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
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->getUninterpretedOptionCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->getUninterpretedOption(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->memoizedIsInitialized:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableMessage;->extensionsAreInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->memoizedIsInitialized:B

    return v2

    :cond_4
    iput-byte v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 2

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;-><init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->newBuilderForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->newBuilderForType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->newBuilderForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->newBuilder(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->toBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->toBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

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

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->getSerializedSize()I

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableMessage;->newExtensionWriter()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->messageSetWireFormat_:Z

    invoke-virtual {p1, v2, v1}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_0
    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor_:Z

    invoke-virtual {p1, v2, v1}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/16 v2, 0x3e7

    iget-object v3, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeMessage(ILcom/amazon/whispersync/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/amazon/whispersync/google/protobuf/CodedOutputStream;)V

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;->writeTo(Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;)V

    return-void
.end method
