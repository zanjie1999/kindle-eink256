.class public interface abstract Lcom/amazon/whispersync/google/protobuf/Message$Builder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
.implements Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation


# virtual methods
.method public abstract addRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
.end method

.method public abstract build()Lcom/amazon/whispersync/google/protobuf/Message;
.end method

.method public abstract buildPartial()Lcom/amazon/whispersync/google/protobuf/Message;
.end method

.method public abstract clear()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
.end method

.method public abstract clearField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
.end method

.method public abstract clone()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
.end method

.method public abstract getDescriptorForType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
.end method

.method public abstract mergeDelimitedFrom(Ljava/io/InputStream;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract mergeDelimitedFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract mergeFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation
.end method

.method public abstract mergeFrom(Lcom/amazon/whispersync/google/protobuf/ByteString;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation
.end method

.method public abstract mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
.end method

.method public abstract mergeFrom(Ljava/io/InputStream;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract mergeFrom(Ljava/io/InputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract mergeFrom([B)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation
.end method

.method public abstract mergeFrom([BII)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation
.end method

.method public abstract mergeFrom([BIILcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation
.end method

.method public abstract mergeFrom([BLcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation
.end method

.method public abstract mergeUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
.end method

.method public abstract newBuilderForField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
.end method

.method public abstract setField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
.end method

.method public abstract setRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
.end method

.method public abstract setUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
.end method
