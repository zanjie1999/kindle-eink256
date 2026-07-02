.class public abstract Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;
.super Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableMessage;",
        "BuilderType:",
        "Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;",
        ">",
        "Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder<",
        "TBuilderType;>;",
        "Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableMessageOrBuilder<",
        "TMessageType;>;"
    }
.end annotation


# instance fields
.field private extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/google/protobuf/FieldSet<",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;-><init>()V

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->emptySet()Lcom/amazon/whispersync/google/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)V

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->emptySet()Lcom/amazon/whispersync/google/protobuf/FieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;)Lcom/amazon/whispersync/google/protobuf/FieldSet;
    .locals 0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->buildExtensions()Lcom/amazon/whispersync/google/protobuf/FieldSet;

    move-result-object p0

    return-object p0
.end method

.method private buildExtensions()Lcom/amazon/whispersync/google/protobuf/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/google/protobuf/FieldSet<",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->makeImmutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    return-object v0
.end method

.method private ensureExtensionsIsMutable()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->clone()Lcom/amazon/whispersync/google/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    :cond_0
    return-void
.end method

.method private verifyContainingType(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)V
    .locals 1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->getDescriptorForType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private verifyExtensionContainingType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension<",
            "TMessageType;*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->getDescriptorForType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extension is for type \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" which does not match message type \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->getDescriptorForType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final addExtension(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;TType;)TBuilderType;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->verifyExtensionContainingType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;)V

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->ensureExtensionsIsMutable()V

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-static {p1, p2}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->access$1000(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->addRepeatedField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->addRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")TBuilderType;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->verifyContainingType(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)V

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->ensureExtensionsIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->addRepeatedField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->addRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->addRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->clear()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->clear()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->emptySet()Lcom/amazon/whispersync/google/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-super {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->clear()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->clear()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final clearExtension(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension<",
            "TMessageType;*>;)TBuilderType;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->verifyExtensionContainingType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;)V

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->ensureExtensionsIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->clearField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;)V

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->clearField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;",
            ")TBuilderType;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->verifyContainingType(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)V

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->ensureExtensionsIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->clearField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;)V

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->clearField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->clearField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->clone()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->clone()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->clone()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;
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

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->clone()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->clone()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;

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

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->clone()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected extensionsAreInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->access$1100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->getAllFields()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getExtension(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension<",
            "TMessageType;TType;>;)TType;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->verifyExtensionContainingType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;)V

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->getField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    sget-object v2, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->getMessageDefaultInstance()Lcom/amazon/whispersync/google/protobuf/Message;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->access$400(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {p1, v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->access$400(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtension(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;I)TType;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->verifyExtensionContainingType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;)V

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v1, v0, p2}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->getRepeatedField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->access$500(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtensionCount(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;)I"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->verifyExtensionContainingType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;)V

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->getRepeatedFieldCount(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result p1

    return p1
.end method

.method public getField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->verifyContainingType(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

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

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0

    :cond_2
    invoke-super {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->getField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->verifyContainingType(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->getRepeatedField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->getRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldCount(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)I
    .locals 1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->verifyContainingType(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->getRepeatedFieldCount(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->getRepeatedFieldCount(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)I

    move-result p1

    return p1
.end method

.method public final hasExtension(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension<",
            "TMessageType;TType;>;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->verifyExtensionContainingType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;)V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->hasField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result p1

    return p1
.end method

.method public hasField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->verifyContainingType(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->hasField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->hasField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result p1

    return p1
.end method

.method public isInitialized()Z
    .locals 1

    invoke-super {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->extensionsAreInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final mergeExtensionFields(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableMessage;)V
    .locals 1

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->ensureExtensionsIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableMessage;->access$600(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableMessage;)Lcom/amazon/whispersync/google/protobuf/FieldSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/FieldSet;)V

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-void
.end method

.method protected parseUnknownField(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2, p3, p0, p4}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFieldFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;Lcom/amazon/whispersync/google/protobuf/Message$Builder;I)Z

    move-result p1

    return p1
.end method

.method public final setExtension(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;ILjava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;ITType;)TBuilderType;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->verifyExtensionContainingType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;)V

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->ensureExtensionsIsMutable()V

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-static {p1, p3}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->access$1000(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p2, p1}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->setRepeatedField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExtension(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension<",
            "TMessageType;TType;>;TType;)TBuilderType;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->verifyExtensionContainingType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;)V

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->ensureExtensionsIsMutable()V

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-static {p1, p2}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;->access$900(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->setField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->setField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")TBuilderType;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->verifyContainingType(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)V

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->ensureExtensionsIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->setField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->setField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->setField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->setRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;",
            "I",
            "Ljava/lang/Object;",
            ")TBuilderType;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->verifyContainingType(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)V

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->ensureExtensionsIsMutable()V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->setRepeatedField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->setRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;->setRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object p1

    return-object p1
.end method
