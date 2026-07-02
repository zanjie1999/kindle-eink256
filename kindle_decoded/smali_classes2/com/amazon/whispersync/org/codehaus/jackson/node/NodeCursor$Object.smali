.class public final Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor$Object;
.super Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor;
.source "NodeCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Object"
.end annotation


# instance fields
.field _contents:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;",
            ">;>;"
        }
    .end annotation
.end field

.field _current:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation
.end field

.field _needEntry:Z


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor;)V
    .locals 1

    const/4 v0, 0x2

    .line 172
    invoke-direct {p0, v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor;-><init>(ILcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor;)V

    .line 173
    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->getFields()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor$Object;->_contents:Ljava/util/Iterator;

    const/4 p1, 0x1

    .line 174
    iput-boolean p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor$Object;->_needEntry:Z

    return-void
.end method


# virtual methods
.method public currentHasChildren()Z
    .locals 1

    .line 219
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor$Object;->currentNode()Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public currentNode()Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor$Object;->_current:Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    :goto_0
    return-object v0
.end method

.method public endToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;
    .locals 1

    .line 210
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor$Object;->_current:Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getParent()Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;
    .locals 1

    .line 162
    invoke-super {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor;->getParent()Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;
    .locals 1

    .line 186
    iget-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor$Object;->_needEntry:Z

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor$Object;->_contents:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 188
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor$Object;->_current:Ljava/util/Map$Entry;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor$Object;->_needEntry:Z

    .line 192
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor$Object;->_contents:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor$Object;->_current:Ljava/util/Map$Entry;

    .line 193
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    return-object v0

    :cond_1
    const/4 v0, 0x1

    .line 195
    iput-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor$Object;->_needEntry:Z

    .line 196
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor$Object;->_current:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;->asToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method public nextValue()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;
    .locals 2

    .line 202
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor$Object;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 203
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor$Object;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    :cond_0
    return-object v0
.end method
