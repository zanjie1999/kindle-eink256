.class public abstract Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
.source "StdDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$StackTraceElementDeserializer;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$SqlDateDeserializer;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$BigIntegerDeserializer;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$BigDecimalDeserializer;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$NumberDeserializer;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$DoubleDeserializer;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$FloatDeserializer;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$LongDeserializer;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$IntegerDeserializer;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$CharacterDeserializer;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$ShortDeserializer;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$ByteDeserializer;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$BooleanDeserializer;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$PrimitiveOrWrapperDeserializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final _valueClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    return-void
.end method

.method protected static final parseDouble(Ljava/lang/String;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const-string v0, "2.2250738585072012e-308"

    .line 593
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x10000000000000L

    return-wide v0

    .line 596
    :cond_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected final _parseBoolean(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 135
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 136
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 137
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 139
    :cond_0
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_FALSE:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 140
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 143
    :cond_1
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_4

    .line 145
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getNumberType()Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;->INT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;

    if-ne v0, v1, :cond_3

    .line 146
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object p1

    .line 148
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_parseBooleanFromNumber(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 150
    :cond_4
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_5

    .line 151
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1

    .line 154
    :cond_5
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_9

    .line 155
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "true"

    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 157
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_6
    const-string v0, "false"

    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 160
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 162
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_8

    .line 163
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->getEmptyValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1

    .line 165
    :cond_8
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v0, "only \"true\" or \"false\" recognized"

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 168
    :cond_9
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method protected final _parseBooleanFromNumber(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 174
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getNumberType()Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;

    move-result-object p2

    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;->LONG:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;

    if-ne p2, v0, :cond_1

    .line 175
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 178
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    const-string p2, "0.0"

    .line 179
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "0"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 182
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 180
    :cond_3
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method protected final _parseBooleanPrimitive(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 99
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 100
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 103
    :cond_0
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_FALSE:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    return v3

    .line 106
    :cond_1
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_2

    return v3

    .line 110
    :cond_2
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_5

    .line 112
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getNumberType()Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;->INT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$NumberType;

    if-ne v0, v1, :cond_4

    .line 113
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 115
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_parseBooleanFromNumber(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Z

    move-result p1

    return p1

    .line 118
    :cond_5
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_9

    .line 119
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "true"

    .line 120
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    :cond_6
    const-string v0, "false"

    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    .line 126
    :cond_7
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v0, "only \"true\" or \"false\" recognized"

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 124
    :cond_8
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 129
    :cond_9
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method protected _parseByte(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Byte;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 188
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 189
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_3

    .line 193
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 196
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->getEmptyValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    return-object p1

    .line 200
    :cond_1
    invoke-static {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/io/NumberInput;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, -0x80

    if-lt p1, v0, :cond_2

    const/16 v0, 0xff

    if-gt p1, v0, :cond_2

    int-to-byte p1, p1

    .line 209
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 207
    :cond_2
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v0, "overflow, value can not be represented as 8-bit value"

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 202
    :catch_0
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v0, "not a valid Byte value"

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 211
    :cond_3
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, p1, :cond_4

    .line 212
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    return-object p1

    .line 214
    :cond_4
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 190
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getByteValue()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method protected _parseDate(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 559
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 560
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 561
    new-instance p2, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 563
    :cond_0
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 564
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    return-object p1

    .line 566
    :cond_1
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_3

    .line 571
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 572
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 573
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->getEmptyValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    return-object p1

    .line 575
    :cond_2
    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 577
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a valid representation (error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 580
    :cond_3
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method protected final _parseDouble(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Double;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 472
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 474
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_a

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    .line 477
    :cond_0
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_8

    .line 478
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 479
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 480
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->getEmptyValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    return-object p1

    :cond_1
    const/4 v0, 0x0

    .line 482
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_5

    const/16 v1, 0x49

    if-eq v0, v1, :cond_3

    const/16 v1, 0x4e

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "NaN"

    .line 489
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    .line 490
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v0, "Infinity"

    .line 484
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "INF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    const-wide/high16 p1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 485
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v0, "-Infinity"

    .line 494
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "-INF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 500
    :cond_6
    :goto_0
    :try_start_0
    invoke-static {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 502
    :catch_0
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v0, "not a valid Double value"

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    :cond_7
    :goto_1
    const-wide/high16 p1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 495
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 504
    :cond_8
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, p1, :cond_9

    .line 505
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    return-object p1

    .line 508
    :cond_9
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 475
    :cond_a
    :goto_2
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getDoubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method protected final _parseDoublePrimitive(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 515
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 517
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_a

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    .line 521
    :cond_0
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_8

    .line 522
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 523
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-wide v2

    :cond_1
    const/4 v0, 0x0

    .line 526
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_5

    const/16 v1, 0x49

    if-eq v0, v1, :cond_3

    const/16 v1, 0x4e

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "NaN"

    .line 533
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    return-wide p1

    :cond_3
    const-string v0, "Infinity"

    .line 528
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "INF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    const-wide/high16 p1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide p1

    :cond_5
    const-string v0, "-Infinity"

    .line 538
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "-INF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 544
    :cond_6
    :goto_0
    :try_start_0
    invoke-static {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    .line 546
    :catch_0
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v0, "not a valid double value"

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    :cond_7
    :goto_1
    const-wide/high16 p1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide p1

    .line 548
    :cond_8
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, p1, :cond_9

    return-wide v2

    .line 552
    :cond_9
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 518
    :cond_a
    :goto_2
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getDoubleValue()D

    move-result-wide p1

    return-wide p1
.end method

.method protected final _parseFloat(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Float;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 387
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 389
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_a

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    .line 393
    :cond_0
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_8

    .line 394
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 395
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 396
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->getEmptyValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    return-object p1

    :cond_1
    const/4 v0, 0x0

    .line 398
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_5

    const/16 v1, 0x49

    if-eq v0, v1, :cond_3

    const/16 v1, 0x4e

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "NaN"

    .line 405
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 406
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v0, "Infinity"

    .line 400
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "INF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    const/high16 p1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 401
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v0, "-Infinity"

    .line 410
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "-INF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 416
    :cond_6
    :goto_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 418
    :catch_0
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v0, "not a valid Float value"

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    :cond_7
    :goto_1
    const/high16 p1, -0x800000    # Float.NEGATIVE_INFINITY

    .line 411
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 420
    :cond_8
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, p1, :cond_9

    .line 421
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    return-object p1

    .line 424
    :cond_9
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 390
    :cond_a
    :goto_2
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getFloatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method protected final _parseFloatPrimitive(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 430
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 432
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_a

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    .line 435
    :cond_0
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    .line 436
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 437
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 440
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_5

    const/16 v1, 0x49

    if-eq v0, v1, :cond_3

    const/16 v1, 0x4e

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "NaN"

    .line 447
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    :cond_3
    const-string v0, "Infinity"

    .line 442
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "INF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    const/high16 p1, 0x7f800000    # Float.POSITIVE_INFINITY

    return p1

    :cond_5
    const-string v0, "-Infinity"

    .line 452
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "-INF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 458
    :cond_6
    :goto_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 460
    :catch_0
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v0, "not a valid float value"

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    :cond_7
    :goto_1
    const/high16 p1, -0x800000    # Float.NEGATIVE_INFINITY

    return p1

    .line 462
    :cond_8
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, p1, :cond_9

    return v2

    .line 466
    :cond_9
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 433
    :cond_a
    :goto_2
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getFloatValue()F

    move-result p1

    return p1
.end method

.method protected final _parseIntPrimitive(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 262
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 265
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_6

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 268
    :cond_0
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 272
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 274
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_2

    .line 276
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    long-to-int p1, v0

    return p1

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overflow: numeric value ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") out of range of int ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 p1, -0x80000000

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7fffffff

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    :cond_2
    if-nez v0, :cond_3

    return v2

    .line 286
    :cond_3
    invoke-static {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/io/NumberInput;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 288
    :catch_0
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v0, "not a valid int value"

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 291
    :cond_4
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, p1, :cond_5

    return v2

    .line 295
    :cond_5
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 266
    :cond_6
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result p1

    return p1
.end method

.method protected final _parseInteger(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Integer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 301
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 302
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_6

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 305
    :cond_0
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_4

    .line 306
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 308
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_2

    .line 310
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    long-to-int p1, v0

    .line 315
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overflow: numeric value ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") out of range of Integer ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 p1, -0x80000000

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7fffffff

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    :cond_2
    if-nez v0, :cond_3

    .line 318
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->getEmptyValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    .line 320
    :cond_3
    invoke-static {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/io/NumberInput;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 322
    :catch_0
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v0, "not a valid Integer value"

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 325
    :cond_4
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, p1, :cond_5

    .line 326
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    .line 329
    :cond_5
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 303
    :cond_6
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected final _parseLong(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 335
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 338
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 342
    :cond_0
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_2

    .line 344
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 345
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 346
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->getEmptyValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1

    .line 349
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/io/NumberInput;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 351
    :catch_0
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v0, "not a valid Long value"

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 353
    :cond_2
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, p1, :cond_3

    .line 354
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1

    .line 357
    :cond_3
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 339
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected final _parseLongPrimitive(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 363
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 364
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 368
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 369
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-wide v2

    .line 373
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/io/NumberInput;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    .line 375
    :catch_0
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v0, "not a valid long value"

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 377
    :cond_2
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, p1, :cond_3

    return-wide v2

    .line 380
    :cond_3
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 365
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide p1

    return-wide p1
.end method

.method protected _parseShort(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Short;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 220
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 221
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_3

    .line 225
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 228
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 230
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->getEmptyValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    return-object p1

    .line 232
    :cond_1
    invoke-static {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/io/NumberInput;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, -0x8000

    if-lt p1, v0, :cond_2

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_2

    int-to-short p1, p1

    .line 240
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    .line 238
    :cond_2
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v0, "overflow, value can not be represented as 16-bit value"

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 234
    :catch_0
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v0, "not a valid Short value"

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 242
    :cond_3
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, p1, :cond_4

    .line 243
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    return-object p1

    .line 245
    :cond_4
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 222
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getShortValue()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method protected final _parseShortPrimitive(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 251
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_parseIntPrimitive(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)I

    move-result p1

    const/16 v0, -0x8000

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_0

    int-to-short p1, p1

    return p1

    .line 254
    :cond_0
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v0, "overflow, value can not be represented as 16-bit value"

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public deserializeWithType(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 87
    invoke-virtual {p3, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;->deserializeTypedFromAny(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected findDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 620
    invoke-virtual {p2, p1, p3, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;->findValueDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    return-object p1
.end method

.method public getValueClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getValueType()Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleUnknownProperty(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 652
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->getValueClass()Ljava/lang/Class;

    move-result-object p3

    .line 655
    :cond_0
    invoke-virtual {p2, p1, p0, p3, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->handleUnknownProperty(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 659
    :cond_1
    invoke-virtual {p0, p2, p3, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->reportUnknownProperty(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    .line 664
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->skipChildren()Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    return-void
.end method

.method protected isDefaultSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JacksonStdImpl;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected reportUnknownProperty(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 672
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 673
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->unknownFieldException(Ljava/lang/Object;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1
.end method
