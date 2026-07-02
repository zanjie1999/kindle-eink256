.class public Lcom/amazon/org/codehaus/jackson/map/MappingIterator;
.super Ljava/lang/Object;
.source "MappingIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# static fields
.field protected static final EMPTY_ITERATOR:Lcom/amazon/org/codehaus/jackson/map/MappingIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/org/codehaus/jackson/map/MappingIterator<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field protected final _closeParser:Z

.field protected final _context:Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;

.field protected final _deserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected _hasNextChecked:Z

.field protected _parser:Lcom/amazon/org/codehaus/jackson/JsonParser;

.field protected final _type:Lcom/amazon/org/codehaus/jackson/type/JavaType;

.field protected final _updatedValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 18
    new-instance v7, Lcom/amazon/org/codehaus/jackson/map/MappingIterator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/amazon/org/codehaus/jackson/map/MappingIterator;-><init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;ZLjava/lang/Object;)V

    sput-object v7, Lcom/amazon/org/codehaus/jackson/map/MappingIterator;->EMPTY_ITERATOR:Lcom/amazon/org/codehaus/jackson/map/MappingIterator;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/JsonParser;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;)V"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 51
    invoke-direct/range {v0 .. v6}, Lcom/amazon/org/codehaus/jackson/map/MappingIterator;-><init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;ZLjava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;ZLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/JsonParser;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;Z",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/MappingIterator;->_type:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    .line 62
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/MappingIterator;->_parser:Lcom/amazon/org/codehaus/jackson/JsonParser;

    .line 63
    iput-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/MappingIterator;->_context:Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;

    .line 64
    iput-object p4, p0, Lcom/amazon/org/codehaus/jackson/map/MappingIterator;->_deserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object p1

    sget-object p3, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne p1, p3, :cond_0

    .line 70
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getParsingContext()Lcom/amazon/org/codehaus/jackson/JsonStreamContext;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonStreamContext;->inRoot()Z

    move-result p1

    if-nez p1, :cond_0

    .line 73
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/JsonParser;->clearCurrentToken()V

    .line 76
    :cond_0
    iput-boolean p5, p0, Lcom/amazon/org/codehaus/jackson/map/MappingIterator;->_closeParser:Z

    if-nez p6, :cond_1

    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/MappingIterator;->_updatedValue:Ljava/lang/Object;

    goto :goto_0

    .line 80
    :cond_1
    iput-object p6, p0, Lcom/amazon/org/codehaus/jackson/map/MappingIterator;->_updatedValue:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method protected static emptyIterator()Lcom/amazon/org/codehaus/jackson/map/MappingIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/amazon/org/codehaus/jackson/map/MappingIterator<",
            "TT;>;"
        }
    .end annotation

    .line 86
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/MappingIterator;->EMPTY_ITERATOR:Lcom/amazon/org/codehaus/jackson/map/MappingIterator;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 99
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/MappingIterator;->hasNextValue()Z

    move-result v0
    :try_end_0
    .catch Lcom/amazon/org/codehaus/jackson/map/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 103
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 101
    new-instance v1, Lcom/amazon/org/codehaus/jackson/map/RuntimeJsonMappingException;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/amazon/org/codehaus/jackson/map/RuntimeJsonMappingException;-><init>(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;)V

    throw v1
.end method

.method public hasNextValue()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/MappingIterator;->_parser:Lcom/amazon/org/codehaus/jackson/JsonParser;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 138
    :cond_0
    iget-boolean v2, p0, Lcom/amazon/org/codehaus/jackson/map/MappingIterator;->_hasNextChecked:Z

    const/4 v3, 0x1

    if-nez v2, :cond_3

    .line 139
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 140
    iput-boolean v3, p0, Lcom/amazon/org/codehaus/jackson/map/MappingIterator;->_hasNextChecked:Z

    if-nez v0, :cond_3

    .line 142
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/MappingIterator;->_parser:Lcom/amazon/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    if-nez v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/MappingIterator;->_parser:Lcom/amazon/org/codehaus/jackson/JsonParser;

    const/4 v2, 0x0

    .line 146
    iput-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/MappingIterator;->_parser:Lcom/amazon/org/codehaus/jackson/JsonParser;

    .line 147
    iget-boolean v2, p0, Lcom/amazon/org/codehaus/jackson/map/MappingIterator;->_closeParser:Z

    if-eqz v2, :cond_1

    .line 148
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/JsonParser;->close()V

    :cond_1
    return v1

    .line 155
    :cond_2
    sget-object v2, Lcom/amazon/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_3

    return v1

    :cond_3
    return v3
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/MappingIterator;->nextValue()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/amazon/org/codehaus/jackson/map/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 115
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 113
    new-instance v1, Lcom/amazon/org/codehaus/jackson/map/RuntimeJsonMappingException;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/amazon/org/codehaus/jackson/map/RuntimeJsonMappingException;-><init>(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;)V

    throw v1
.end method

.method public nextValue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/map/MappingIterator;->_hasNextChecked:Z

    if-nez v0, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/MappingIterator;->hasNextValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 171
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/MappingIterator;->_parser:Lcom/amazon/org/codehaus/jackson/JsonParser;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 174
    iput-boolean v1, p0, Lcom/amazon/org/codehaus/jackson/map/MappingIterator;->_hasNextChecked:Z

    .line 177
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/MappingIterator;->_updatedValue:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 178
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/MappingIterator;->_deserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/MappingIterator;->_context:Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;

    invoke-virtual {v1, v0, v2}, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 180
    :cond_2
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/MappingIterator;->_deserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/MappingIterator;->_context:Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;

    invoke-virtual {v2, v0, v3, v1}, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/MappingIterator;->_updatedValue:Ljava/lang/Object;

    .line 184
    :goto_1
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/MappingIterator;->_parser:Lcom/amazon/org/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->clearCurrentToken()V

    return-object v0

    .line 172
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 120
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
