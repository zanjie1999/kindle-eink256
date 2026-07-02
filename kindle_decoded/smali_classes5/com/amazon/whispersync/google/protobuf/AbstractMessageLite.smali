.class public abstract Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/MessageLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toByteArray()[B
    .locals 3

    :try_start_0
    invoke-interface {p0}, Lcom/amazon/whispersync/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->newInstance([B)Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/amazon/whispersync/google/protobuf/MessageLite;->writeTo(Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;)V

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->checkNoSpaceLeft()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toByteString()Lcom/amazon/whispersync/google/protobuf/ByteString;
    .locals 3

    :try_start_0
    invoke-interface {p0}, Lcom/amazon/whispersync/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->newCodedBuilder(I)Lcom/amazon/whispersync/google/protobuf/ByteString$CodedBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/ByteString$CodedBuilder;->getCodedOutput()Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/amazon/whispersync/google/protobuf/MessageLite;->writeTo(Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;)V

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/ByteString$CodedBuilder;->build()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a ByteString threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeDelimitedTo(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/amazon/whispersync/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v1}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computePreferredBufferSize(I)I

    move-result v1

    invoke-static {p1, v1}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    invoke-interface {p0, p1}, Lcom/amazon/whispersync/google/protobuf/MessageLite;->writeTo(Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;)V

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->flush()V

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/amazon/whispersync/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computePreferredBufferSize(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/amazon/whispersync/google/protobuf/MessageLite;->writeTo(Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;)V

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->flush()V

    return-void
.end method
