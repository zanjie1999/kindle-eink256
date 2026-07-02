.class public Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;
.super Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;
.source "JsonParserDelegate.java"


# instance fields
.field protected delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    return-void
.end method


# virtual methods
.method public canUseSchema(Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;)Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->canUseSchema(Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;)Z

    move-result p1

    return p1
.end method

.method public clearCurrentToken()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->clearCurrentToken()V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->close()V

    return-void
.end method

.method public disable(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->disable(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    return-object p0
.end method

.method public enable(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->enable(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    return-object p0
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getBinaryValue(Lcom/amazon/whispersync/org/codehaus/jackson/Base64Variant;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getBinaryValue(Lcom/amazon/whispersync/org/codehaus/jackson/Base64Variant;)[B

    move-result-object p1

    return-object p1
.end method

.method public getBooleanValue()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getBooleanValue()Z

    move-result v0

    return v0
.end method

.method public getByteValue()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getByteValue()B

    move-result v0

    return v0
.end method

.method public getCodec()Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCodec()Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLocation()Lcom/amazon/whispersync/org/codehaus/jackson/JsonLocation;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentLocation()Lcom/amazon/whispersync/org/codehaus/jackson/JsonLocation;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getDoubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getEmbeddedObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFloatValue()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getFloatValue()F

    move-result v0

    return v0
.end method

.method public getInputSource()Ljava/lang/Object;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getInputSource()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getIntValue()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getLastClearedToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getLastClearedToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method public getLongValue()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumberType()Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getNumberType()Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;

    move-result-object v0

    return-object v0
.end method

.method public getNumberValue()Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getParsingContext()Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getParsingContext()Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;

    move-result-object v0

    return-object v0
.end method

.method public getShortValue()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getShortValue()S

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextCharacters()[C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getTextCharacters()[C

    move-result-object v0

    return-object v0
.end method

.method public getTextLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getTextLength()I

    move-result v0

    return v0
.end method

.method public getTextOffset()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getTextOffset()I

    move-result v0

    return v0
.end method

.method public getTokenLocation()Lcom/amazon/whispersync/org/codehaus/jackson/JsonLocation;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getTokenLocation()Lcom/amazon/whispersync/org/codehaus/jackson/JsonLocation;

    move-result-object v0

    return-object v0
.end method

.method public hasCurrentToken()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->hasCurrentToken()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;)Z
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result p1

    return p1
.end method

.method public nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method public setCodec(Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->setCodec(Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;)V

    return-void
.end method

.method public setSchema(Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->setSchema(Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;)V

    return-void
.end method

.method public skipChildren()Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->skipChildren()Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    return-object p0
.end method

.method public version()Lcom/amazon/whispersync/org/codehaus/jackson/Version;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->version()Lcom/amazon/whispersync/org/codehaus/jackson/Version;

    move-result-object v0

    return-object v0
.end method
