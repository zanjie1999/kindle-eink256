.class public abstract Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Lcom/amazon/whispersync/org/codehaus/jackson/Versioned;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;,
        Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;
    }
.end annotation


# static fields
.field private static final MAX_BYTE_I:I = 0xff

.field private static final MAX_SHORT_I:I = 0x7fff

.field private static final MIN_BYTE_I:I = -0x80

.field private static final MIN_SHORT_I:I = -0x8000


# instance fields
.field protected _currToken:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

.field protected _features:I

.field protected _lastClearedToken:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->_features:I

    return-void
.end method


# virtual methods
.method protected _constructError(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
    .locals 2

    .line 1433
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentLocation()Lcom/amazon/whispersync/org/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonLocation;)V

    return-object v0
.end method

.method public canUseSchema(Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public clearCurrentToken()V
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_0

    .line 759
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->_lastClearedToken:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    const/4 v0, 0x0

    .line 760
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    :cond_0
    return-void
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public configure(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;Z)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;
    .locals 0

    if-eqz p2, :cond_0

    .line 488
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->enableFeature(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;)V

    goto :goto_0

    .line 490
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->disableFeature(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;)V

    :goto_0
    return-object p0
.end method

.method public disable(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;
    .locals 1

    .line 475
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->_features:I

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->_features:I

    return-object p0
.end method

.method public disableFeature(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;)V
    .locals 0

    .line 518
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->disable(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    return-void
.end method

.method public enable(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;
    .locals 1

    .line 463
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->_features:I

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;->getMask()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->_features:I

    return-object p0
.end method

.method public enableFeature(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;)V
    .locals 0

    .line 513
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->enable(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    return-void
.end method

.method public abstract getBigIntegerValue()Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public getBinaryValue()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1158
    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/Base64Variants;->getDefaultVariant()Lcom/amazon/whispersync/org/codehaus/jackson/Base64Variant;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getBinaryValue(Lcom/amazon/whispersync/org/codehaus/jackson/Base64Variant;)[B

    move-result-object v0

    return-object v0
.end method

.method public abstract getBinaryValue(Lcom/amazon/whispersync/org/codehaus/jackson/Base64Variant;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public getBooleanValue()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1098
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1099
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_FALSE:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    .line 1100
    :cond_1
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current token ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") not of boolean type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentLocation()Lcom/amazon/whispersync/org/codehaus/jackson/JsonLocation;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonLocation;)V

    throw v0
.end method

.method public getByteValue()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 961
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v0

    const/16 v1, -0x80

    if-lt v0, v1, :cond_0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    int-to-byte v0, v0

    return v0

    .line 964
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Numeric value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") out of range of Java byte"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->_constructError(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method public abstract getCodec()Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;
.end method

.method public abstract getCurrentLocation()Lcom/amazon/whispersync/org/codehaus/jackson/JsonLocation;
.end method

.method public abstract getCurrentName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public abstract getDecimalValue()Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public abstract getDoubleValue()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public getEmbeddedObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getFloatValue()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public getInputSource()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getIntValue()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public getLastClearedToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;
    .locals 1

    .line 807
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->_lastClearedToken:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public abstract getLongValue()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public abstract getNumberType()Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public abstract getNumberValue()Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public abstract getParsingContext()Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;
.end method

.method public getShortValue()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 985
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v0

    const/16 v1, -0x8000

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7fff

    if-gt v0, v1, :cond_0

    int-to-short v0, v0

    return v0

    .line 987
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Numeric value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") out of range of Java short"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->_constructError(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method public abstract getText()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public abstract getTextCharacters()[C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public abstract getTextLength()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public abstract getTextOffset()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public abstract getTokenLocation()Lcom/amazon/whispersync/org/codehaus/jackson/JsonLocation;
.end method

.method public getValueAsBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1283
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getValueAsBoolean(Z)Z

    move-result v0

    return v0
.end method

.method public getValueAsBoolean(Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    return p1
.end method

.method public getValueAsDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1249
    invoke-virtual {p0, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getValueAsDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getValueAsDouble(D)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    return-wide p1
.end method

.method public getValueAsInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1181
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getValueAsInt(I)I

    move-result v0

    return v0
.end method

.method public getValueAsInt(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    return p1
.end method

.method public getValueAsLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1215
    invoke-virtual {p0, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getValueAsLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getValueAsLong(J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    return-wide p1
.end method

.method public hasCurrentToken()Z
    .locals 1

    .line 741
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTextCharacters()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isClosed()Z
.end method

.method public isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;)Z
    .locals 1

    .line 502
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->_features:I

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;->getMask()I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isExpectedStartArrayToken()Z
    .locals 2

    .line 830
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isFeatureEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;)Z
    .locals 0

    .line 523
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result p1

    return p1
.end method

.method public nextBooleanValue()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 672
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 676
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 674
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public nextFieldName(Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 593
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public nextIntValue(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 631
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result p1

    :cond_0
    return p1
.end method

.method public nextLongValue(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 650
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide p1

    :cond_0
    return-wide p1
.end method

.method public nextTextValue()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 612
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public abstract nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public nextValue()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 568
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 569
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 570
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public readValueAs(Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference<",
            "*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 1362
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCodec()Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1369
    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;->readValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1364
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No ObjectCodec defined for the parser, can not deserialize JSON into Java objects"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readValueAs(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 1333
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCodec()Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1337
    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;->readValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1335
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No ObjectCodec defined for the parser, can not deserialize JSON into Java objects"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readValueAsTree()Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 1414
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCodec()Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1418
    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;->readTree(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    move-result-object v0

    return-object v0

    .line 1416
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No ObjectCodec defined for the parser, can not deserialize JSON into JsonNode tree"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readValuesAs(Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference<",
            "*>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 1397
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCodec()Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1401
    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;->readValues(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    .line 1399
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No ObjectCodec defined for the parser, can not deserialize JSON into Java objects"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readValuesAs(Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 1381
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCodec()Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1385
    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;->readValues(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    .line 1383
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No ObjectCodec defined for the parser, can not deserialize JSON into Java objects"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public releaseBuffered(Ljava/io/OutputStream;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, -0x1

    return p1
.end method

.method public releaseBuffered(Ljava/io/Writer;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, -0x1

    return p1
.end method

.method public abstract setCodec(Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;)V
.end method

.method public setFeature(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;Z)V
    .locals 0

    .line 508
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->configure(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;Z)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    return-void
.end method

.method public setSchema(Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;)V
    .locals 3

    .line 329
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parser of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not support schema of type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;->getSchemaType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract skipChildren()Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public version()Lcom/amazon/whispersync/org/codehaus/jackson/Version;
    .locals 1

    .line 352
    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/Version;->unknownVersion()Lcom/amazon/whispersync/org/codehaus/jackson/Version;

    move-result-object v0

    return-object v0
.end method
