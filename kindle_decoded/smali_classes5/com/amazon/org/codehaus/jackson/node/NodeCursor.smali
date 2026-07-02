.class abstract Lcom/amazon/org/codehaus/jackson/node/NodeCursor;
.super Lcom/amazon/org/codehaus/jackson/JsonStreamContext;
.source "NodeCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/org/codehaus/jackson/node/NodeCursor$Object;,
        Lcom/amazon/org/codehaus/jackson/node/NodeCursor$Array;,
        Lcom/amazon/org/codehaus/jackson/node/NodeCursor$RootValue;
    }
.end annotation


# instance fields
.field final _parent:Lcom/amazon/org/codehaus/jackson/node/NodeCursor;


# direct methods
.method public constructor <init>(ILcom/amazon/org/codehaus/jackson/node/NodeCursor;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/JsonStreamContext;-><init>()V

    .line 23
    iput p1, p0, Lcom/amazon/org/codehaus/jackson/JsonStreamContext;->_type:I

    const/4 p1, -0x1

    .line 24
    iput p1, p0, Lcom/amazon/org/codehaus/jackson/JsonStreamContext;->_index:I

    .line 25
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/node/NodeCursor;->_parent:Lcom/amazon/org/codehaus/jackson/node/NodeCursor;

    return-void
.end method


# virtual methods
.method public abstract currentHasChildren()Z
.end method

.method public abstract currentNode()Lcom/amazon/org/codehaus/jackson/JsonNode;
.end method

.method public abstract endToken()Lcom/amazon/org/codehaus/jackson/JsonToken;
.end method

.method public abstract getCurrentName()Ljava/lang/String;
.end method

.method public bridge synthetic getParent()Lcom/amazon/org/codehaus/jackson/JsonStreamContext;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/node/NodeCursor;->getParent()Lcom/amazon/org/codehaus/jackson/node/NodeCursor;

    move-result-object v0

    return-object v0
.end method

.method public final getParent()Lcom/amazon/org/codehaus/jackson/node/NodeCursor;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/node/NodeCursor;->_parent:Lcom/amazon/org/codehaus/jackson/node/NodeCursor;

    return-object v0
.end method

.method public final iterateChildren()Lcom/amazon/org/codehaus/jackson/node/NodeCursor;
    .locals 4

    .line 59
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/node/NodeCursor;->currentNode()Lcom/amazon/org/codehaus/jackson/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 61
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/JsonNode;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    new-instance v1, Lcom/amazon/org/codehaus/jackson/node/NodeCursor$Array;

    invoke-direct {v1, v0, p0}, Lcom/amazon/org/codehaus/jackson/node/NodeCursor$Array;-><init>(Lcom/amazon/org/codehaus/jackson/JsonNode;Lcom/amazon/org/codehaus/jackson/node/NodeCursor;)V

    return-object v1

    .line 64
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/JsonNode;->isObject()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    new-instance v1, Lcom/amazon/org/codehaus/jackson/node/NodeCursor$Object;

    invoke-direct {v1, v0, p0}, Lcom/amazon/org/codehaus/jackson/node/NodeCursor$Object;-><init>(Lcom/amazon/org/codehaus/jackson/JsonNode;Lcom/amazon/org/codehaus/jackson/node/NodeCursor;)V

    return-object v1

    .line 67
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current node of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No current node"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;
.end method

.method public abstract nextValue()Lcom/amazon/org/codehaus/jackson/JsonToken;
.end method
