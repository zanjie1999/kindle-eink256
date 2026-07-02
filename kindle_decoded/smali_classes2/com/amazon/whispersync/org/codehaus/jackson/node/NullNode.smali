.class public final Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;
.super Lcom/amazon/whispersync/org/codehaus/jackson/node/ValueNode;
.source "NullNode.java"


# static fields
.field public static final instance:Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;->instance:Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ValueNode;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;->instance:Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;

    return-object v0
.end method


# virtual methods
.method public asDouble(D)D
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public asInt(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public asLong(J)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public asText()Ljava/lang/String;
    .locals 1

    const-string v0, "null"

    return-object v0
.end method

.method public asToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isNull()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final serialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 50
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeNull()V

    return-void
.end method
