.class public Lcom/fasterxml/jackson/databind/node/POJONode;
.super Lcom/fasterxml/jackson/databind/node/ValueNode;
.source "POJONode.java"


# instance fields
.field protected final _value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/ValueNode;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected _pojoEquals(Lcom/fasterxml/jackson/databind/node/POJONode;)Z
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 151
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 153
    :cond_1
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public asText()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 139
    :cond_1
    instance-of v1, p1, Lcom/fasterxml/jackson/databind/node/POJONode;

    if-eqz v1, :cond_2

    .line 140
    check-cast p1, Lcom/fasterxml/jackson/databind/node/POJONode;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/POJONode;->_pojoEquals(Lcom/fasterxml/jackson/databind/node/POJONode;)Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 110
    :cond_0
    instance-of v1, v0, Lcom/fasterxml/jackson/databind/JsonSerializable;

    if-eqz v1, :cond_1

    .line 111
    check-cast v0, Lcom/fasterxml/jackson/databind/JsonSerializable;

    invoke-interface {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonSerializable;->serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObject(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    instance-of v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    new-array v1, v3, [Ljava/lang/Object;

    .line 164
    check-cast v0, [B

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "(binary value of %d bytes)"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 166
    :cond_0
    instance-of v1, v0, Lcom/fasterxml/jackson/databind/util/RawValue;

    if-eqz v1, :cond_1

    new-array v1, v3, [Ljava/lang/Object;

    .line 167
    check-cast v0, Lcom/fasterxml/jackson/databind/util/RawValue;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/RawValue;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "(raw value \'%s\')"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 169
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
