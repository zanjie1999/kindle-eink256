.class public interface abstract Lcom/amazon/whispersync/communication/ByteBufferBackedMessage;
.super Ljava/lang/Object;
.source "ByteBufferBackedMessage.java"


# virtual methods
.method public abstract appendPayload(Ljava/io/InputStream;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract appendPayload(Lamazon/whispersync/communication/Message;)V
.end method

.method public abstract getByteBufferChain()Lcom/amazon/whispersync/communication/ByteBufferChain;
.end method

.method public abstract getByteBuffers()[Ljava/nio/ByteBuffer;
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
.end method
