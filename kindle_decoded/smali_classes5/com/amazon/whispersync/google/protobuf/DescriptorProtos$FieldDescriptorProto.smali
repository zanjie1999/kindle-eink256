.class public final Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;
.super Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;,
        Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;,
        Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    }
.end annotation


# static fields
.field public static final DEFAULT_VALUE_FIELD_NUMBER:I = 0x7

.field public static final EXTENDEE_FIELD_NUMBER:I = 0x2

.field public static final LABEL_FIELD_NUMBER:I = 0x4

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final NUMBER_FIELD_NUMBER:I = 0x3

.field public static final OPTIONS_FIELD_NUMBER:I = 0x8

.field public static final TYPE_FIELD_NUMBER:I = 0x5

.field public static final TYPE_NAME_FIELD_NUMBER:I = 0x6

.field private static final defaultInstance:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private defaultValue_:Ljava/lang/Object;

.field private extendee_:Ljava/lang/Object;

.field private label_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private number_:I

.field private options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

.field private typeName_:Ljava/lang/Object;

.field private type_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;-><init>(Z)V

    sput-object v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->defaultInstance:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-direct {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;-><init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;)V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->memoizedIsInitialized:B

    iput p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;-><init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->memoizedIsInitialized:B

    iput p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$5202(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5302(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;I)I
    .locals 0

    iput p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->number_:I

    return p1
.end method

.method static synthetic access$5402(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;
    .locals 0

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->label_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    return-object p1
.end method

.method static synthetic access$5502(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    .locals 0

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->type_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    return-object p1
.end method

.method static synthetic access$5602(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5702(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5802(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5902(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;
    .locals 0

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    return-object p1
.end method

.method static synthetic access$6002(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;I)I
    .locals 0

    iput p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1

    sget-object v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->defaultInstance:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method private getDefaultValueBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/amazon/whispersync/google/protobuf/ByteString;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$4600()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getExtendeeBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/amazon/whispersync/google/protobuf/ByteString;

    return-object v0
.end method

.method private getNameBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/amazon/whispersync/google/protobuf/ByteString;

    return-object v0
.end method

.method private getTypeNameBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/amazon/whispersync/google/protobuf/ByteString;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->number_:I

    sget-object v1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    iput-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->label_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    sget-object v1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    iput-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->type_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    return-void
.end method

.method public static newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->access$4900()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->access$4800(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->access$4800(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->access$4800(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->access$4800(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->access$4800(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->access$4800(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->access$4800(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->access$4800(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->access$4800(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([BLcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->access$4800(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1

    sget-object v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->defaultInstance:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getExtendee()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getLabel()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->label_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->number_:I

    return v0
.end method

.method public getOptions()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    return-object v0
.end method

.method public getOptionsOrBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptionsOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getNameBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/amazon/whispersync/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    const/4 v3, 0x2

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getExtendeeBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/amazon/whispersync/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    iget v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->number_:I

    invoke-static {v1, v2}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->label_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    iget-object v3, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->type_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    invoke-virtual {v3}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->getNumber()I

    move-result v3

    invoke-static {v1, v3}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_6

    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeNameBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/amazon/whispersync/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    const/16 v3, 0x40

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_7

    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValueBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/amazon/whispersync/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    const/16 v3, 0x80

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v2, v1}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/amazon/whispersync/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->memoizedSerializedSize:I

    return v0
.end method

.method public getType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->type_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public hasDefaultValue()Z
    .locals 2

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

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

.method public hasExtendee()Z
    .locals 2

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

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

.method public hasLabel()Z
    .locals 2

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasNumber()Z
    .locals 2

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

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

.method public hasOptions()Z
    .locals 2

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasType()Z
    .locals 2

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

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

.method public hasTypeName()Z
    .locals 2

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$4700()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->memoizedIsInitialized:B

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getOptions()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->memoizedIsInitialized:B

    return v1

    :cond_2
    iput-byte v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->memoizedIsInitialized:B

    return v2
.end method

.method public newBuilderForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;-><init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilderForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilderForType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilderForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->toBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->toBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

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

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getSerializedSize()I

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getNameBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeBytes(ILcom/amazon/whispersync/google/protobuf/ByteString;)V

    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    const/4 v2, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getExtendeeBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeBytes(ILcom/amazon/whispersync/google/protobuf/ByteString;)V

    :cond_1
    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->number_:I

    invoke-virtual {p1, v0, v1}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_2
    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->label_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_3
    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->type_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    invoke-virtual {v2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->getNumber()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_4
    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_5

    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeNameBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeBytes(ILcom/amazon/whispersync/google/protobuf/ByteString;)V

    :cond_5
    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    const/16 v2, 0x40

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_6

    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValueBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeBytes(ILcom/amazon/whispersync/google/protobuf/ByteString;)V

    :cond_6
    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {p1, v1, v0}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeMessage(ILcom/amazon/whispersync/google/protobuf/MessageLite;)V

    :cond_7
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;->writeTo(Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;)V

    return-void
.end method
