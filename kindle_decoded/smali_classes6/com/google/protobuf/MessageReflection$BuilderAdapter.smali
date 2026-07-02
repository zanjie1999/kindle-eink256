.class Lcom/google/protobuf/MessageReflection$BuilderAdapter;
.super Ljava/lang/Object;
.source "MessageReflection.java"

# interfaces
.implements Lcom/google/protobuf/MessageReflection$MergeTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/MessageReflection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BuilderAdapter"
.end annotation


# instance fields
.field private final builder:Lcom/google/protobuf/Message$Builder;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Message$Builder;)V
    .locals 0

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    iput-object p1, p0, Lcom/google/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/google/protobuf/Message$Builder;

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/google/protobuf/Message$Builder;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Message$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    return-object p0
.end method

.method public findExtensionByNumber(Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Descriptors$Descriptor;I)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    .locals 0

    .line 446
    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/ExtensionRegistry;->findImmutableExtensionByNumber(Lcom/google/protobuf/Descriptors$Descriptor;I)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object p1

    return-object p1
.end method

.method public getContainerType()Lcom/google/protobuf/MessageReflection$MergeTarget$ContainerType;
    .locals 1

    .line 434
    sget-object v0, Lcom/google/protobuf/MessageReflection$MergeTarget$ContainerType;->MESSAGE:Lcom/google/protobuf/MessageReflection$MergeTarget$ContainerType;

    return-object v0
.end method

.method public getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/google/protobuf/Message$Builder;

    invoke-interface {v0, p1}, Lcom/google/protobuf/MessageOrBuilder;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getUtf8Validation(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/WireFormat$Utf8Validation;
    .locals 1

    .line 535
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->needsUtf8Check()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    sget-object p1, Lcom/google/protobuf/WireFormat$Utf8Validation;->STRICT:Lcom/google/protobuf/WireFormat$Utf8Validation;

    return-object p1

    .line 539
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/google/protobuf/Message$Builder;

    instance-of p1, p1, Lcom/google/protobuf/GeneratedMessage$Builder;

    if-eqz p1, :cond_1

    .line 541
    sget-object p1, Lcom/google/protobuf/WireFormat$Utf8Validation;->LAZY:Lcom/google/protobuf/WireFormat$Utf8Validation;

    return-object p1

    .line 543
    :cond_1
    sget-object p1, Lcom/google/protobuf/WireFormat$Utf8Validation;->LOOSE:Lcom/google/protobuf/WireFormat$Utf8Validation;

    return-object p1
.end method

.method public hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/google/protobuf/Message$Builder;

    invoke-interface {v0, p1}, Lcom/google/protobuf/MessageOrBuilder;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result p1

    return p1
.end method

.method public parseGroup(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/Message;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 460
    invoke-interface {p4}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object p4

    goto :goto_0

    .line 462
    :cond_0
    iget-object p4, p0, Lcom/google/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/google/protobuf/Message$Builder;

    invoke-interface {p4, p3}, Lcom/google/protobuf/Message$Builder;->newBuilderForField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;

    move-result-object p4

    .line 464
    :goto_0
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 465
    invoke-virtual {p0, p3}, Lcom/google/protobuf/MessageReflection$BuilderAdapter;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Message;

    if-eqz v0, :cond_1

    .line 467
    invoke-interface {p4, v0}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;

    .line 470
    :cond_1
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result p3

    invoke-virtual {p1, p3, p4, p2}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 471
    invoke-interface {p4}, Lcom/google/protobuf/Message$Builder;->buildPartial()Lcom/google/protobuf/Message;

    move-result-object p1

    return-object p1
.end method

.method public parseMessage(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/Message;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 484
    invoke-interface {p4}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object p4

    goto :goto_0

    .line 486
    :cond_0
    iget-object p4, p0, Lcom/google/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/google/protobuf/Message$Builder;

    invoke-interface {p4, p3}, Lcom/google/protobuf/Message$Builder;->newBuilderForField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;

    move-result-object p4

    .line 488
    :goto_0
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 489
    invoke-virtual {p0, p3}, Lcom/google/protobuf/MessageReflection$BuilderAdapter;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/protobuf/Message;

    if-eqz p3, :cond_1

    .line 491
    invoke-interface {p4, p3}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;

    .line 494
    :cond_1
    invoke-virtual {p1, p4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 495
    invoke-interface {p4}, Lcom/google/protobuf/Message$Builder;->buildPartial()Lcom/google/protobuf/Message;

    move-result-object p1

    return-object p1
.end method

.method public parseMessageFromBytes(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/Message;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 508
    invoke-interface {p4}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object p4

    goto :goto_0

    .line 510
    :cond_0
    iget-object p4, p0, Lcom/google/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/google/protobuf/Message$Builder;

    invoke-interface {p4, p3}, Lcom/google/protobuf/Message$Builder;->newBuilderForField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;

    move-result-object p4

    .line 512
    :goto_0
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 513
    invoke-virtual {p0, p3}, Lcom/google/protobuf/MessageReflection$BuilderAdapter;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/protobuf/Message;

    if-eqz p3, :cond_1

    .line 515
    invoke-interface {p4, p3}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;

    .line 518
    :cond_1
    invoke-interface {p4, p1, p2}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;

    .line 519
    invoke-interface {p4}, Lcom/google/protobuf/Message$Builder;->buildPartial()Lcom/google/protobuf/Message;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/google/protobuf/Message$Builder;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Message$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    return-object p0
.end method
