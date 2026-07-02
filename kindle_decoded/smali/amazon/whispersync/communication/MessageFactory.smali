.class public final Lamazon/whispersync/communication/MessageFactory;
.super Ljava/lang/Object;
.source "MessageFactory.java"


# direct methods
.method public static createMessage(Ljava/io/InputStream;)Lamazon/whispersync/communication/Message;
    .locals 1

    if-eqz p0, :cond_0

    .line 64
    new-instance v0, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 62
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "InputStream should not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createMessage(Ljava/nio/ByteBuffer;)Lamazon/whispersync/communication/Message;
    .locals 1

    if-eqz p0, :cond_0

    .line 37
    new-instance v0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    .line 35
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ByteBuffer should not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createMessage([Ljava/nio/ByteBuffer;)Lamazon/whispersync/communication/Message;
    .locals 1

    if-eqz p0, :cond_0

    .line 48
    array-length v0, p0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;-><init>([Ljava/nio/ByteBuffer;)V

    return-object v0

    .line 49
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ByteBuffer should not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
