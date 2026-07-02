.class public final Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
.super Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;",
        ">;",
        "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;"
    }
.end annotation


# instance fields
.field private aggregateValue_:Ljava/lang/Object;

.field private bitField0_:I

.field private doubleValue_:D

.field private identifierValue_:Ljava/lang/Object;

.field private nameBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder<",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePartOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;",
            ">;"
        }
    .end annotation
.end field

.field private negativeIntValue_:J

.field private positiveIntValue_:J

.field private stringValue_:Lcom/amazon/whispersync/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->identifierValue_:Ljava/lang/Object;

    sget-object v1, Lcom/amazon/whispersync/google/protobuf/ByteString;->EMPTY:Lcom/amazon/whispersync/google/protobuf/ByteString;

    iput-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->stringValue_:Lcom/amazon/whispersync/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->aggregateValue_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    const-string p1, ""

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->identifierValue_:Ljava/lang/Object;

    sget-object v0, Lcom/amazon/whispersync/google/protobuf/ByteString;->EMPTY:Lcom/amazon/whispersync/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->stringValue_:Lcom/amazon/whispersync/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->aggregateValue_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;-><init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$17900(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildParsed()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$18000()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->create()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

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

.method private static create()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    invoke-direct {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;-><init>()V

    return-object v0
.end method

.method private ensureNameIsMutable()V
    .locals 3

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$16800()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getNameFieldBuilder()Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder<",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePartOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    iget v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

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

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    sget-boolean v0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->getNameFieldBuilder()Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllName(Ljava/lang/Iterable;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;",
            ">;)",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->ensureNameIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addName(ILcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->ensureNameIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/amazon/whispersync/google/protobuf/GeneratedMessage;)Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addName(ILcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->ensureNameIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

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

.method public addName(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->ensureNameIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;)Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addName(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->ensureNameIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

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

.method public addNameBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->getNameFieldBuilder()Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    return-object v0
.end method

.method public addNameBuilder(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->getNameFieldBuilder()Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/amazon/whispersync/google/protobuf/GeneratedMessage;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    return-object p1
.end method

.method public build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 2

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

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

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/amazon/whispersync/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 6

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;-><init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$1;)V

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    and-int/lit8 v2, v1, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    iget v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    :cond_0
    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v2

    :goto_0
    invoke-static {v0, v2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->access$18302(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;Ljava/util/List;)Ljava/util/List;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->identifierValue_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->access$18402(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x2

    :cond_3
    iget-wide v4, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->positiveIntValue_:J

    invoke-static {v0, v4, v5}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->access$18502(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;J)J

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x4

    :cond_4
    iget-wide v4, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->negativeIntValue_:J

    invoke-static {v0, v4, v5}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->access$18602(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;J)J

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x8

    :cond_5
    iget-wide v4, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->doubleValue_:D

    invoke-static {v0, v4, v5}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->access$18702(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;D)D

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x10

    :cond_6
    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->stringValue_:Lcom/amazon/whispersync/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->access$18802(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;Lcom/amazon/whispersync/google/protobuf/ByteString;)Lcom/amazon/whispersync/google/protobuf/ByteString;

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    or-int/lit8 v3, v3, 0x20

    :cond_7
    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->aggregateValue_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->access$18902(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19002(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;I)I

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/amazon/whispersync/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/amazon/whispersync/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 4

    invoke-super {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->clear()V

    :goto_0
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->identifierValue_:Ljava/lang/Object;

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->positiveIntValue_:J

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->negativeIntValue_:J

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->doubleValue_:D

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    sget-object v2, Lcom/amazon/whispersync/google/protobuf/ByteString;->EMPTY:Lcom/amazon/whispersync/google/protobuf/ByteString;

    iput-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->stringValue_:Lcom/amazon/whispersync/google/protobuf/ByteString;

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->aggregateValue_:Ljava/lang/Object;

    and-int/lit8 v0, v1, -0x41

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAggregateValue()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->getAggregateValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->aggregateValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDoubleValue()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->doubleValue_:D

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearIdentifierValue()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->getIdentifierValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->identifierValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearName()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearNegativeIntValue()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->negativeIntValue_:J

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPositiveIntValue()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->positiveIntValue_:J

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStringValue()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->getStringValue()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->stringValue_:Lcom/amazon/whispersync/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->create()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

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

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAggregateValue()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->aggregateValue_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->aggregateValue_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    iget-wide v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->doubleValue_:D

    return-wide v0
.end method

.method public getIdentifierValue()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->identifierValue_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->identifierValue_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getName(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;

    move-result-object p1

    goto :goto_0
.end method

.method public getNameBuilder(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->getNameFieldBuilder()Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    return-object p1
.end method

.method public getNameBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->getNameFieldBuilder()Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNameCount()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    return v0
.end method

.method public getNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNameOrBuilder(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePartOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePartOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;

    move-result-object p1

    goto :goto_0
.end method

.method public getNameOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePartOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNegativeIntValue()J
    .locals 2

    iget-wide v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->negativeIntValue_:J

    return-wide v0
.end method

.method public getPositiveIntValue()J
    .locals 2

    iget-wide v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->positiveIntValue_:J

    return-wide v0
.end method

.method public getStringValue()Lcom/amazon/whispersync/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->stringValue_:Lcom/amazon/whispersync/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasAggregateValue()Z
    .locals 2

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

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

.method public hasDoubleValue()Z
    .locals 2

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

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

.method public hasIdentifierValue()Z
    .locals 2

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

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

.method public hasNegativeIntValue()Z
    .locals 2

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

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

.method public hasPositiveIntValue()Z
    .locals 2

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

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

.method public hasStringValue()Z
    .locals 2

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$16900()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->getNameCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->getName(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->isInitialized()Z

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

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 4
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

    const/16 v2, 0x12

    if-eq v1, v2, :cond_8

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_7

    const/16 v2, 0x20

    if-eq v1, v2, :cond_6

    const/16 v3, 0x28

    if-eq v1, v3, :cond_5

    const/16 v3, 0x31

    if-eq v1, v3, :cond_4

    const/16 v3, 0x3a

    if-eq v1, v3, :cond_3

    const/16 v2, 0x42

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
    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->aggregateValue_:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->stringValue_:Lcom/amazon/whispersync/google/protobuf/ByteString;

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->doubleValue_:D

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->negativeIntValue_:J

    goto :goto_0

    :cond_6
    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->positiveIntValue_:J

    goto :goto_0

    :cond_7
    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->identifierValue_:Ljava/lang/Object;

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readMessage(Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->addName(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->access$18300(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->access$18300(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->ensureNameIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->access$18300(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->access$18300(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->access$18300(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    sget-boolean v1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->getNameFieldBuilder()Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->access$18300(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->hasIdentifierValue()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->getIdentifierValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setIdentifierValue(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    :cond_6
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->hasPositiveIntValue()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->getPositiveIntValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setPositiveIntValue(J)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    :cond_7
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->hasNegativeIntValue()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->getNegativeIntValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setNegativeIntValue(J)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    :cond_8
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->hasDoubleValue()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->getDoubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setDoubleValue(D)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    :cond_9
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->hasStringValue()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->getStringValue()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setStringValue(Lcom/amazon/whispersync/google/protobuf/ByteString;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    :cond_a
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->hasAggregateValue()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;->getAggregateValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setAggregateValue(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    :cond_b
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->mergeUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    instance-of v0, p1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeName(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->ensureNameIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setAggregateValue(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->aggregateValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method setAggregateValue(Lcom/amazon/whispersync/google/protobuf/ByteString;)V
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->aggregateValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-void
.end method

.method public setDoubleValue(D)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->doubleValue_:D

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setIdentifierValue(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->identifierValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method setIdentifierValue(Lcom/amazon/whispersync/google/protobuf/ByteString;)V
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->identifierValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-void
.end method

.method public setName(ILcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->ensureNameIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/amazon/whispersync/google/protobuf/GeneratedMessage;)Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public setName(ILcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->ensureNameIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

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

.method public setNegativeIntValue(J)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->negativeIntValue_:J

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setPositiveIntValue(J)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->positiveIntValue_:J

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setStringValue(Lcom/amazon/whispersync/google/protobuf/ByteString;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->stringValue_:Lcom/amazon/whispersync/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method
