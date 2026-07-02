.class Lcom/google/protobuf/MessageReflection$ExtensionAdapter;
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
    name = "ExtensionAdapter"
.end annotation


# instance fields
.field private final extensions:Lcom/google/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/FieldSet<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/protobuf/FieldSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/FieldSet<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    iput-object p1, p0, Lcom/google/protobuf/MessageReflection$ExtensionAdapter;->extensions:Lcom/google/protobuf/FieldSet;

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$ExtensionAdapter;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-object p0
.end method

.method public findExtensionByNumber(Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Descriptors$Descriptor;I)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    .locals 0

    .line 632
    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/ExtensionRegistry;->findImmutableExtensionByNumber(Lcom/google/protobuf/Descriptors$Descriptor;I)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object p1

    return-object p1
.end method

.method public getContainerType()Lcom/google/protobuf/MessageReflection$MergeTarget$ContainerType;
    .locals 1

    .line 620
    sget-object v0, Lcom/google/protobuf/MessageReflection$MergeTarget$ContainerType;->EXTENSION_SET:Lcom/google/protobuf/MessageReflection$MergeTarget$ContainerType;

    return-object v0
.end method

.method public getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$ExtensionAdapter;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getUtf8Validation(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/WireFormat$Utf8Validation;
    .locals 0

    .line 701
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->needsUtf8Check()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 702
    sget-object p1, Lcom/google/protobuf/WireFormat$Utf8Validation;->STRICT:Lcom/google/protobuf/WireFormat$Utf8Validation;

    return-object p1

    .line 705
    :cond_0
    sget-object p1, Lcom/google/protobuf/WireFormat$Utf8Validation;->LOOSE:Lcom/google/protobuf/WireFormat$Utf8Validation;

    return-object p1
.end method

.method public hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$ExtensionAdapter;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->hasField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Z

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

    .line 644
    invoke-interface {p4}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object p4

    .line 645
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 646
    invoke-virtual {p0, p3}, Lcom/google/protobuf/MessageReflection$ExtensionAdapter;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Message;

    if-eqz v0, :cond_0

    .line 648
    invoke-interface {p4, v0}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;

    .line 651
    :cond_0
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result p3

    invoke-virtual {p1, p3, p4, p2}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 652
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

    .line 663
    invoke-interface {p4}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object p4

    .line 664
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 665
    invoke-virtual {p0, p3}, Lcom/google/protobuf/MessageReflection$ExtensionAdapter;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/protobuf/Message;

    if-eqz p3, :cond_0

    .line 667
    invoke-interface {p4, p3}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;

    .line 670
    :cond_0
    invoke-virtual {p1, p4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 671
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

    .line 681
    invoke-interface {p4}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object p4

    .line 682
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 683
    invoke-virtual {p0, p3}, Lcom/google/protobuf/MessageReflection$ExtensionAdapter;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/protobuf/Message;

    if-eqz p3, :cond_0

    .line 685
    invoke-interface {p4, p3}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;

    .line 688
    :cond_0
    invoke-interface {p4, p1, p2}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;

    .line 689
    invoke-interface {p4}, Lcom/google/protobuf/Message$Builder;->buildPartial()Lcom/google/protobuf/Message;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$ExtensionAdapter;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-object p0
.end method
