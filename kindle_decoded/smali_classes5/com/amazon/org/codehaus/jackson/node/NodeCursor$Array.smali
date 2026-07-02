.class public final Lcom/amazon/org/codehaus/jackson/node/NodeCursor$Array;
.super Lcom/amazon/org/codehaus/jackson/node/NodeCursor;
.source "NodeCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/node/NodeCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Array"
.end annotation


# instance fields
.field _contents:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/amazon/org/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation
.end field

.field _currentNode:Lcom/amazon/org/codehaus/jackson/JsonNode;


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/JsonNode;Lcom/amazon/org/codehaus/jackson/node/NodeCursor;)V
    .locals 1

    const/4 v0, 0x1

    .line 127
    invoke-direct {p0, v0, p2}, Lcom/amazon/org/codehaus/jackson/node/NodeCursor;-><init>(ILcom/amazon/org/codehaus/jackson/node/NodeCursor;)V

    .line 128
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonNode;->getElements()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/node/NodeCursor$Array;->_contents:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public currentHasChildren()Z
    .locals 1

    .line 155
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/node/NodeCursor$Array;->currentNode()Lcom/amazon/org/codehaus/jackson/JsonNode;

    move-result-object v0

    check-cast v0, Lcom/amazon/org/codehaus/jackson/node/ContainerNode;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/node/ContainerNode;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public currentNode()Lcom/amazon/org/codehaus/jackson/JsonNode;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/node/NodeCursor$Array;->_currentNode:Lcom/amazon/org/codehaus/jackson/JsonNode;

    return-object v0
.end method

.method public endToken()Lcom/amazon/org/codehaus/jackson/JsonToken;
    .locals 1

    .line 148
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getParent()Lcom/amazon/org/codehaus/jackson/JsonStreamContext;
    .locals 1

    .line 119
    invoke-super {p0}, Lcom/amazon/org/codehaus/jackson/node/NodeCursor;->getParent()Lcom/amazon/org/codehaus/jackson/node/NodeCursor;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/node/NodeCursor$Array;->_contents:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/node/NodeCursor$Array;->_currentNode:Lcom/amazon/org/codehaus/jackson/JsonNode;

    return-object v0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/node/NodeCursor$Array;->_contents:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/org/codehaus/jackson/JsonNode;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/node/NodeCursor$Array;->_currentNode:Lcom/amazon/org/codehaus/jackson/JsonNode;

    .line 142
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/JsonNode;->asToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method public nextValue()Lcom/amazon/org/codehaus/jackson/JsonToken;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/node/NodeCursor$Array;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    return-object v0
.end method
