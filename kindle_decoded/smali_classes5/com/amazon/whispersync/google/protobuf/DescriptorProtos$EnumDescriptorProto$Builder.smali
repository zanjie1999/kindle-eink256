.class public final Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
.super Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;",
        ">;",
        "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProtoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private name_:Ljava/lang/Object;

.field private optionsBuilder_:Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder<",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions$Builder;",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptionsOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;

.field private valueBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder<",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private value_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->name_:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->name_:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;-><init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildParsed()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6400()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->create()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;->isInitialized()Z

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

.method private static create()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    invoke-direct {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;-><init>()V

    return-object v0
.end method

.method private ensureValueIsMutable()V
    .locals 3

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$6100()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getOptionsFieldBuilder()Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder<",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions$Builder;",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptionsOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->optionsBuilder_:Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;-><init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->optionsBuilder_:Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->optionsBuilder_:Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getValueFieldBuilder()Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder<",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    iget v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    const/4 v3, 0x2

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

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    sget-boolean v0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getValueFieldBuilder()Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getOptionsFieldBuilder()Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllValue(Ljava/lang/Iterable;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            ">;)",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureValueIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addValue(ILcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureValueIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/amazon/whispersync/google/protobuf/GeneratedMessage;)Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addValue(ILcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureValueIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

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

.method public addValue(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureValueIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;)Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public addValue(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureValueIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

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

.method public addValueBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getValueFieldBuilder()Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    return-object v0
.end method

.method public addValueBuilder(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getValueFieldBuilder()Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/amazon/whispersync/google/protobuf/GeneratedMessage;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    return-object p1
.end method

.method public build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 2

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;->isInitialized()Z

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

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/amazon/whispersync/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 5

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;-><init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$1;)V

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$6702(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v2, :cond_2

    iget v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    iget v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    :cond_1
    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v2

    :goto_1
    invoke-static {v0, v2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$6802(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    or-int/lit8 v3, v3, 0x2

    :cond_3
    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->optionsBuilder_:Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->build()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;

    :goto_2
    invoke-static {v0, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$6902(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {v0, v3}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7002(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;I)I

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/amazon/whispersync/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/amazon/whispersync/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    invoke-super {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->name_:Ljava/lang/Object;

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->clear()V

    :goto_0
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->optionsBuilder_:Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->clear()Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    :goto_1
    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearName()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->name_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOptions()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->optionsBuilder_:Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->clear()Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    :goto_0
    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearValue()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->create()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

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

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->name_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->name_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->optionsBuilder_:Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;

    return-object v0
.end method

.method public getOptionsBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getOptionsFieldBuilder()Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions$Builder;

    return-object v0
.end method

.method public getOptionsOrBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptionsOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->optionsBuilder_:Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptionsOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;

    return-object v0
.end method

.method public getValue(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;

    move-result-object p1

    goto :goto_0
.end method

.method public getValueBuilder(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getValueFieldBuilder()Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    return-object p1
.end method

.method public getValueBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getValueFieldBuilder()Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValueCount()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    return v0
.end method

.method public getValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValueOrBuilder(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProtoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProtoOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;

    move-result-object p1

    goto :goto_0
.end method

.method public getValueOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasName()Z
    .locals 2

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$6200()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getValueCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getValue(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->hasOptions()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getOptions()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;->isInitialized()Z

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

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
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

    if-eq v1, v2, :cond_5

    const/16 v2, 0x12

    if-eq v1, v2, :cond_4

    const/16 v2, 0x1a

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
    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->hasOptions()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getOptions()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions$Builder;

    :cond_3
    invoke-virtual {p1, v1, p2}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readMessage(Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->setOptions(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readMessage(Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->addValue(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->name_:Ljava/lang/Object;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->setName(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$6800(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$6800(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureValueIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$6800(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$6800(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$6800(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    sget-boolean v1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getValueFieldBuilder()Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$6800(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getOptions()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeOptions(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    :cond_7
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->mergeUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    instance-of v0, p1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeOptions(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 3

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->optionsBuilder_:Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;->newBuilder(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;)Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    :goto_0
    iget p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public removeValue(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureValueIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->name_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method setName(Lcom/amazon/whispersync/google/protobuf/ByteString;)V
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->name_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-void
.end method

.method public setOptions(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->optionsBuilder_:Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object p1

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;)Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    :goto_0
    iget p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public setOptions(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->optionsBuilder_:Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;)Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    :goto_0
    iget p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public setValue(ILcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureValueIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/amazon/whispersync/google/protobuf/GeneratedMessage;)Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    :goto_0
    return-object p0
.end method

.method public setValue(ILcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/amazon/whispersync/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureValueIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

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
