.class public Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter;
.super Ljava/lang/Object;
.source "MessageWriter.java"


# static fields
.field private static final PROTOCOL_MAJOR:B = 0x3t

.field private static final PROTOCOL_MINOR:B = 0x0t

.field private static final UNUSED_FLAGS:S = 0x8s


# instance fields
.field private final mCommunicationInterface:Lcom/amazon/whispersync/AmazonDevice/TPH/CommunicationInterface;

.field private mError:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;

.field private final mPacket:Lcom/amazon/whispersync/AmazonDevice/TPH/Packet;

.field private mPacketBinaryData:[B


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/AmazonDevice/TPH/CommunicationInterface;Lcom/amazon/whispersync/AmazonDevice/TPH/Packet;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 28
    invoke-virtual {p2}, Lcom/amazon/whispersync/AmazonDevice/TPH/Packet;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter;->mCommunicationInterface:Lcom/amazon/whispersync/AmazonDevice/TPH/CommunicationInterface;

    .line 34
    iput-object p2, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter;->mPacket:Lcom/amazon/whispersync/AmazonDevice/TPH/Packet;

    .line 35
    sget-object p1, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;->MessageWriterErrorUnknown:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter;->mError:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter;->mPacketBinaryData:[B

    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Provided packet is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Packet cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Communication interface cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeGoodByePacket()Z
    .locals 5

    .line 106
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;

    invoke-direct {v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;-><init>()V

    .line 107
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter;->mPacket:Lcom/amazon/whispersync/AmazonDevice/TPH/Packet;

    check-cast v1, Lcom/amazon/whispersync/AmazonDevice/TPH/GoodByeMessage;

    .line 108
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter;->writeProtocolInfo(Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;)V

    const/16 v2, 0x42

    .line 109
    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->writeUInt8(S)V

    const/16 v2, 0x8

    .line 110
    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->writeUInt8(S)V

    .line 112
    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/TPH/GoodByeMessage;->getCookieLength()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, v3}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->writeUInt16(I)V

    .line 113
    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/TPH/GoodByeMessage;->getCookie()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/TPH/GoodByeMessage;->getCookieLength()J

    move-result-wide v3

    long-to-int v1, v3

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->writeCharArray(Ljava/lang/String;J)V

    .line 114
    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->getPacketString()[B

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter;->mPacketBinaryData:[B

    .line 115
    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->hasError()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private writeHelloPacket()Z
    .locals 7

    .line 120
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;

    invoke-direct {v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;-><init>()V

    .line 121
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter;->mPacket:Lcom/amazon/whispersync/AmazonDevice/TPH/Packet;

    check-cast v1, Lcom/amazon/whispersync/AmazonDevice/TPH/HelloMessage;

    .line 123
    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/TPH/HelloMessage;->isValid()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 129
    :cond_0
    new-instance v2, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;

    invoke-direct {v2}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;-><init>()V

    .line 130
    iget-object v4, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter;->mCommunicationInterface:Lcom/amazon/whispersync/AmazonDevice/TPH/CommunicationInterface;

    invoke-interface {v4}, Lcom/amazon/whispersync/AmazonDevice/TPH/CommunicationInterface;->getMAC()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->writeBytes([B)V

    .line 131
    iget-object v4, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter;->mCommunicationInterface:Lcom/amazon/whispersync/AmazonDevice/TPH/CommunicationInterface;

    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/TPH/HelloMessage;->getSessionTimeoutSec()S

    move-result v5

    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/TPH/HelloMessage;->getSilentPeriodSec()S

    move-result v6

    invoke-direct {p0, v4, v5, v6, v2}, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter;->writeInterfaceAndSessionInfo(Lcom/amazon/whispersync/AmazonDevice/TPH/CommunicationInterface;SSLcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;)V

    .line 135
    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/TPH/HelloMessage;->getDeviceSerialNumberLength()J

    move-result-wide v4

    long-to-int v5, v4

    invoke-virtual {v2, v5}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->writeUInt16(I)V

    .line 136
    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/TPH/HelloMessage;->getDeviceTypeLength()J

    move-result-wide v4

    long-to-int v5, v4

    invoke-virtual {v2, v5}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->writeUInt16(I)V

    .line 137
    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/TPH/HelloMessage;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/TPH/HelloMessage;->getDeviceSerialNumberLength()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->writeCharArray(Ljava/lang/String;J)V

    .line 138
    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/TPH/HelloMessage;->getDeviceType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/TPH/HelloMessage;->getDeviceTypeLength()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->writeCharArray(Ljava/lang/String;J)V

    .line 143
    :try_start_0
    invoke-virtual {v2}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->getPacketString()[B

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelper;->encryptWithPublicKey([B)[B

    move-result-object v1
    :try_end_0
    .catch Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelperException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter;->writeProtocolInfo(Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;)V

    const/16 v2, 0x48

    .line 153
    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->writeUInt8(S)V

    const/16 v2, 0x8

    .line 154
    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->writeUInt8(S)V

    .line 155
    array-length v2, v1

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->writeUInt16(I)V

    .line 156
    invoke-virtual {v0, v3}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->writeUInt16(I)V

    .line 157
    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->writeBytes([B)V

    .line 158
    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->getPacketString()[B

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter;->mPacketBinaryData:[B

    .line 159
    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->hasError()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 147
    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;->MessageWriterErrorUnknown:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;

    iput-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter;->mError:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;

    .line 148
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method private writeInterfaceAndSessionInfo(Lcom/amazon/whispersync/AmazonDevice/TPH/CommunicationInterface;SSLcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;)V
    .locals 1

    .line 173
    invoke-interface {p1}, Lcom/amazon/whispersync/AmazonDevice/TPH/CommunicationInterface;->getInterfaceType()S

    move-result v0

    invoke-virtual {p4, v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->writeUInt16(I)V

    .line 174
    invoke-virtual {p4, p3}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->writeUInt16(I)V

    .line 175
    invoke-virtual {p4, p2}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->writeUInt16(I)V

    .line 176
    invoke-interface {p1}, Lcom/amazon/whispersync/AmazonDevice/TPH/CommunicationInterface;->getMCC()S

    move-result p2

    invoke-virtual {p4, p2}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->writeUInt16(I)V

    .line 177
    invoke-interface {p1}, Lcom/amazon/whispersync/AmazonDevice/TPH/CommunicationInterface;->getMNC()S

    move-result p1

    invoke-virtual {p4, p1}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->writeUInt16(I)V

    return-void
.end method

.method private writePacket()Z
    .locals 2

    .line 63
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter$1;->$SwitchMap$com$AmazonDevice$TPH$PhoneHomeMessageType:[I

    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter;->mPacket:Lcom/amazon/whispersync/AmazonDevice/TPH/Packet;

    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/TPH/Packet;->getType()Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x4e

    .line 87
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter;->writePhoneHomeResponsePacket(B)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x41

    .line 82
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter;->writePhoneHomeResponsePacket(B)Z

    move-result v0

    goto :goto_0

    .line 77
    :cond_2
    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter;->writeStillHerePacket()Z

    move-result v0

    goto :goto_0

    .line 72
    :cond_3
    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter;->writeHelloPacket()Z

    move-result v0

    goto :goto_0

    .line 67
    :cond_4
    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter;->writeGoodByePacket()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_5

    .line 99
    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;->MessageWriterErrorNone:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;

    iput-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter;->mError:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;

    :cond_5
    return v0
.end method

.method private writePhoneHomeResponsePacket(B)Z
    .locals 4

    .line 199
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;

    invoke-direct {v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;-><init>()V

    .line 200
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter;->mPacket:Lcom/amazon/whispersync/AmazonDevice/TPH/Packet;

    check-cast v1, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeResponseMessage;

    .line 201
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter;->writeProtocolInfo(Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;)V

    int-to-short p1, p1

    .line 202
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->writeUInt8(S)V

    const/16 p1, 0x8

    .line 203
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->writeUInt8(S)V

    .line 204
    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeResponseMessage;->getCookieLength()J

    move-result-wide v2

    long-to-int p1, v2

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->writeUInt16(I)V

    .line 205
    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeResponseMessage;->getTagLength()J

    move-result-wide v2

    long-to-int p1, v2

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->writeUInt16(I)V

    .line 206
    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeResponseMessage;->getCookie()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeResponseMessage;->getCookieLength()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->writeCharArray(Ljava/lang/String;J)V

    .line 207
    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeResponseMessage;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeResponseMessage;->getTagLength()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->writeCharArray(Ljava/lang/String;J)V

    .line 208
    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->getPacketString()[B

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter;->mPacketBinaryData:[B

    .line 209
    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->hasError()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private writeProtocolInfo(Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;)V
    .locals 1

    const/4 v0, 0x3

    .line 164
    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->writeUInt8(S)V

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->writeUInt8(S)V

    return-void
.end method

.method private writeStillHerePacket()Z
    .locals 5

    .line 182
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;

    invoke-direct {v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;-><init>()V

    .line 183
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter;->mPacket:Lcom/amazon/whispersync/AmazonDevice/TPH/Packet;

    check-cast v1, Lcom/amazon/whispersync/AmazonDevice/TPH/StillHereMessage;

    .line 184
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter;->writeProtocolInfo(Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;)V

    const/16 v2, 0x53

    .line 185
    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->writeUInt8(S)V

    const/16 v2, 0x8

    .line 186
    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->writeUInt8(S)V

    .line 187
    iget-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter;->mCommunicationInterface:Lcom/amazon/whispersync/AmazonDevice/TPH/CommunicationInterface;

    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/TPH/StillHereMessage;->getSessionTimeoutSec()S

    move-result v3

    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/TPH/StillHereMessage;->getSilentPeriodSec()S

    move-result v4

    invoke-direct {p0, v2, v3, v4, v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter;->writeInterfaceAndSessionInfo(Lcom/amazon/whispersync/AmazonDevice/TPH/CommunicationInterface;SSLcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;)V

    .line 191
    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/TPH/StillHereMessage;->getCookieLength()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, v3}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->writeUInt16(I)V

    .line 192
    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/TPH/StillHereMessage;->getCookie()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/TPH/StillHereMessage;->getCookieLength()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->writeCharArray(Ljava/lang/String;J)V

    .line 193
    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->getPacketString()[B

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter;->mPacketBinaryData:[B

    .line 194
    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->hasError()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public getMessagePacketData()[B
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter;->mPacketBinaryData:[B

    if-nez v0, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter;->writePacket()Z

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter;->mError:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;->MessageWriterErrorNone:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter;->mPacketBinaryData:[B

    return-object v0
.end method

.method public getMessageWriterError()Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriter;->mError:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageWriterError;

    return-object v0
.end method
