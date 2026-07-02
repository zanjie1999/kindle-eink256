.class public abstract Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
.super Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/AbstractMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BuilderType:",
        "Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;",
        ">",
        "Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder<",
        "TBuilderType;>;",
        "Lcom/amazon/whispersync/google/protobuf/Message$Builder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;-><init>()V

    return-void
.end method

.method private static findMissingFields(Lcom/amazon/whispersync/google/protobuf/Message;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/google/protobuf/Message;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ""

    invoke-static {p0, v1, v0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->findMissingFields(Lcom/amazon/whispersync/google/protobuf/Message;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method private static findMissingFields(Lcom/amazon/whispersync/google/protobuf/Message;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/google/protobuf/Message;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getDescriptorForType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isRequired()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->hasField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v3

    sget-object v4, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whispersync/google/protobuf/Message;

    add-int/lit8 v5, v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->subMessagePrefix(Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, p2}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->findMissingFields(Lcom/amazon/whispersync/google/protobuf/Message;Ljava/lang/String;Ljava/util/List;)V

    move v3, v5

    goto :goto_2

    :cond_3
    invoke-interface {p0, v2}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->hasField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_2

    check-cast v1, Lcom/amazon/whispersync/google/protobuf/Message;

    const/4 v3, -0x1

    invoke-static {p1, v2, v3}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->subMessagePrefix(Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->findMissingFields(Lcom/amazon/whispersync/google/protobuf/Message;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method static mergeFieldFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;Lcom/amazon/whispersync/google/protobuf/Message$Builder;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p3}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->getDescriptorForType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->getOptions()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    sget v1, Lcom/amazon/whispersync/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    if-ne p4, v1, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeMessageSetExtensionFromCodedStream(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;Lcom/amazon/whispersync/google/protobuf/Message$Builder;)V

    return v2

    :cond_0
    invoke-static {p4}, Lcom/amazon/whispersync/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    invoke-static {p4}, Lcom/amazon/whispersync/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->isExtensionNumber(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    instance-of v4, p2, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;

    if-eqz v4, :cond_4

    move-object v4, p2

    check-cast v4, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;

    invoke-virtual {v4, v0, v3}, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;->findExtensionByNumber(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;I)Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, v0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    iget-object v5, v0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;->defaultInstance:Lcom/amazon/whispersync/google/protobuf/Message;

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v6, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v6, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Message-typed extension lacked default instance: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    move-object v0, v5

    move-object v5, v4

    goto :goto_2

    :cond_4
    :goto_1
    move-object v0, v5

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->findFieldByNumber(I)Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    move-object v7, v5

    move-object v5, v0

    move-object v0, v7

    :goto_2
    const/4 v4, 0x0

    if-nez v5, :cond_7

    :cond_6
    const/4 v1, 0x0

    const/4 v4, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {v5}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getLiteType()Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;Z)I

    move-result v6

    if-ne v1, v6, :cond_8

    const/4 v1, 0x0

    goto :goto_3

    :cond_8
    invoke-virtual {v5}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isPackable()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getLiteType()Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;Z)I

    move-result v6

    if-ne v1, v6, :cond_6

    const/4 v1, 0x1

    :goto_3
    if-eqz v4, :cond_9

    invoke-virtual {p1, p4, p0}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;->mergeFieldFrom(ILcom/amazon/whispersync/google/protobuf/CodedInputStream;)Z

    move-result p0

    return p0

    :cond_9
    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p1

    invoke-virtual {v5}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getLiteType()Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;

    move-result-object p2

    sget-object p4, Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;->ENUM:Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;

    if-ne p2, p4, :cond_b

    :goto_4
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result p2

    if-lez p2, :cond_c

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readEnum()I

    move-result p2

    invoke-virtual {v5}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;->findValueByNumber(I)Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object p2

    if-nez p2, :cond_a

    return v2

    :cond_a
    invoke-interface {p3, v5, p2}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->addRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    goto :goto_4

    :cond_b
    :goto_5
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result p2

    if-lez p2, :cond_c

    invoke-virtual {v5}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getLiteType()Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->readPrimitiveField(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p3, v5, p2}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->addRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    goto :goto_5

    :cond_c
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_a

    :cond_d
    sget-object p4, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    invoke-virtual {v5}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p4, p4, v1

    if-eq p4, v2, :cond_13

    const/4 v1, 0x2

    if-eq p4, v1, :cond_10

    const/4 p2, 0x3

    if-eq p4, p2, :cond_e

    invoke-virtual {v5}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getLiteType()Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->readPrimitiveField(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_9

    :cond_e
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readEnum()I

    move-result p0

    invoke-virtual {v5}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;->findValueByNumber(I)Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object p2

    if-nez p2, :cond_f

    invoke-virtual {p1, v3, p0}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;

    return v2

    :cond_f
    move-object p0, p2

    goto :goto_9

    :cond_10
    if-eqz v0, :cond_11

    invoke-interface {v0}, Lcom/amazon/whispersync/google/protobuf/Message;->newBuilderForType()Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    move-result-object p1

    goto :goto_6

    :cond_11
    invoke-interface {p3, v5}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->newBuilderForField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    move-result-object p1

    :goto_6
    invoke-virtual {v5}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result p4

    if-nez p4, :cond_12

    invoke-interface {p3, v5}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/amazon/whispersync/google/protobuf/Message;

    invoke-interface {p1, p4}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    :cond_12
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readMessage(Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_8

    :cond_13
    if-eqz v0, :cond_14

    invoke-interface {v0}, Lcom/amazon/whispersync/google/protobuf/Message;->newBuilderForType()Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    move-result-object p1

    goto :goto_7

    :cond_14
    invoke-interface {p3, v5}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->newBuilderForField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    move-result-object p1

    :goto_7
    invoke-virtual {v5}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result p4

    if-nez p4, :cond_15

    invoke-interface {p3, v5}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/amazon/whispersync/google/protobuf/Message;

    invoke-interface {p1, p4}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    :cond_15
    invoke-virtual {v5}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result p4

    invoke-virtual {p0, p4, p1, p2}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readGroup(ILcom/amazon/whispersync/google/protobuf/MessageLite$Builder;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)V

    :goto_8
    invoke-interface {p1}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->build()Lcom/amazon/whispersync/google/protobuf/Message;

    move-result-object p0

    :goto_9
    invoke-virtual {v5}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-interface {p3, v5, p0}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->addRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    goto :goto_a

    :cond_16
    invoke-interface {p3, v5, p0}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->setField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    :goto_a
    return v2
.end method

.method private static mergeMessageSetExtensionFromCodedStream(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;Lcom/amazon/whispersync/google/protobuf/Message$Builder;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p3}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->getDescriptorForType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readTag()I

    move-result v6

    if-nez v6, :cond_1

    goto/16 :goto_2

    :cond_1
    sget v7, Lcom/amazon/whispersync/google/protobuf/WireFormat;->MESSAGE_SET_TYPE_ID_TAG:I

    if-ne v6, v7, :cond_6

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    if-eqz v2, :cond_0

    instance-of v6, p2, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;

    if-eqz v6, :cond_2

    move-object v6, p2

    check-cast v6, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;

    invoke-virtual {v6, v0, v2}, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;->findExtensionByNumber(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;I)Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v1

    :goto_1
    if-eqz v6, :cond_5

    iget-object v3, v6, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    iget-object v4, v6, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;->defaultInstance:Lcom/amazon/whispersync/google/protobuf/Message;

    invoke-interface {v4}, Lcom/amazon/whispersync/google/protobuf/Message;->newBuilderForType()Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    move-result-object v4

    invoke-interface {p3, v3}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/whispersync/google/protobuf/Message;

    if-eqz v6, :cond_3

    invoke-interface {v4, v6}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/amazon/whispersync/google/protobuf/ByteString;->newInput()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/amazon/whispersync/google/protobuf/CodedInputStream;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    move-object v5, v1

    :cond_4
    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_0

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->newBuilder()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field$Builder;->addLengthDelimited(Lcom/amazon/whispersync/google/protobuf/ByteString;)Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field$Builder;->build()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;->mergeField(ILcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;)Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;

    move-object v5, v1

    goto :goto_0

    :cond_6
    sget v7, Lcom/amazon/whispersync/google/protobuf/WireFormat;->MESSAGE_SET_MESSAGE_TAG:I

    if-ne v6, v7, :cond_9

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v5

    goto :goto_0

    :cond_7
    if-nez v3, :cond_8

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->newBuilder()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field$Builder;->addLengthDelimited(Lcom/amazon/whispersync/google/protobuf/ByteString;)Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field$Builder;->build()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;->mergeField(ILcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;)Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    :cond_8
    invoke-virtual {p0, v3, p2}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readMessage(Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    :cond_9
    invoke-virtual {p0, v6}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v6

    if-nez v6, :cond_0

    :goto_2
    sget p1, Lcom/amazon/whispersync/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->checkLastTagWas(I)V

    if-eqz v3, :cond_a

    invoke-interface {v3}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->build()Lcom/amazon/whispersync/google/protobuf/Message;

    move-result-object p0

    invoke-interface {p3, v4, p0}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->setField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    :cond_a
    return-void
.end method

.method protected static newUninitializedMessageException(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/UninitializedMessageException;
    .locals 1

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/UninitializedMessageException;

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->findMissingFields(Lcom/amazon/whispersync/google/protobuf/Message;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/google/protobuf/UninitializedMessageException;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static subMessagePrefix(Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x28

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 p0, -0x1

    if-eq p2, p0, :cond_1

    const/16 p0, 0x5b

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const/16 p0, 0x2e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    invoke-interface {p0, v1}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->clearField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public abstract clone()Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

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

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Z

    move-result p1

    return p1
.end method

.method public mergeFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/google/protobuf/ByteString;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;)Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    return-object p1
.end method

.method public mergeFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/google/protobuf/ByteString;",
            "Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    return-object p1
.end method

.method public mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/google/protobuf/CodedInputStream;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;->getEmptyRegistry()Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/google/protobuf/CodedInputStream;",
            "Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getUnknownFields()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, v0, p2, p0, v1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFieldFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;Lcom/amazon/whispersync/google/protobuf/Message$Builder;I)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->setUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/google/protobuf/Message;",
            ")TBuilderType;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getDescriptorForType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-interface {p0}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->getDescriptorForType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    if-ne v0, v1, :cond_5

    invoke-interface {p1}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v2}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->addRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v3

    sget-object v4, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v3, v4, :cond_2

    invoke-interface {p0, v2}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/google/protobuf/Message;

    invoke-interface {v3}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/Message;

    move-result-object v4

    if-ne v3, v4, :cond_3

    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-interface {v3}, Lcom/amazon/whispersync/google/protobuf/Message;->newBuilderForType()Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/google/protobuf/Message;

    invoke-interface {v3, v1}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->build()Lcom/amazon/whispersync/google/protobuf/Message;

    move-result-object v1

    :goto_2
    invoke-interface {p0, v2, v1}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->setField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getUnknownFields()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    return-object p0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(Message) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public mergeFrom(Ljava/io/InputStream;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    return-object p1
.end method

.method public mergeFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    return-object p1
.end method

.method public mergeFrom([B)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;->mergeFrom([B)Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    return-object p1
.end method

.method public mergeFrom([BII)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;->mergeFrom([BII)Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    return-object p1
.end method

.method public mergeFrom([BIILcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;->mergeFrom([BIILcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    return-object p1
.end method

.method public mergeFrom([BLcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;->mergeFrom([BLcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;)Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;)Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([B)Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom([BII)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom([BIILcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BLcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([B)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom([BII)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom([BIILcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BLcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;)Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;)Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([B)Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom([BII)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom([BIILcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BLcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;",
            ")TBuilderType;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getUnknownFields()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->setUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method
