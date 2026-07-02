.class public final Lcom/amazon/whispersync/google/protobuf/DynamicMessage;
.super Lcom/amazon/whispersync/google/protobuf/AbstractMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;
    }
.end annotation


# instance fields
.field private final fields:Lcom/amazon/whispersync/google/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/google/protobuf/FieldSet<",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedSize:I

.field private final type:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

.field private final unknownFields:Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;


# direct methods
.method private constructor <init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;Lcom/amazon/whispersync/google/protobuf/FieldSet;Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;",
            "Lcom/amazon/whispersync/google/protobuf/FieldSet<",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;",
            ">;",
            "Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->memoizedSize:I

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->type:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    iput-object p2, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->fields:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    iput-object p3, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->unknownFields:Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;Lcom/amazon/whispersync/google/protobuf/FieldSet;Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;Lcom/amazon/whispersync/google/protobuf/DynamicMessage$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;Lcom/amazon/whispersync/google/protobuf/FieldSet;Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/whispersync/google/protobuf/DynamicMessage;)Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 0

    iget-object p0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->type:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/whispersync/google/protobuf/DynamicMessage;)Lcom/amazon/whispersync/google/protobuf/FieldSet;
    .locals 0

    iget-object p0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->fields:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/whispersync/google/protobuf/DynamicMessage;)Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->unknownFields:Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;Lcom/amazon/whispersync/google/protobuf/FieldSet;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->isInitialized(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;Lcom/amazon/whispersync/google/protobuf/FieldSet;)Z

    move-result p0

    return p0
.end method

.method public static getDefaultInstance(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage;
    .locals 3

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->emptySet()Lcom/amazon/whispersync/google/protobuf/FieldSet;

    move-result-object v1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;Lcom/amazon/whispersync/google/protobuf/FieldSet;Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)V

    return-object v0
.end method

.method private static isInitialized(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;Lcom/amazon/whispersync/google/protobuf/FieldSet;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;",
            "Lcom/amazon/whispersync/google/protobuf/FieldSet<",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->hasField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->isInitialized()Z

    move-result p0

    return p0
.end method

.method public static newBuilder(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;
    .locals 2

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;Lcom/amazon/whispersync/google/protobuf/DynamicMessage$1;)V

    return-object v0
.end method

.method public static newBuilder(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;
    .locals 3

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    invoke-interface {p0}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getDescriptorForType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;Lcom/amazon/whispersync/google/protobuf/DynamicMessage$1;)V

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;Lcom/amazon/whispersync/google/protobuf/ByteString;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->newBuilder(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->access$000(Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;Lcom/amazon/whispersync/google/protobuf/ByteString;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->newBuilder(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->access$000(Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;Lcom/amazon/whispersync/google/protobuf/CodedInputStream;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->newBuilder(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->access$000(Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->newBuilder(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->access$000(Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;Ljava/io/InputStream;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->newBuilder(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->access$000(Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->newBuilder(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->access$000(Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;[B)Lcom/amazon/whispersync/google/protobuf/DynamicMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->newBuilder(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->access$000(Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;[BLcom/amazon/whispersync/google/protobuf/ExtensionRegistry;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->newBuilder(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->access$000(Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage;

    move-result-object p0

    return-object p0
.end method

.method private verifyContainingType(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)V
    .locals 1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->type:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAllFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->fields:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->getAllFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DynamicMessage;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->type:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->getDefaultInstance(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->type:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 2

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->verifyContainingType(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->fields:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->getField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->getDefaultInstance(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->verifyContainingType(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->fields:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->getRepeatedField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldCount(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->verifyContainingType(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->fields:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->getRepeatedFieldCount(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result p1

    return p1
.end method

.method public getSerializedSize()I
    .locals 2

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->type:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->getOptions()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->fields:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->getMessageSetSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->unknownFields:Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;->getSerializedSizeAsMessageSet()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->fields:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->getSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->unknownFields:Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->memoizedSize:I

    return v0
.end method

.method public getUnknownFields()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->unknownFields:Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->verifyContainingType(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->fields:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->hasField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result p1

    return p1
.end method

.method public isInitialized()Z
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->type:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->fields:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->isInitialized(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;Lcom/amazon/whispersync/google/protobuf/FieldSet;)Z

    move-result v0

    return v0
.end method

.method public newBuilderForType()Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;
    .locals 3

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->type:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;Lcom/amazon/whispersync/google/protobuf/DynamicMessage$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->newBuilderForType()Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->newBuilderForType()Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->newBuilderForType()Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->toBuilder()Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->toBuilder()Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->type:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->getOptions()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->fields:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->writeMessageSetTo(Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;)V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->unknownFields:Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;->writeAsMessageSetTo(Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->fields:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->writeTo(Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;)V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->unknownFields:Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;->writeTo(Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;)V

    :goto_0
    return-void
.end method
