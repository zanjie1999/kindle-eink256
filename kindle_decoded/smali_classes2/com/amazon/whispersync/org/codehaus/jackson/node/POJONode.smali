.class public final Lcom/amazon/whispersync/org/codehaus/jackson/node/POJONode;
.super Lcom/amazon/whispersync/org/codehaus/jackson/node/ValueNode;
.source "POJONode.java"


# instance fields
.field protected final _value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ValueNode;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public asBoolean(Z)Z
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 56
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :cond_0
    return p1
.end method

.method public asDouble(D)D
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 83
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    :cond_0
    return-wide p1
.end method

.method public asInt(I)I
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 65
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    :cond_0
    return p1
.end method

.method public asLong(J)J
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 74
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    :cond_0
    return-wide p1
.end method

.method public asText()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public asToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;
    .locals 1

    .line 26
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 127
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/whispersync/org/codehaus/jackson/node/POJONode;

    if-eq v2, v3, :cond_2

    return v1

    .line 130
    :cond_2
    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/node/POJONode;

    .line 131
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 132
    iget-object p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 134
    :cond_4
    iget-object p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBinaryValue()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    .line 36
    check-cast v0, [B

    return-object v0

    .line 38
    :cond_0
    invoke-super {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;->getBinaryValue()[B

    move-result-object v0

    return-object v0
.end method

.method public getPojo()Ljava/lang/Object;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isPojo()Z
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

    .line 98
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    if-nez p2, :cond_0

    .line 99
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeNull()V

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeObject(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
