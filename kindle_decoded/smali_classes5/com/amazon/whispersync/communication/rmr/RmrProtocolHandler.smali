.class public abstract Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;
.super Ljava/lang/Object;
.source "RmrProtocolHandler.java"


# static fields
.field public static final LAST_RESPONSE_MSG_TYPE:Ljava/lang/String; = "LST"

.field public static final NEW_STYLE_LAST_RESPONSE_MSG_TYPE:Ljava/lang/String; = "NLS"

.field public static final NEW_STYLE_REQUEST_MSG_TYPE:Ljava/lang/String; = "NRQ"

.field public static final NEW_STYLE_RESPONSE_RESPONSE_MSG_TYPE:Ljava/lang/String; = "NRP"

.field public static final REQUEST_MSG_TYPE:Ljava/lang/String; = "RQS"

.field public static final RESPONSE_RESPONSE_MSG_TYPE:Ljava/lang/String; = "RPY"

.field public static final SIZE_OF_MESSAGE_TYPE:I = 0x3

.field public static final START_OF_SEQUENCE_NUMBER:I

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;

.field private static final rmrMessageTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDelimiterSize:I

.field private final mStreamCodec:Lcom/amazon/whispersync/dp/framework/StreamCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.RmrProtocolHandler"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->rmrMessageTypes:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/dp/framework/StreamCodec;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->mStreamCodec:Lcom/amazon/whispersync/dp/framework/StreamCodec;

    .line 79
    invoke-interface {p1}, Lcom/amazon/whispersync/dp/framework/StreamCodec;->getSizeOfDelimiter()I

    move-result p1

    iput p1, p0, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->mDelimiterSize:I

    .line 80
    sget-object p1, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->rmrMessageTypes:Ljava/util/Set;

    const-string v0, "RQS"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object p1, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->rmrMessageTypes:Ljava/util/Set;

    const-string v0, "LST"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object p1, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->rmrMessageTypes:Ljava/util/Set;

    const-string v0, "RPY"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object p1, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->rmrMessageTypes:Ljava/util/Set;

    const-string v0, "NRQ"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object p1, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->rmrMessageTypes:Ljava/util/Set;

    const-string v0, "NLS"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object p1, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->rmrMessageTypes:Ljava/util/Set;

    const-string v0, "NRP"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private extractSequenceNumber(Ljava/io/InputStream;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation

    .line 259
    invoke-direct {p0, p2}, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->isNewStyleMessageType(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 260
    iget-object p2, p0, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->mStreamCodec:Lcom/amazon/whispersync/dp/framework/StreamCodec;

    invoke-interface {p2, p1}, Lcom/amazon/whispersync/dp/framework/StreamCodec;->decodeInt(Ljava/io/InputStream;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isNewStyleMessageType(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "NRQ"

    .line 269
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "NRP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "NLS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public decodeMessage(Lamazon/whispersync/communication/identity/EndpointIdentity;Lamazon/whispersync/communication/Message;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/CommunicationBaseException;
        }
    .end annotation

    .line 106
    :try_start_0
    invoke-interface {p2}, Lamazon/whispersync/communication/Message;->getPayload()Ljava/io/InputStream;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->mStreamCodec:Lcom/amazon/whispersync/dp/framework/StreamCodec;

    const/4 v2, 0x3

    invoke-interface {v1, v0, v2}, Lcom/amazon/whispersync/dp/framework/StreamCodec;->decodeAsciiString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v5

    .line 109
    sget-object v1, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->rmrMessageTypes:Ljava/util/Set;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->mStreamCodec:Lcom/amazon/whispersync/dp/framework/StreamCodec;

    invoke-interface {v1, v0}, Lcom/amazon/whispersync/dp/framework/StreamCodec;->decodeInt(Ljava/io/InputStream;)I

    move-result v6

    .line 111
    invoke-direct {p0, v0, v5}, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->extractSequenceNumber(Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v8

    .line 112
    sget-object v0, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "decodeMessage"

    const-string v3, "decoded message"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v9, "messageType"

    aput-object v9, v4, v7

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const/4 v7, 0x2

    const-string/jumbo v9, "requestId"

    aput-object v9, v4, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v2

    const/4 v2, 0x4

    const-string/jumbo v7, "sequenceNumber"

    aput-object v7, v4, v2

    const/4 v2, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v2

    invoke-virtual {v0, v1, v3, v4}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    invoke-interface {p2}, Lamazon/whispersync/communication/Message;->extractPayload()Lamazon/whispersync/communication/Message;

    move-result-object v7

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->handleRmrMessage(Lamazon/whispersync/communication/identity/EndpointIdentity;Ljava/lang/String;ILamazon/whispersync/communication/Message;I)V

    return-void

    .line 121
    :cond_0
    new-instance p1, Lcom/amazon/whispersync/communication/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown RMR message type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/communication/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/amazon/whispersync/dp/framework/CodecException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 124
    new-instance p2, Lcom/amazon/whispersync/communication/ProtocolException;

    invoke-direct {p2, p1}, Lcom/amazon/whispersync/communication/ProtocolException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public encodeLast(II)Lamazon/whispersync/communication/Message;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 195
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lamazon/whispersync/communication/MessageFactory;->createMessage(Ljava/nio/ByteBuffer;)Lamazon/whispersync/communication/Message;

    move-result-object v0

    const-string v1, "NLS"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->encodeMessage(Lamazon/whispersync/communication/Message;Ljava/lang/String;II)Lamazon/whispersync/communication/Message;

    move-result-object p1

    return-object p1
.end method

.method public encodeMessage(Lamazon/whispersync/communication/Message;Ljava/lang/String;II)Lamazon/whispersync/communication/Message;
    .locals 7

    .line 144
    sget-object v0, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "messageType"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v4, 0x2

    const-string/jumbo v5, "requestId"

    aput-object v5, v1, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v1, v5

    const/4 v4, 0x4

    const-string/jumbo v5, "sequenceNumber"

    aput-object v5, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v1, v5

    const-string v4, "encodeMessage"

    const-string v5, "beginning execution"

    invoke-virtual {v0, v4, v5, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    sget-object v0, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->rmrMessageTypes:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    invoke-direct {p0, p2}, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->isNewStyleMessageType(Ljava/lang/String;)Z

    move-result v0

    .line 154
    iget-object v1, p0, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->mStreamCodec:Lcom/amazon/whispersync/dp/framework/StreamCodec;

    invoke-interface {v1}, Lcom/amazon/whispersync/dp/framework/StreamCodec;->getSizeOfEncodedMaxInteger()I

    move-result v1

    .line 155
    iget v5, p0, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->mDelimiterSize:I

    add-int/lit8 v6, v5, 0x3

    add-int/2addr v6, v1

    if-eqz v0, :cond_0

    add-int/2addr v5, v1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    add-int/2addr v6, v5

    iget v1, p0, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->mDelimiterSize:I

    add-int/2addr v6, v1

    .line 160
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 161
    new-instance v5, Lcom/amazon/whispersync/dp/framework/ByteBufferOutputStream;

    invoke-direct {v5, v1}, Lcom/amazon/whispersync/dp/framework/ByteBufferOutputStream;-><init>(Ljava/nio/ByteBuffer;)V

    .line 163
    :try_start_0
    iget-object v6, p0, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->mStreamCodec:Lcom/amazon/whispersync/dp/framework/StreamCodec;

    invoke-interface {v6, p2, v5}, Lcom/amazon/whispersync/dp/framework/StreamCodec;->encodeAsciiString(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 164
    iget-object p2, p0, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->mStreamCodec:Lcom/amazon/whispersync/dp/framework/StreamCodec;

    invoke-interface {p2, p3, v5}, Lcom/amazon/whispersync/dp/framework/StreamCodec;->encodeInt(ILjava/io/OutputStream;)V

    if-eqz v0, :cond_1

    .line 167
    iget-object p2, p0, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->mStreamCodec:Lcom/amazon/whispersync/dp/framework/StreamCodec;

    invoke-interface {p2, p4, v5}, Lcom/amazon/whispersync/dp/framework/StreamCodec;->encodeInt(ILjava/io/OutputStream;)V
    :try_end_0
    .catch Lcom/amazon/whispersync/dp/framework/CodecException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 170
    sget-object p3, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p2, p4, v3

    const-string p2, "CodecException shouldn\'t be thrown as we are controling header size and encoding"

    invoke-virtual {p3, v4, p2, p4}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 177
    invoke-interface {p1, v1}, Lamazon/whispersync/communication/Message;->prependPayload(Ljava/nio/ByteBuffer;)V

    return-object p1

    .line 149
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected message type: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encodeOldStyleLast(I)Lamazon/whispersync/communication/Message;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 204
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lamazon/whispersync/communication/MessageFactory;->createMessage(Ljava/nio/ByteBuffer;)Lamazon/whispersync/communication/Message;

    move-result-object v0

    const-string v2, "LST"

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->encodeMessage(Lamazon/whispersync/communication/Message;Ljava/lang/String;II)Lamazon/whispersync/communication/Message;

    move-result-object p1

    return-object p1
.end method

.method public encodeOldStyleRequest(Lamazon/whispersync/communication/Message;I)Lamazon/whispersync/communication/Message;
    .locals 2

    const-string v0, "RQS"

    const/4 v1, 0x0

    .line 249
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->encodeMessage(Lamazon/whispersync/communication/Message;Ljava/lang/String;II)Lamazon/whispersync/communication/Message;

    move-result-object p1

    return-object p1
.end method

.method public encodeOldStyleResponse(Lamazon/whispersync/communication/Message;I)Lamazon/whispersync/communication/Message;
    .locals 2

    const-string v0, "RPY"

    const/4 v1, 0x0

    .line 227
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->encodeMessage(Lamazon/whispersync/communication/Message;Ljava/lang/String;II)Lamazon/whispersync/communication/Message;

    move-result-object p1

    return-object p1
.end method

.method public encodeRequest(Lamazon/whispersync/communication/Message;II)Lamazon/whispersync/communication/Message;
    .locals 1

    const-string v0, "NRQ"

    .line 244
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->encodeMessage(Lamazon/whispersync/communication/Message;Ljava/lang/String;II)Lamazon/whispersync/communication/Message;

    move-result-object p1

    return-object p1
.end method

.method public encodeResponse(Lamazon/whispersync/communication/Message;II)Lamazon/whispersync/communication/Message;
    .locals 1

    const-string v0, "NRP"

    .line 221
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->encodeMessage(Lamazon/whispersync/communication/Message;Ljava/lang/String;II)Lamazon/whispersync/communication/Message;

    move-result-object p1

    return-object p1
.end method

.method public getProtocolName()Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "R:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;->mStreamCodec:Lcom/amazon/whispersync/dp/framework/StreamCodec;

    invoke-interface {v1}, Lcom/amazon/whispersync/dp/framework/StreamCodec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract handleRmrMessage(Lamazon/whispersync/communication/identity/EndpointIdentity;Ljava/lang/String;ILamazon/whispersync/communication/Message;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/CommunicationBaseException;
        }
    .end annotation
.end method
