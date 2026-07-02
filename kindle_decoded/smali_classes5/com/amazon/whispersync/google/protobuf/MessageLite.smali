.class public interface abstract Lcom/amazon/whispersync/google/protobuf/MessageLite;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    }
.end annotation


# virtual methods
.method public abstract getSerializedSize()I
.end method

.method public abstract newBuilderForType()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
.end method

.method public abstract toBuilder()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
.end method

.method public abstract toByteArray()[B
.end method

.method public abstract toByteString()Lcom/amazon/whispersync/google/protobuf/ByteString;
.end method

.method public abstract writeDelimitedTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeTo(Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
