.class public abstract Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.super Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "TMessageType;>;>",
        "Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite;",
        "Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder<",
        "TMessageType;>;"
    }
.end annotation


# instance fields
.field private final extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/google/protobuf/FieldSet<",
            "Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->newFieldSet()Lcom/amazon/whispersync/google/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder<",
            "TMessageType;*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->access$000(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)Lcom/amazon/whispersync/google/protobuf/FieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessage;)Lcom/amazon/whispersync/google/protobuf/FieldSet;
    .locals 0

    iget-object p0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    return-object p0
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

    invoke-interface {p0}, Lcom/amazon/whispersync/google/protobuf/MessageLiteOrBuilder;->getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/MessageLite;

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
.method protected extensionsAreInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected extensionsSerializedSize()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->getSerializedSize()I

    move-result v0

    return v0
.end method

.method protected extensionsSerializedSizeAsMessageSet()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->getMessageSetSerializedSize()I

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

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

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

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

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

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

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

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->hasField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result p1

    return p1
.end method

.method protected newExtensionWriter()Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessage<",
            "TMessageType;>.ExtensionWriter;"
        }
    .end annotation

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;-><init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessage;ZLcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$1;)V

    return-object v0
.end method

.method protected newMessageSetExtensionWriter()Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessage<",
            "TMessageType;>.ExtensionWriter;"
        }
    .end annotation

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;-><init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtendableMessage;ZLcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$1;)V

    return-object v0
.end method
