.class public Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReader;
.super Ljava/lang/Object;
.source "MessageReader.java"


# instance fields
.field private mEncryptedBlock:[B

.field private mEncryptedBlockLength:I

.field private mError:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

.field private mFlags:S

.field private mPacketType:S

.field private mParser:Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;

.field private mProtocolMajor:S

.field private mProtocolMinor:S


# direct methods
.method public constructor <init>([BJ)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;-><init>([BJ)V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReader;->mParser:Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;

    .line 20
    sget-object p1, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;->MessageReaderErrorEmptyBuffer:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReader;->mError:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    return-void
.end method

.method private readHeader()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReader;->mParser:Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;->readUInt8()S

    move-result v0

    iput-short v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReader;->mProtocolMajor:S

    .line 121
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReader;->mParser:Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;->readUInt8()S

    move-result v0

    iput-short v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReader;->mProtocolMinor:S

    .line 122
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReader;->mParser:Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;->readUInt8()S

    move-result v0

    iput-short v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReader;->mPacketType:S

    .line 123
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReader;->mParser:Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;->readUInt8()S

    move-result v0

    iput-short v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReader;->mFlags:S

    .line 124
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReader;->mParser:Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;->readUInt16()I

    move-result v0

    iput v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReader;->mEncryptedBlockLength:I

    .line 125
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReader;->mParser:Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;->readUInt16()I

    .line 126
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReader;->mParser:Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;

    iget v1, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReader;->mEncryptedBlockLength:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;->readByteArray(J)[B

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReader;->mEncryptedBlock:[B

    .line 128
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReader;->mParser:Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;->hasError()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;->MessageReaderErrorNone:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReader;->mError:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    :cond_0
    return-void
.end method


# virtual methods
.method public getGotoMessage()Lcom/amazon/whispersync/AmazonDevice/TPH/GotoMessage;
    .locals 10

    .line 60
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReader;->mError:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;->MessageReaderErrorNone:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReader;->getMessageType()Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;->PhoneHomeMessageTypeGoto:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    if-ne v0, v1, :cond_0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReader;->mEncryptedBlock:[B

    invoke-static {v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelper;->decryptWithPublicKey([B)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelperException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    new-instance v1, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;

    array-length v2, v0

    int-to-long v2, v2

    invoke-direct {v1, v0, v2, v3}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;-><init>([BJ)V

    const-wide/16 v2, 0x4

    .line 77
    invoke-virtual {v1, v2, v3}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;->readByteArray(J)[B

    move-result-object v5

    .line 78
    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;->readUInt16()I

    move-result v6

    .line 79
    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;->readUInt16()I

    move-result v0

    int-to-short v8, v0

    .line 80
    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;->readUInt16()I

    move-result v0

    int-to-short v7, v0

    .line 81
    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;->readUInt16()I

    move-result v0

    int-to-long v2, v0

    .line 82
    invoke-virtual {v1, v2, v3}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;->readCharArray(J)Ljava/lang/String;

    move-result-object v9

    .line 83
    new-instance v2, Lcom/amazon/whispersync/AmazonDevice/TPH/GotoMessage;

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/amazon/whispersync/AmazonDevice/TPH/GotoMessage;-><init>([BISSLjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;->MessageReaderErrorDecryptionFailure:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReader;->mError:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    :cond_0
    :goto_0
    return-object v2
.end method

.method public getMessageReaderError()Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReader;->mError:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    return-object v0
.end method

.method public getMessageType()Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;
    .locals 2

    .line 36
    iget-short v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReader;->mPacketType:S

    const/16 v1, 0x47

    if-eq v0, v1, :cond_1

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    .line 50
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;->PhoneHomeMessageTypeNone:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    goto :goto_0

    .line 45
    :cond_0
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;->PhoneHomeMessageTypePhoneHome:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    goto :goto_0

    .line 40
    :cond_1
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;->PhoneHomeMessageTypeGoto:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    :goto_0
    return-object v0
.end method

.method public getPhoneHomeMessage()Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessage;
    .locals 6

    .line 91
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReader;->mError:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;->MessageReaderErrorNone:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReader;->getMessageType()Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;->PhoneHomeMessageTypePhoneHome:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    if-ne v0, v1, :cond_0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReader;->mEncryptedBlock:[B

    invoke-static {v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelper;->decryptWithPublicKey([B)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelperException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    new-instance v1, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;

    array-length v2, v0

    int-to-long v2, v2

    invoke-direct {v1, v0, v2, v3}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;-><init>([BJ)V

    .line 107
    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;->readUInt16()I

    move-result v0

    .line 108
    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;->readUInt16()I

    move-result v2

    .line 109
    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;->readUInt16()I

    move-result v3

    int-to-long v4, v0

    .line 110
    invoke-virtual {v1, v4, v5}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;->readCharArray(J)Ljava/lang/String;

    move-result-object v0

    int-to-long v4, v2

    .line 111
    invoke-virtual {v1, v4, v5}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;->readCharArray(J)Ljava/lang/String;

    move-result-object v2

    int-to-long v3, v3

    .line 112
    invoke-virtual {v1, v3, v4}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;->readCharArray(J)Ljava/lang/String;

    move-result-object v1

    .line 113
    new-instance v3, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessage;

    invoke-direct {v3, v0, v2, v1}, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;->MessageReaderErrorDecryptionFailure:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReader;->mError:Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReaderError;

    :cond_0
    :goto_0
    return-object v2
.end method

.method public getServerMessage()Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage;
    .locals 2

    .line 136
    iget-short v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReader;->mPacketType:S

    const/16 v1, 0x47

    if-eq v0, v1, :cond_1

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReader;->getPhoneHomeMessage()Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessage;

    move-result-object v0

    return-object v0

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReader;->getGotoMessage()Lcom/amazon/whispersync/AmazonDevice/TPH/GotoMessage;

    move-result-object v0

    return-object v0
.end method

.method public read()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/TPH/MessageReader;->readHeader()V

    return-void
.end method
