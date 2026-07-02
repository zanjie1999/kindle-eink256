.class public final Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;
.super Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder<",
        "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;",
        "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;",
        ">;",
        "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptionsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private messageSetWireFormat_:Z

.field private noStandardDescriptorAccessor_:Z

.field private uninterpretedOptionBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder<",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

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
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;-><init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;-><init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$12000(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->buildParsed()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$12100()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->create()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->isInitialized()Z

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

.method private static create()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    invoke-direct {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;-><init>()V

    return-object v0
.end method

.method private ensureUninterpretedOptionIsMutable()V
    .locals 3

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$11800()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getUninterpretedOptionFieldBuilder()Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder<",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOptionBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    iget v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->bitField0_:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOptionBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOptionBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    sget-boolean v0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOptionBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addUninterpretedOption(ILcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOptionBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/amazon/whispersync/google/protobuf/GeneratedMessage;)Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addUninterpretedOption(ILcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOptionBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOption_:Ljava/util/List;

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

.method public addUninterpretedOption(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOptionBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;)Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOptionBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOption_:Ljava/util/List;

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

.method public addUninterpretedOptionBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object v0
.end method

.method public addUninterpretedOptionBuilder(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/amazon/whispersync/google/protobuf/GeneratedMessage;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object p1
.end method

.method public build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;
    .locals 2

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->isInitialized()Z

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

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/amazon/whispersync/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;
    .locals 4

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;-><init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$1;)V

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->messageSetWireFormat_:Z

    invoke-static {v0, v2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->access$12402(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;Z)Z

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget-boolean v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->noStandardDescriptorAccessor_:Z

    invoke-static {v0, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->access$12502(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;Z)Z

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOptionBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->bitField0_:I

    :cond_2
    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v1

    :goto_1
    invoke-static {v0, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->access$12602(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;Ljava/util/List;)Ljava/util/List;

    invoke-static {v0, v3}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->access$12702(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;I)I

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/amazon/whispersync/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/amazon/whispersync/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 2

    invoke-super {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->clear()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->messageSetWireFormat_:Z

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->bitField0_:I

    iput-boolean v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->noStandardDescriptorAccessor_:Z

    and-int/lit8 v0, v1, -0x3

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOptionBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->bitField0_:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearMessageSetWireFormat()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->messageSetWireFormat_:Z

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearNoStandardDescriptorAccessor()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->noStandardDescriptorAccessor_:Z

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOptionBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 2

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->create()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

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

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMessageSetWireFormat()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->messageSetWireFormat_:Z

    return v0
.end method

.method public getNoStandardDescriptorAccessor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->noStandardDescriptorAccessor_:Z

    return v0
.end method

.method public getUninterpretedOption(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOptionBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;

    move-result-object p1

    goto :goto_0
.end method

.method public getUninterpretedOptionBuilder(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object p1
.end method

.method public getUninterpretedOptionBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOptionBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->getCount()I

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

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOptionBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOptionOrBuilder(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOptionBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;

    move-result-object p1

    goto :goto_0
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

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOptionBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasMessageSetWireFormat()Z
    .locals 2

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->bitField0_:I

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
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->getUninterpretedOptionCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->getUninterpretedOption(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->extensionsAreInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
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

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;
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

    const/16 v2, 0x8

    if-eq v1, v2, :cond_4

    const/16 v2, 0x10

    if-eq v1, v2, :cond_3

    const/16 v2, 0x1f3a

    if-eq v1, v2, :cond_2

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->parseUnknownField(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->setUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_2
    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readMessage(Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->addUninterpretedOption(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->noStandardDescriptorAccessor_:Z

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->messageSetWireFormat_:Z

    goto :goto_0
.end method

.method public mergeFrom(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 2

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->hasMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->setMessageSetWireFormat(Z)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->hasNoStandardDescriptorAccessor()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->getNoStandardDescriptorAccessor()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->setNoStandardDescriptorAccessor(Z)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOptionBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->access$12600(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->access$12600(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->bitField0_:I

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->access$12600(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->access$12600(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOptionBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOptionBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOptionBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->access$12600(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->bitField0_:I

    sget-boolean v1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_5
    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOptionBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOptionBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->access$12600(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    :cond_7
    :goto_1
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->mergeExtensionFields(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableMessage;)V

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->mergeUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    instance-of v0, p1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeUninterpretedOption(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOptionBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setMessageSetWireFormat(Z)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->messageSetWireFormat_:Z

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setNoStandardDescriptorAccessor(Z)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->noStandardDescriptorAccessor_:Z

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setUninterpretedOption(ILcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOptionBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/amazon/whispersync/google/protobuf/GeneratedMessage;)Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOptionBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;->uninterpretedOption_:Ljava/util/List;

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
