.class public abstract Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;
.super Ljava/lang/Object;
.source "PrimitiveArrayBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final INITIAL_CHUNK_SIZE:I = 0xc

.field static final MAX_CHUNK_SIZE:I = 0x40000

.field static final SMALL_CHUNK_SIZE:I = 0x4000


# instance fields
.field _bufferHead:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field _bufferTail:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field _bufferedEntryCount:I

.field _freeBuffer:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract _constructArray(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method protected _reset()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_bufferTail:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;->getData()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_freeBuffer:Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_bufferTail:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_bufferHead:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;

    const/4 v0, 0x0

    .line 125
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_bufferedEntryCount:I

    return-void
.end method

.method public final appendCompletedChunk(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)TT;"
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;

    invoke-direct {v0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;-><init>(Ljava/lang/Object;I)V

    .line 66
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_bufferHead:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;

    if-nez p1, :cond_0

    .line 67
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_bufferTail:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_bufferHead:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;

    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_bufferTail:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;->linkNext(Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;)V

    .line 70
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_bufferTail:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;

    .line 72
    :goto_0
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_bufferedEntryCount:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_bufferedEntryCount:I

    const/16 p1, 0x4000

    if-ge p2, p1, :cond_1

    add-int/2addr p2, p2

    goto :goto_1

    :cond_1
    shr-int/lit8 p1, p2, 0x2

    add-int/2addr p2, p1

    .line 80
    :goto_1
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_constructArray(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public completeAndClearBuffer(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)TT;"
        }
    .end annotation

    .line 85
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_bufferedEntryCount:I

    add-int/2addr v0, p2

    .line 86
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_constructArray(I)Ljava/lang/Object;

    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_bufferHead:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {v2, v1, v4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;->copyData(Ljava/lang/Object;I)I

    move-result v4

    .line 90
    invoke-virtual {v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;->next()Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder$Node;

    move-result-object v2

    goto :goto_0

    .line 93
    :cond_0
    invoke-static {p1, v3, v1, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, p2

    if-ne v4, v0, :cond_1

    return-object v1

    .line 98
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Should have gotten "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " entries, got "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resetAndStart()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_reset()V

    .line 56
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_freeBuffer:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->_constructArray(I)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method
