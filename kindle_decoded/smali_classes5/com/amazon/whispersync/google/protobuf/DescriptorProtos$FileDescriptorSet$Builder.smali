.class public final Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
.super Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;",
        ">;",
        "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSetOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private fileBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder<",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private file_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;-><init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->buildParsed()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->create()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private static create()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    invoke-direct {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;-><init>()V

    return-object v0
.end method

.method private ensureFileIsMutable()V
    .locals 3

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$000()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getFileFieldBuilder()Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder<",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    iget v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    sget-boolean v0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->getFileFieldBuilder()Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllFile(Ljava/lang/Iterable;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;",
            ">;)",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->ensureFileIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addFile(ILcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->ensureFileIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/amazon/whispersync/google/protobuf/GeneratedMessage;)Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addFile(ILcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->ensureFileIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/amazon/whispersync/google/protobuf/GeneratedMessage;)Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addFile(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->ensureFileIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;)Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addFile(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->ensureFileIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;)Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addFileBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->getFileFieldBuilder()Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    return-object v0
.end method

.method public addFileBuilder(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->getFileFieldBuilder()Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/amazon/whispersync/google/protobuf/GeneratedMessage;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    return-object p1
.end method

.method public build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;
    .locals 2

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/amazon/whispersync/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/amazon/whispersync/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;
    .locals 3

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;-><init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$1;)V

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->bitField0_:I

    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->bitField0_:I

    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;->access$602(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;Ljava/util/List;)Ljava/util/List;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/amazon/whispersync/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/amazon/whispersync/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    invoke-super {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->bitField0_:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearFile()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 2

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->create()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFile(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;

    move-result-object p1

    goto :goto_0
.end method

.method public getFileBuilder(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->getFileFieldBuilder()Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    return-object p1
.end method

.method public getFileBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->getFileFieldBuilder()Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFileCount()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    return v0
.end method

.method public getFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFileOrBuilder(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;

    move-result-object p1

    goto :goto_0
.end method

.method public getFileOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$100()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->getFileCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->getFile(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->parseUnknownField(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->setUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_2
    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readMessage(Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->addFile(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 2

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;->access$600(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;->access$600(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->bitField0_:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->ensureFileIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;->access$600(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;->access$600(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;->access$600(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->bitField0_:I

    sget-boolean v1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->getFileFieldBuilder()Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;->access$600(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->mergeUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    instance-of v0, p1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeFile(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->ensureFileIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setFile(ILcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->ensureFileIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/amazon/whispersync/google/protobuf/GeneratedMessage;)Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public setFile(ILcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->fileBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->ensureFileIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->file_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/amazon/whispersync/google/protobuf/GeneratedMessage;)Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method
