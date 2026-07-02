.class public final Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;
.super Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$DescriptorIntPair;,
        Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;
    }
.end annotation


# static fields
.field private static final EMPTY:Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;


# instance fields
.field private final extensionsByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final extensionsByNumber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$DescriptorIntPair;",
            "Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;-><init>(Z)V

    sput-object v0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;->EMPTY:Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;->extensionsByName:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;->extensionsByNumber:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;-><init>(Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)V

    iget-object v0, p1, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;->extensionsByName:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;->extensionsByName:Ljava/util/Map;

    iget-object p1, p1, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;->extensionsByNumber:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;->extensionsByNumber:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;-><init>(Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;->extensionsByName:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;->extensionsByNumber:Ljava/util/Map;

    return-void
.end method

.method private add(Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;)V
    .locals 4

    iget-object v0, p1, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;->extensionsByName:Ljava/util/Map;

    iget-object v1, p1, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;->extensionsByNumber:Ljava/util/Map;

    new-instance v1, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$DescriptorIntPair;

    iget-object v2, p1, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v2}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    iget-object v3, p1, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$DescriptorIntPair;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;I)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->getOptions()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v1

    sget-object v2, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isOptional()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getExtensionScope()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;->extensionsByName:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ExtensionRegistry.add() was given a FieldDescriptor for a regular (non-extension) field."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getEmptyRegistry()Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;
    .locals 1

    sget-object v0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;->EMPTY:Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;

    return-object v0
.end method

.method public static newInstance()Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;
    .locals 1

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;

    invoke-direct {v0}, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;-><init>()V

    return-object v0
.end method


# virtual methods
.method public add(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)V
    .locals 2

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Lcom/amazon/whispersync/google/protobuf/Message;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$1;)V

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;->add(Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ExtensionRegistry.add() must be provided a default instance when adding an embedded message extension."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Lcom/amazon/whispersync/google/protobuf/Message;)V
    .locals 2

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Lcom/amazon/whispersync/google/protobuf/Message;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$1;)V

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;->add(Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ExtensionRegistry.add() provided a default instance for a non-message extension."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension<",
            "**>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->getMessageDefaultInstance()Lcom/amazon/whispersync/google/protobuf/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->getMessageDefaultInstance()Lcom/amazon/whispersync/google/protobuf/Message;

    move-result-object p1

    invoke-direct {v0, v1, p1, v2}, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Lcom/amazon/whispersync/google/protobuf/Message;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered message-type extension had null default instance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object p1

    invoke-direct {v0, p1, v2, v2}, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Lcom/amazon/whispersync/google/protobuf/Message;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$1;)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;->add(Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;)V

    return-void
.end method

.method public findExtensionByName(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;->extensionsByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;

    return-object p1
.end method

.method public findExtensionByNumber(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;I)Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;->extensionsByNumber:Ljava/util/Map;

    new-instance v1, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$DescriptorIntPair;

    invoke-direct {v1, p1, p2}, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$DescriptorIntPair;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;

    return-object p1
.end method

.method public getUnmodifiable()Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;
    .locals 1

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;-><init>(Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;)V

    return-object v0
.end method

.method public bridge synthetic getUnmodifiable()Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;->getUnmodifiable()Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;

    move-result-object v0

    return-object v0
.end method
