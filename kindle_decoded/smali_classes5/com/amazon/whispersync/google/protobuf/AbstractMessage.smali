.class public abstract Lcom/amazon/whispersync/google/protobuf/AbstractMessage;
.super Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/Message;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    }
.end annotation


# instance fields
.field private memoizedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/AbstractMessage;->memoizedSize:I

    return-void
.end method

.method protected static hashBoolean(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/16 p0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 p0, 0x4d5

    :goto_0
    return p0
.end method

.method protected static hashEnum(Lcom/amazon/whispersync/google/protobuf/Internal$EnumLite;)I
    .locals 0

    invoke-interface {p0}, Lcom/amazon/whispersync/google/protobuf/Internal$EnumLite;->getNumber()I

    move-result p0

    return p0
.end method

.method protected static hashEnumList(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/whispersync/google/protobuf/Internal$EnumLite;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/google/protobuf/Internal$EnumLite;

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {v1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage;->hashEnum(Lcom/amazon/whispersync/google/protobuf/Internal$EnumLite;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method protected static hashLong(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/amazon/whispersync/google/protobuf/Message;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Message;

    invoke-interface {p0}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getDescriptorForType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getDescriptorForType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-interface {p0}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getAllFields()Ljava/util/Map;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getAllFields()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getUnknownFields()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getUnknownFields()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getDescriptorForType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->getOptions()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v1

    invoke-interface {p0}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getAllFields()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v1, :cond_1

    invoke-virtual {v4}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v5

    sget-object v6, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v5, v6, :cond_1

    invoke-virtual {v4}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v4

    check-cast v3, Lcom/amazon/whispersync/google/protobuf/Message;

    invoke-static {v4, v3}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computeMessageSetExtensionSize(ILcom/amazon/whispersync/google/protobuf/MessageLite;)I

    move-result v3

    goto :goto_1

    :cond_1
    invoke-static {v4, v3}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->computeFieldSize(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getUnknownFields()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object v2

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;->getSerializedSizeAsMessageSet()I

    move-result v1

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-interface {p0}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getDescriptorForType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    invoke-interface {p0}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage;->hashFields(ILjava/util/Map;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    invoke-interface {p0}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getUnknownFields()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected hashFields(ILjava/util/Map;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x25

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v2

    add-int/2addr p1, v2

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v2

    sget-object v3, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-eq v2, v3, :cond_0

    mul-int/lit8 p1, p1, 0x35

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Ljava/util/List;

    mul-int/lit8 p1, p1, 0x35

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage;->hashEnumList(Ljava/util/List;)I

    move-result v0

    goto :goto_1

    :cond_1
    mul-int/lit8 p1, p1, 0x35

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/Internal$EnumLite;

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage;->hashEnum(Lcom/amazon/whispersync/google/protobuf/Internal$EnumLite;)I

    move-result v0

    goto :goto_1

    :cond_2
    return p1
.end method

.method public isInitialized()Z
    .locals 6

    invoke-interface {p0}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getDescriptorForType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isRequired()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0, v1}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->hasField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_1
    invoke-interface {p0}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v4

    sget-object v5, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v4, v5, :cond_2

    invoke-virtual {v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v3, :cond_4

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/google/protobuf/Message;

    invoke-interface {v3}, Lcom/amazon/whispersync/google/protobuf/MessageLiteOrBuilder;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_4
    check-cast v1, Lcom/amazon/whispersync/google/protobuf/Message;

    invoke-interface {v1}, Lcom/amazon/whispersync/google/protobuf/MessageLiteOrBuilder;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->printToString(Lcom/amazon/whispersync/google/protobuf/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getDescriptorForType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->getOptions()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    invoke-interface {p0}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getAllFields()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v4

    sget-object v5, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v3

    check-cast v2, Lcom/amazon/whispersync/google/protobuf/Message;

    invoke-virtual {p1, v3, v2}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeMessageSetExtension(ILcom/amazon/whispersync/google/protobuf/MessageLite;)V

    goto :goto_0

    :cond_0
    invoke-static {v3, v2, p1}, Lcom/amazon/whispersync/google/protobuf/FieldSet;->writeField(Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;)V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getUnknownFields()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;->writeAsMessageSetTo(Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;->writeTo(Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;)V

    :goto_1
    return-void
.end method
