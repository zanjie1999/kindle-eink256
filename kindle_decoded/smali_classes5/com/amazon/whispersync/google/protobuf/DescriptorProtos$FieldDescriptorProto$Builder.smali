.class public final Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
.super Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;",
        ">;",
        "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProtoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private defaultValue_:Ljava/lang/Object;

.field private extendee_:Ljava/lang/Object;

.field private label_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

.field private name_:Ljava/lang/Object;

.field private number_:I

.field private optionsBuilder_:Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder<",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions$Builder;",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptionsOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

.field private typeName_:Ljava/lang/Object;

.field private type_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->name_:Ljava/lang/Object;

    sget-object v1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    iput-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->label_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    sget-object v1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    iput-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->type_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->typeName_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->extendee_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->defaultValue_:Ljava/lang/Object;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->name_:Ljava/lang/Object;

    sget-object v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->label_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    sget-object v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->type_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->typeName_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->extendee_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->defaultValue_:Ljava/lang/Object;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;-><init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildParsed()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4900()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->create()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->isInitialized()Z

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

.method private static create()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    invoke-direct {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$4600()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getOptionsFieldBuilder()Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder<",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions$Builder;",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptionsOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->optionsBuilder_:Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;-><init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->optionsBuilder_:Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->optionsBuilder_:Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    sget-boolean v0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->getOptionsFieldBuilder()Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 2

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->isInitialized()Z

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

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/amazon/whispersync/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 5

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;-><init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$1;)V

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5202(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->number_:I

    invoke-static {v0, v2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5302(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;I)I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->label_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    invoke-static {v0, v2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5402(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    :cond_3
    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->type_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    invoke-static {v0, v2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5502(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    :cond_4
    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->typeName_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5602(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    :cond_5
    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->extendee_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5702(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x40

    :cond_6
    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->defaultValue_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5802(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    or-int/lit16 v3, v3, 0x80

    :cond_7
    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->optionsBuilder_:Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    goto :goto_1

    :cond_8
    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->build()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    :goto_1
    invoke-static {v0, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5902(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0, v3}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6002(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;I)I

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/amazon/whispersync/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/amazon/whispersync/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 3

    invoke-super {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->name_:Ljava/lang/Object;

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->number_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    sget-object v2, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    iput-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->label_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    sget-object v2, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    iput-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->type_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->typeName_:Ljava/lang/Object;

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->extendee_:Ljava/lang/Object;

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->defaultValue_:Ljava/lang/Object;

    and-int/lit8 v0, v1, -0x41

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->optionsBuilder_:Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->clear()Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    :goto_0
    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDefaultValue()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->defaultValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearExtendee()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getExtendee()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->extendee_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLabel()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    sget-object v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->label_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearName()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->name_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearNumber()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->number_:I

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOptions()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->optionsBuilder_:Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->clear()Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    :goto_0
    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    sget-object v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->type_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTypeName()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->typeName_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->create()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

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

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->defaultValue_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->defaultValue_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptorForType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getExtendee()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->extendee_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->extendee_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->label_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->name_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->name_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->number_:I

    return v0
.end method

.method public getOptions()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->optionsBuilder_:Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    return-object v0
.end method

.method public getOptionsBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->getOptionsFieldBuilder()Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object v0
.end method

.method public getOptionsOrBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptionsOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->optionsBuilder_:Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptionsOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    return-object v0
.end method

.method public getType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->type_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->typeName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->typeName_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasDefaultValue()Z
    .locals 2

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

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
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->getOptions()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
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

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
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

    const/16 v2, 0xa

    if-eq v1, v2, :cond_c

    const/16 v2, 0x12

    const/16 v3, 0x20

    if-eq v1, v2, :cond_b

    const/16 v2, 0x18

    if-eq v1, v2, :cond_a

    if-eq v1, v3, :cond_8

    const/16 v2, 0x28

    if-eq v1, v2, :cond_6

    const/16 v2, 0x32

    if-eq v1, v2, :cond_5

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_4

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
    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;->newBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->hasOptions()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->getOptions()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    :cond_3
    invoke-virtual {p1, v1, p2}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readMessage(Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setOptions(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->defaultValue_:Ljava/lang/Object;

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->typeName_:Ljava/lang/Object;

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readEnum()I

    move-result v1

    invoke-static {v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->valueOf(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    :cond_7
    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    iput-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->type_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readEnum()I

    move-result v1

    invoke-static {v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->valueOf(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v2

    const/4 v3, 0x4

    if-nez v2, :cond_9

    invoke-virtual {v0, v3, v1}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    :cond_9
    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/2addr v1, v3

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    iput-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->label_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    goto/16 :goto_0

    :cond_a
    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->number_:I

    goto/16 :goto_0

    :cond_b
    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/2addr v1, v3

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->extendee_:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_c
    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->name_:Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setName(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setNumber(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getLabel()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setLabel(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->hasType()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setType(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->hasTypeName()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setTypeName(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    :cond_5
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getExtendee()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setExtendee(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    :cond_6
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->hasDefaultValue()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setDefaultValue(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    :cond_7
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getOptions()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeOptions(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    :cond_8
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->mergeUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    instance-of v0, p1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeOptions(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 3

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->optionsBuilder_:Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    const/16 v1, 0x80

    if-nez v0, :cond_1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;->newBuilder(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;)Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    :goto_0
    iget p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public setDefaultValue(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->defaultValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method setDefaultValue(Lcom/amazon/whispersync/google/protobuf/ByteString;)V
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->defaultValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-void
.end method

.method public setExtendee(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->extendee_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method setExtendee(Lcom/amazon/whispersync/google/protobuf/ByteString;)V
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->extendee_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-void
.end method

.method public setLabel(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->label_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public setName(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->name_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method setName(Lcom/amazon/whispersync/google/protobuf/ByteString;)V
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->name_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-void
.end method

.method public setNumber(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    iput p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->number_:I

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setOptions(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions$Builder;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->optionsBuilder_:Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object p1

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;)Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    :goto_0
    iget p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public setOptions(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->optionsBuilder_:Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->options_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;)Lcom/amazon/whispersync/google/protobuf/SingleFieldBuilder;

    :goto_0
    iget p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public setType(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->type_:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public setTypeName(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->typeName_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method setTypeName(Lcom/amazon/whispersync/google/protobuf/ByteString;)V
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->typeName_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-void
.end method
