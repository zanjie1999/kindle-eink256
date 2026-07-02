.class public interface abstract Lcom/amazon/whispersync/dp/framework/StreamCodec;
.super Ljava/lang/Object;
.source "StreamCodec.java"


# virtual methods
.method public abstract decodeAsciiString(Ljava/io/InputStream;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation
.end method

.method public abstract decodeBool(Ljava/io/InputStream;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation
.end method

.method public abstract decodeByteArray(Ljava/io/InputStream;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation
.end method

.method public abstract decodeInt(Ljava/io/InputStream;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation
.end method

.method public abstract decodeLong(Ljava/io/InputStream;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation
.end method

.method public abstract decodeString(Ljava/io/InputStream;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation
.end method

.method public abstract encodeAsciiString(Ljava/lang/String;Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation
.end method

.method public abstract encodeBool(ZLjava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation
.end method

.method public abstract encodeByteArray([BLjava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation
.end method

.method public abstract encodeInt(ILjava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation
.end method

.method public abstract encodeLong(JLjava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation
.end method

.method public abstract encodeString(Ljava/lang/String;Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSizeOfBool()I
.end method

.method public abstract getSizeOfDelimiter()I
.end method

.method public abstract getSizeOfEncodedMaxInteger()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSizeOfInt()I
.end method

.method public abstract getSizeOfLengthEncoding()I
.end method

.method public abstract getSizeOfLong()I
.end method
