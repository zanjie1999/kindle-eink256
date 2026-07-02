.class public final Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$NumberSerializer;
.super Lcom/amazon/org/codehaus/jackson/map/ser/std/ScalarSerializerBase;
.source "StdSerializers.java"


# annotations
.annotation runtime Lcom/amazon/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NumberSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/org/codehaus/jackson/map/ser/std/ScalarSerializerBase<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field public static final instance:Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$NumberSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 239
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$NumberSerializer;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$NumberSerializer;-><init>()V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$NumberSerializer;->instance:Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$NumberSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 241
    const-class v0, Ljava/lang/Number;

    invoke-direct {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/ser/std/ScalarSerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getSchema(Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/amazon/org/codehaus/jackson/JsonNode;
    .locals 0

    const-string p1, "number"

    const/4 p2, 0x1

    .line 275
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;->createSchemaNode(Ljava/lang/String;Z)Lcom/amazon/org/codehaus/jackson/node/ObjectNode;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Ljava/lang/Number;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 248
    instance-of p3, p1, Ljava/math/BigDecimal;

    if-eqz p3, :cond_0

    .line 249
    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNumber(Ljava/math/BigDecimal;)V

    goto :goto_1

    .line 250
    :cond_0
    instance-of p3, p1, Ljava/math/BigInteger;

    if-eqz p3, :cond_1

    .line 251
    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNumber(Ljava/math/BigInteger;)V

    goto :goto_1

    .line 256
    :cond_1
    instance-of p3, p1, Ljava/lang/Integer;

    if-eqz p3, :cond_2

    .line 257
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNumber(I)V

    goto :goto_1

    .line 258
    :cond_2
    instance-of p3, p1, Ljava/lang/Long;

    if-eqz p3, :cond_3

    .line 259
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNumber(J)V

    goto :goto_1

    .line 260
    :cond_3
    instance-of p3, p1, Ljava/lang/Double;

    if-eqz p3, :cond_4

    .line 261
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNumber(D)V

    goto :goto_1

    .line 262
    :cond_4
    instance-of p3, p1, Ljava/lang/Float;

    if-eqz p3, :cond_5

    .line 263
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNumber(F)V

    goto :goto_1

    .line 264
    :cond_5
    instance-of p3, p1, Ljava/lang/Byte;

    if-nez p3, :cond_7

    instance-of p3, p1, Ljava/lang/Short;

    if-eqz p3, :cond_6

    goto :goto_0

    .line 268
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNumber(Ljava/lang/String;)V

    goto :goto_1

    .line 265
    :cond_7
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNumber(I)V

    :goto_1
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 235
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$NumberSerializer;->serialize(Ljava/lang/Number;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method
