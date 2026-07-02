.class public final Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor$RootValue;
.super Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor;
.source "NodeCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "RootValue"
.end annotation


# instance fields
.field protected _done:Z

.field _node:Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor;)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor;-><init>(ILcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor;)V

    .line 86
    iput-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor$RootValue;->_done:Z

    .line 90
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor$RootValue;->_node:Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    return-void
.end method


# virtual methods
.method public currentHasChildren()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public currentNode()Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor$RootValue;->_node:Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    return-object v0
.end method

.method public endToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getParent()Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;
    .locals 1

    .line 81
    invoke-super {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor;->getParent()Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor$RootValue;->_done:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor$RootValue;->_done:Z

    .line 100
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor$RootValue;->_node:Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;->asToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor$RootValue;->_node:Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    return-object v0
.end method

.method public nextValue()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/NodeCursor$RootValue;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    return-object v0
.end method
