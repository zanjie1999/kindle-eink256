.class public abstract Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;
.super Ljava/lang/Object;
.source "JsonGenerator.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Lcom/amazon/whispersync/org/codehaus/jackson/Versioned;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;
    }
.end annotation


# instance fields
.field protected _cfgPrettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canUseSchema(Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public configure(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;Z)Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;
    .locals 0

    if-eqz p2, :cond_0

    .line 288
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->enable(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;

    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->disable(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;

    :goto_0
    return-object p0
.end method

.method public abstract copyCurrentEvent(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract copyCurrentStructure(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract disable(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;
.end method

.method public disableFeature(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 329
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->disable(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;

    return-void
.end method

.method public abstract enable(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;
.end method

.method public enableFeature(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 324
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->enable(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;

    return-void
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getCharacterEscapes()Lcom/amazon/whispersync/org/codehaus/jackson/io/CharacterEscapes;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getCodec()Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;
.end method

.method public getHighestEscapedChar()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getOutputContext()Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;
.end method

.method public getOutputTarget()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)Z
.end method

.method public isFeatureEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 339
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result p1

    return p1
.end method

.method public setCharacterEscapes(Lcom/amazon/whispersync/org/codehaus/jackson/io/CharacterEscapes;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;
    .locals 0

    return-object p0
.end method

.method public abstract setCodec(Lcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;
.end method

.method public setFeature(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 334
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->configure(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;Z)Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;

    return-void
.end method

.method public setHighestNonEscapedChar(I)Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;
    .locals 0

    return-object p0
.end method

.method public setPrettyPrinter(Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    return-object p0
.end method

.method public setSchema(Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;)V
    .locals 3

    .line 204
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generator of type "

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

.method public abstract useDefaultPrettyPrinter()Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;
.end method

.method public version()Lcom/amazon/whispersync/org/codehaus/jackson/Version;
    .locals 1

    .line 227
    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/Version;->unknownVersion()Lcom/amazon/whispersync/org/codehaus/jackson/Version;

    move-result-object v0

    return-object v0
.end method

.method public final writeArrayFieldStart(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 1053
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeStartArray()V

    return-void
.end method

.method public abstract writeBinary(Lcom/amazon/whispersync/org/codehaus/jackson/Base64Variant;[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public writeBinary([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 752
    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/Base64Variants;->getDefaultVariant()Lcom/amazon/whispersync/org/codehaus/jackson/Base64Variant;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeBinary(Lcom/amazon/whispersync/org/codehaus/jackson/Base64Variant;[BII)V

    return-void
.end method

.method public writeBinary([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 740
    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/Base64Variants;->getDefaultVariant()Lcom/amazon/whispersync/org/codehaus/jackson/Base64Variant;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeBinary(Lcom/amazon/whispersync/org/codehaus/jackson/Base64Variant;[BII)V

    return-void
.end method

.method public final writeBinaryField(Ljava/lang/String;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 1033
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1034
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeBinary([B)V

    return-void
.end method

.method public abstract writeBoolean(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public final writeBooleanField(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 927
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 928
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeBoolean(Z)V

    return-void
.end method

.method public abstract writeEndArray()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeEndObject()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public writeFieldName(Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 535
    invoke-interface {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    return-void
.end method

.method public writeFieldName(Lcom/amazon/whispersync/org/codehaus/jackson/io/SerializedString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 516
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/io/SerializedString;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    return-void
.end method

.method public abstract writeFieldName(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeNull()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public final writeNullField(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 942
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 943
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeNull()V

    return-void
.end method

.method public abstract writeNumber(D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeNumber(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeNumber(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeNumber(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeNumber(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public abstract writeNumber(Ljava/math/BigDecimal;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeNumber(Ljava/math/BigInteger;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public final writeNumberField(Ljava/lang/String;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 986
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 987
    invoke-virtual {p0, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeNumber(D)V

    return-void
.end method

.method public final writeNumberField(Ljava/lang/String;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 1001
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1002
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeNumber(F)V

    return-void
.end method

.method public final writeNumberField(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 956
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 957
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeNumber(I)V

    return-void
.end method

.method public final writeNumberField(Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 971
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 972
    invoke-virtual {p0, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeNumber(J)V

    return-void
.end method

.method public final writeNumberField(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 1017
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1018
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeNumber(Ljava/math/BigDecimal;)V

    return-void
.end method

.method public abstract writeObject(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public final writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 1089
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1090
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method public final writeObjectFieldStart(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 1073
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    return-void
.end method

.method public abstract writeRaw(C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeRaw(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeRaw(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeRaw([CII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeRawUTF8String([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeRawValue(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeRawValue(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeRawValue([CII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeStartArray()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeStartObject()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public writeString(Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 579
    invoke-interface {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public abstract writeString(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeString([CII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public writeStringField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 912
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 913
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public abstract writeTree(Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract writeUTF8String([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method
