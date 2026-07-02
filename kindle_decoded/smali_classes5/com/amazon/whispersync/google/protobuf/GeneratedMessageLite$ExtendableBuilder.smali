.class public abstract Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
.super Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$Builder;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "TMessageType;>;BuilderType:",
        "Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$Builder<",
        "TMessageType;TBuilderType;>;",
        "Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder<",
        "TMessageType;>;"
    }
.end annotation


# instance fields
.field private extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/google/protobuf/FieldSet<",
            "Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private extensionsIsMutable:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->emptySet()Lcom/amazon/whispersync/google/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)Lcom/amazon/whispersync/google/protobuf/FieldSet;
    .locals 0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->buildExtensions()Lcom/amazon/whispersync/google/protobuf/FieldSet;

    move-result-object p0

    return-object p0
.end method

.method private buildExtensions()Lcom/amazon/whispersync/google/protobuf/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/google/protobuf/FieldSet<",
            "Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->makeImmutable()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensionsIsMutable:Z

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    return-object v0
.end method

.method private ensureExtensionsIsMutable()V
    .locals 1

    iget-boolean v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensionsIsMutable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->clone()Lcom/amazon/whispersync/google/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensionsIsMutable:Z

    :cond_0
    return-void
.end method

.method private verifyExtensionContainingType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TMessageType;*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getContainingTypeDefaultInstance()Lcom/amazon/whispersync/google/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final addExtension(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;TType;)TBuilderType;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->ensureExtensionsIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->addRepeatedField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->clear()Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensionsIsMutable:Z

    invoke-super {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->clear()Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final clearExtension(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TMessageType;*>;)TBuilderType;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->ensureExtensionsIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->clearField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->clone()Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->clone()Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->clone()Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

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

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->clone()Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected extensionsAreInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public final getExtension(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TMessageType;TType;>;)TType;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->getField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$200(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final getExtension(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;I)TType;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->getRepeatedField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtensionCount(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;)I"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->getRepeatedFieldCount(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result p1

    return p1
.end method

.method public final hasExtension(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TMessageType;TType;>;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->hasField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result p1

    return p1
.end method

.method protected final mergeExtensionFields(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->ensureExtensionsIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessage;->access$300(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessage;)Lcom/amazon/whispersync/google/protobuf/FieldSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/FieldSet;)V

    return-void
.end method

.method protected parseUnknownField(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p3}, Lcom/amazon/whispersync/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    invoke-static {p3}, Lcom/amazon/whispersync/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;->findLiteExtensionByNumber(Lcom/amazon/whispersync/google/protobuf/MessageLite;I)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;Z)I

    move-result v4

    if-ne v0, v4, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->access$500(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->access$600(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;)Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;->isPackable()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;Z)I

    move-result v4

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {p1, p3}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    return p1

    :cond_3
    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p2

    invoke-static {v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;

    move-result-object p3

    sget-object v0, Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;->ENUM:Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;

    if-ne p3, v0, :cond_5

    :goto_1
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result p3

    if-lez p3, :cond_6

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readEnum()I

    move-result p3

    invoke-static {v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/amazon/whispersync/google/protobuf/Internal$EnumLiteMap;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/amazon/whispersync/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/amazon/whispersync/google/protobuf/Internal$EnumLite;

    move-result-object p3

    if-nez p3, :cond_4

    return v3

    :cond_4
    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->ensureExtensionsIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-static {v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2, p3}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->addRepeatedField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result p3

    if-lez p3, :cond_6

    invoke-static {v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->readPrimitiveField(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;)Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->ensureExtensionsIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-static {v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2, p3}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->addRepeatedField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_5

    :cond_7
    sget-object p3, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    invoke-static {v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteJavaType()Lcom/amazon/whispersync/google/protobuf/WireFormat$JavaType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p3, p3, v0

    if-eq p3, v3, :cond_9

    const/4 p2, 0x2

    if-eq p3, p2, :cond_8

    invoke-static {v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->readPrimitiveField(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    invoke-static {v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/amazon/whispersync/google/protobuf/Internal$EnumLiteMap;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/amazon/whispersync/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/amazon/whispersync/google/protobuf/Internal$EnumLite;

    move-result-object p1

    if-nez p1, :cond_d

    return v3

    :cond_9
    const/4 p3, 0x0

    invoke-static {v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-static {v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->getField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/MessageLite;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/amazon/whispersync/google/protobuf/MessageLite;->toBuilder()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;

    move-result-object p3

    :cond_a
    if-nez p3, :cond_b

    invoke-static {v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$700(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/amazon/whispersync/google/protobuf/MessageLite;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/whispersync/google/protobuf/MessageLite;->newBuilderForType()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;

    move-result-object p3

    :cond_b
    invoke-static {v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;

    move-result-object v0

    sget-object v2, Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;->GROUP:Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;

    if-ne v0, v2, :cond_c

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getNumber()I

    move-result v0

    invoke-virtual {p1, v0, p3, p2}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readGroup(ILcom/amazon/whispersync/google/protobuf/MessageLite$Builder;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_3

    :cond_c
    invoke-virtual {p1, p3, p2}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readMessage(Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)V

    :goto_3
    invoke-interface {p3}, Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;->build()Lcom/amazon/whispersync/google/protobuf/MessageLite;

    move-result-object p1

    :cond_d
    :goto_4
    invoke-static {v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result p2

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->ensureExtensionsIsMutable()V

    if-eqz p2, :cond_e

    iget-object p2, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-static {v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->addRepeatedField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_5

    :cond_e
    iget-object p2, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-static {v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->setField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    :goto_5
    return v3
.end method

.method public final setExtension(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;ILjava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;ITType;)TBuilderType;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->ensureExtensionsIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->setRepeatedField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    return-object p0
.end method

.method public final setExtension(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TMessageType;TType;>;TType;)TBuilderType;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->ensureExtensionsIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->setField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-object p0
.end method
