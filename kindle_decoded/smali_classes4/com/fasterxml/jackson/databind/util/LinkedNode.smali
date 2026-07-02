.class public final Lcom/fasterxml/jackson/databind/util/LinkedNode;
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
.field private next:Lcom/fasterxml/jackson/databind/util/LinkedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/util/LinkedNode<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/LinkedNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/fasterxml/jackson/databind/util/LinkedNode<",
            "TT;>;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/LinkedNode;->value:Ljava/lang/Object;

    .line 19
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/util/LinkedNode;->next:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    return-void
.end method


# virtual methods
.method public linkNext(Lcom/fasterxml/jackson/databind/util/LinkedNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/util/LinkedNode<",
            "TT;>;)V"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LinkedNode;->next:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    if-nez v0, :cond_0

    .line 27
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/LinkedNode;->next:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    return-void

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public next()Lcom/fasterxml/jackson/databind/util/LinkedNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/util/LinkedNode<",
            "TT;>;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LinkedNode;->next:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LinkedNode;->value:Ljava/lang/Object;

    return-object v0
.end method
