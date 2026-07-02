.class public Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;
.super Ljava/lang/Object;
.source "ExternalTypeHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;,
        Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;
    }
.end annotation


# instance fields
.field private final _nameToPropertyIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final _properties:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

.field private final _tokens:[Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;

.field private final _typeIds:[Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iget-object v0, p1, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_properties:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_properties:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    .line 42
    iget-object p1, p1, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_nameToPropertyIndex:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_nameToPropertyIndex:Ljava/util/HashMap;

    .line 43
    array-length p1, v0

    .line 44
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    .line 45
    new-array p1, p1, [Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;

    return-void
.end method

.method protected constructor <init>([Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;Ljava/util/HashMap;[Ljava/lang/String;[Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_properties:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    .line 34
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_nameToPropertyIndex:Ljava/util/HashMap;

    .line 35
    iput-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;

    return-void
.end method


# virtual methods
.method protected final _deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCodec()Lcom/amazon/org/codehaus/jackson/ObjectCodec;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;-><init>(Lcom/amazon/org/codehaus/jackson/ObjectCodec;)V

    .line 147
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeStartArray()V

    .line 148
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    aget-object v1, v1, p4

    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;

    aget-object v1, v1, p4

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->asParser(Lcom/amazon/org/codehaus/jackson/JsonParser;)Lcom/amazon/org/codehaus/jackson/JsonParser;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 151
    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->copyCurrentStructure(Lcom/amazon/org/codehaus/jackson/JsonParser;)V

    .line 152
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeEndArray()V

    .line 154
    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->asParser(Lcom/amazon/org/codehaus/jackson/JsonParser;)Lcom/amazon/org/codehaus/jackson/JsonParser;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 156
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_properties:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object p4, v0, p4

    invoke-virtual {p4}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->deserializeAndSet(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    return-void
.end method

.method public complete(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_properties:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 124
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    .line 126
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    .line 130
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Missing external type id property \'"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_properties:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object p3, p3, v1

    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getTypePropertyName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\'"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 131
    :cond_1
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    .line 135
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_2
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_properties:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object p1

    .line 133
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing property \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' for external type id \'"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_properties:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getTypePropertyName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    :cond_3
    return-object p3
.end method

.method public handleToken(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_nameToPropertyIndex:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 95
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 96
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_properties:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object v2, v2, v0

    .line 98
    invoke-virtual {v2, p3}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;->hasTypePropertyName(Ljava/lang/String;)Z

    move-result p3

    const/4 v2, 0x1

    if-eqz p3, :cond_1

    .line 99
    iget-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v0

    .line 100
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->skipChildren()Lcom/amazon/org/codehaus/jackson/JsonParser;

    if-eqz p4, :cond_2

    .line 101
    iget-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;

    aget-object p3, p3, v0

    if-eqz p3, :cond_2

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 103
    :cond_1
    new-instance p3, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCodec()Lcom/amazon/org/codehaus/jackson/ObjectCodec;

    move-result-object v3

    invoke-direct {p3, v3}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;-><init>(Lcom/amazon/org/codehaus/jackson/ObjectCodec;)V

    .line 104
    invoke-virtual {p3, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->copyCurrentStructure(Lcom/amazon/org/codehaus/jackson/JsonParser;)V

    .line 105
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;

    aput-object p3, v3, v0

    if-eqz p4, :cond_2

    .line 106
    iget-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    aget-object p3, p3, v0

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 112
    invoke-virtual {p0, p1, p2, p4, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;I)V

    .line 114
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p2, p1, v0

    .line 115
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;

    aput-object p2, p1, v0

    :cond_3
    return v2
.end method

.method public handleTypePropertyValue(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_nameToPropertyIndex:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 66
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 67
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_properties:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object v2, v2, v0

    .line 68
    invoke-virtual {v2, p3}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;->hasTypePropertyName(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    return v1

    .line 71
    :cond_1
    iget-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v0

    const/4 p3, 0x1

    if-eqz p4, :cond_2

    .line 73
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    .line 76
    invoke-virtual {p0, p1, p2, p4, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;I)V

    .line 78
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p2, p1, v0

    .line 79
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;

    aput-object p2, p1, v0

    :cond_3
    return p3
.end method

.method public start()Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;
    .locals 1

    .line 49
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;

    invoke-direct {v0, p0}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;-><init>(Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;)V

    return-object v0
.end method
