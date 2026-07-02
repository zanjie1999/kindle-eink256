.class public interface abstract Lamazon/whispersync/communication/Message;
.super Ljava/lang/Object;
.source "Message.java"


# virtual methods
.method public abstract extractPayload()Lamazon/whispersync/communication/Message;
.end method

.method public abstract getPayload()Ljava/io/InputStream;
.end method

.method public abstract getPayloadSize()I
.end method

.method public abstract prependPayload(Ljava/nio/ByteBuffer;)V
.end method
