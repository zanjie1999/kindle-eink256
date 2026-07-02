.class public final Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;
.super Ljava/lang/Object;
.source "LinkedNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final _next:Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode<",
            "TT;>;"
        }
    .end annotation
.end field

.field final _value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode<",
            "TT;>;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;->_value:Ljava/lang/Object;

    .line 18
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;->_next:Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;

    return-void
.end method

.method public static contains(Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ST:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode<",
            "TST;>;TST;)Z"
        }
    .end annotation

    :goto_0
    if-eqz p0, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;->value()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;->next()Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public next()Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode<",
            "TT;>;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;->_next:Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;->_value:Ljava/lang/Object;

    return-object v0
.end method
