.class public final Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;
.super Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/DynamicMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder<",
        "Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private fields:Lcom/amazon/whispersync/google/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/google/protobuf/FieldSet<",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

.field private unknownFields:Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;


# direct methods
.method private constructor <init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->type:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->newFieldSet()Lcom/amazon/whispersync/google/protobuf/FieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->fields:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;Lcom/amazon/whispersync/google/protobuf/DynamicMessage$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->buildParsed()Lcom/amazon/whispersync/google/protobuf/DynamicMessage;

    move-result-object p0

    return-object p0
.end method

.method private buildParsed()Lcom/amazon/whispersync/google/protobuf/DynamicMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->type:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->fields:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    iget-object v3, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;Lcom/amazon/whispersync/google/protobuf/FieldSet;Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;Lcom/amazon/whispersync/google/protobuf/DynamicMessage$1;)V

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private verifyContainingType(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)V
    .locals 1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->type:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;
    .locals 1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->fields:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->addRepeatedField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->addRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/amazon/whispersync/google/protobuf/DynamicMessage;
    .locals 5

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->fields:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->type:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->fields:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    iget-object v3, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;Lcom/amazon/whispersync/google/protobuf/FieldSet;Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;Lcom/amazon/whispersync/google/protobuf/DynamicMessage$1;)V

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/amazon/whispersync/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/amazon/whispersync/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->build()Lcom/amazon/whispersync/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/amazon/whispersync/google/protobuf/DynamicMessage;
    .locals 5

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->fields:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->makeImmutable()V

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->type:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->fields:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    iget-object v3, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;Lcom/amazon/whispersync/google/protobuf/FieldSet;Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;Lcom/amazon/whispersync/google/protobuf/DynamicMessage$1;)V

    iput-object v4, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->fields:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    iput-object v4, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/amazon/whispersync/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/amazon/whispersync/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->buildPartial()Lcom/amazon/whispersync/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->fields:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->clear()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;
    .locals 1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->fields:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->clearField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;)V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->clearField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;
    .locals 3

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->type:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)V

    iget-object v1, v0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->fields:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->fields:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/FieldSet;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

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

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->fields:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->getAllFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DynamicMessage;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->type:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->getDefaultInstance(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->type:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 2

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->fields:Lcom/amazon/whispersync/google/protobuf/FieldSet;

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

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->fields:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->getRepeatedField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldCount(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->fields:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->getRepeatedFieldCount(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result p1

    return p1
.end method

.method public getUnknownFields()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->fields:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->hasField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result p1

    return p1
.end method

.method public isInitialized()Z
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->type:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->fields:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->access$600(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;Lcom/amazon/whispersync/google/protobuf/FieldSet;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;
    .locals 2

    instance-of v0, p1, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->access$200(Lcom/amazon/whispersync/google/protobuf/DynamicMessage;)Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->type:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->fields:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->access$300(Lcom/amazon/whispersync/google/protobuf/DynamicMessage;)Lcom/amazon/whispersync/google/protobuf/FieldSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/FieldSet;)V

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage;->access$400(Lcom/amazon/whispersync/google/protobuf/DynamicMessage;)Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->mergeUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(Message) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-super {p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->mergeUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->mergeUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public newBuilderForField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;
    .locals 2

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)V

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "newBuilderForField is only valid for fields with message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic newBuilderForField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->newBuilderForField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;
    .locals 1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->fields:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->setField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->setField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;
    .locals 1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)V

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->fields:Lcom/amazon/whispersync/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->setRepeatedField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->setRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;
    .locals 0

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;->setUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method
