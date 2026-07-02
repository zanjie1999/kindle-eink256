.class public final Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GeneratedExtension"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lcom/amazon/whispersync/google/protobuf/Message;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private descriptorRetriever:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtensionDescriptorRetriever;

.field private final enumGetValueDescriptor:Ljava/lang/reflect/Method;

.field private final enumValueOf:Ljava/lang/reflect/Method;

.field private final messageDefaultInstance:Lcom/amazon/whispersync/google/protobuf/Message;

.field private final singularType:Ljava/lang/Class;


# direct methods
.method private constructor <init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtensionDescriptorRetriever;Ljava/lang/Class;Lcom/amazon/whispersync/google/protobuf/Message;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/amazon/whispersync/google/protobuf/Message;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad messageDefaultInstance for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->descriptorRetriever:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtensionDescriptorRetriever;

    iput-object p2, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->singularType:Ljava/lang/Class;

    iput-object p3, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->messageDefaultInstance:Lcom/amazon/whispersync/google/protobuf/Message;

    const-class p1, Lcom/amazon/whispersync/google/protobuf/ProtocolMessageEnum;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Class;

    const-class p3, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    const-string/jumbo p3, "valueOf"

    invoke-static {p2, p3, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->access$1300(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->enumValueOf:Ljava/lang/reflect/Method;

    new-array p1, v0, [Ljava/lang/Class;

    const-string p3, "getValueDescriptor"

    invoke-static {p2, p3, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->access$1300(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->enumValueOf:Ljava/lang/reflect/Method;

    :goto_1
    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->enumGetValueDescriptor:Ljava/lang/reflect/Method;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtensionDescriptorRetriever;Ljava/lang/Class;Lcom/amazon/whispersync/google/protobuf/Message;Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;-><init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtensionDescriptorRetriever;Ljava/lang/Class;Lcom/amazon/whispersync/google/protobuf/Message;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->singularToReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->fromReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->singularFromReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->toReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private fromReflectionType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    sget-object v2, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->singularFromReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->singularFromReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private singularFromReflectionType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$2;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$JavaType:[I

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->enumValueOf:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;

    aput-object p1, v1, v3

    invoke-static {v0, v2, v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->access$1400(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->singularType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->messageDefaultInstance:Lcom/amazon/whispersync/google/protobuf/Message;

    invoke-interface {v0}, Lcom/amazon/whispersync/google/protobuf/Message;->newBuilderForType()Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    move-result-object v0

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Message;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->build()Lcom/amazon/whispersync/google/protobuf/Message;

    move-result-object p1

    return-object p1
.end method

.method private singularToReflectionType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$2;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$JavaType:[I

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->enumGetValueDescriptor:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->access$1400(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private toReflectionType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->singularToReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    return-object p1

    :cond_2
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->singularToReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->descriptorRetriever:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtensionDescriptorRetriever;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtensionDescriptorRetriever;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getDescriptor() called before internalInit()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMessageDefaultInstance()Lcom/amazon/whispersync/google/protobuf/Message;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->messageDefaultInstance:Lcom/amazon/whispersync/google/protobuf/Message;

    return-object v0
.end method

.method public internalInit(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)V
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->descriptorRetriever:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtensionDescriptorRetriever;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension$1;-><init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)V

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->descriptorRetriever:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtensionDescriptorRetriever;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already initialized."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
