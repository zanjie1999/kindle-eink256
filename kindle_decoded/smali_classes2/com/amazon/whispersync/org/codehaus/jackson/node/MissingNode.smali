.class public final Lcom/amazon/whispersync/org/codehaus/jackson/node/MissingNode;
.super Lcom/amazon/whispersync/org/codehaus/jackson/node/BaseJsonNode;
.source "MissingNode.java"


# static fields
.field private static final instance:Lcom/amazon/whispersync/org/codehaus/jackson/node/MissingNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/node/MissingNode;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/MissingNode;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/node/MissingNode;->instance:Lcom/amazon/whispersync/org/codehaus/jackson/node/MissingNode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/BaseJsonNode;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazon/whispersync/org/codehaus/jackson/node/MissingNode;
    .locals 1

    .line 28
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/node/MissingNode;->instance:Lcom/amazon/whispersync/org/codehaus/jackson/node/MissingNode;

    return-object v0
.end method


# virtual methods
.method public asBoolean(Z)Z
    .locals 0

    return p1
.end method

.method public asDouble(D)D
    .locals 0

    return-wide p1
.end method

.method public asInt(I)I
    .locals 0

    return p1
.end method

.method public asLong(J)J
    .locals 0

    return-wide p1
.end method

.method public asText()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public asToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;
    .locals 1

    .line 30
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->NOT_AVAILABLE:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

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

.method public isMissingNode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public path(I)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 0

    return-object p0
.end method

.method public path(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 0

    return-object p0
.end method

.method public final serialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeNull()V

    return-void
.end method

.method public serializeWithType(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 79
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeNull()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
