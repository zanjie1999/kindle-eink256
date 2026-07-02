.class public Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserSequence;
.super Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;
.source "JsonParserSequence.java"


# instance fields
.field protected _nextParser:I

.field protected final _parsers:[Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;


# direct methods
.method protected constructor <init>([Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;)V

    .line 41
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserSequence;->_parsers:[Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    const/4 p1, 0x1

    .line 42
    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserSequence;->_nextParser:I

    return-void
.end method

.method public static createFlattened(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;)Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserSequence;
    .locals 3

    .line 56
    instance-of v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserSequence;

    if-nez v0, :cond_0

    instance-of v1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserSequence;

    if-nez v1, :cond_0

    .line 58
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserSequence;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserSequence;-><init>([Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;)V

    return-object v0

    .line 60
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    .line 62
    check-cast p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserSequence;

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserSequence;->addFlattenedActiveParsers(Ljava/util/List;)V

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :goto_0
    instance-of p0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserSequence;

    if-eqz p0, :cond_2

    .line 67
    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserSequence;

    invoke-virtual {p1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserSequence;->addFlattenedActiveParsers(Ljava/util/List;)V

    goto :goto_1

    .line 69
    :cond_2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :goto_1
    new-instance p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserSequence;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserSequence;-><init>([Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;)V

    return-object p0
.end method


# virtual methods
.method protected addFlattenedActiveParsers(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;",
            ">;)V"
        }
    .end annotation

    .line 76
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserSequence;->_nextParser:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserSequence;->_parsers:[Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 77
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserSequence;->_parsers:[Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    aget-object v2, v2, v0

    .line 78
    instance-of v3, v2, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserSequence;

    if-eqz v3, :cond_0

    .line 79
    check-cast v2, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserSequence;

    invoke-virtual {v2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserSequence;->addFlattenedActiveParsers(Ljava/util/List;)V

    goto :goto_1

    .line 81
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->close()V

    .line 98
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserSequence;->switchToNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public containedParsersCount()I
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserSequence;->_parsers:[Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    array-length v0, v0

    return v0
.end method

.method public nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserSequence;->switchToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected switchToNext()Z
    .locals 3

    .line 144
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserSequence;->_nextParser:I

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserSequence;->_parsers:[Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 147
    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserSequence;->_nextParser:I

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/JsonParserDelegate;->delegate:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    const/4 v0, 0x1

    return v0
.end method
