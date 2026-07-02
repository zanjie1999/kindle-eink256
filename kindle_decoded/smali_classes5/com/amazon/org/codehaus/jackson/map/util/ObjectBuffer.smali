.class public final Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;
.super Ljava/lang/Object;
.source "ObjectBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer$Node;
    }
.end annotation


# static fields
.field static final INITIAL_CHUNK_SIZE:I = 0xc

.field static final MAX_CHUNK_SIZE:I = 0x40000

.field static final SMALL_CHUNK_SIZE:I = 0x4000


# instance fields
.field private _bufferHead:Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer$Node;

.field private _bufferTail:Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer$Node;

.field private _bufferedEntryCount:I

.field private _freeBuffer:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final _copyTo(Ljava/lang/Object;I[Ljava/lang/Object;I)V
    .locals 5

    .line 208
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;->_bufferHead:Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer$Node;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer$Node;->getData()[Ljava/lang/Object;

    move-result-object v3

    .line 210
    array-length v4, v3

    .line 211
    invoke-static {v3, v1, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v4

    .line 208
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer$Node;->next()Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer$Node;

    move-result-object v0

    goto :goto_0

    .line 214
    :cond_0
    invoke-static {p3, v1, p1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, p4

    if-ne v2, p2, :cond_1

    return-void

    .line 219
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Should have gotten "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " entries, got "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected _reset()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;->_bufferTail:Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer$Node;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer$Node;->getData()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;->_freeBuffer:[Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;->_bufferTail:Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer$Node;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;->_bufferHead:Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer$Node;

    const/4 v0, 0x0

    .line 200
    iput v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;->_bufferedEntryCount:I

    return-void
.end method

.method public appendCompletedChunk([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .line 96
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer$Node;

    invoke-direct {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer$Node;-><init>([Ljava/lang/Object;)V

    .line 97
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;->_bufferHead:Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer$Node;

    if-nez v1, :cond_0

    .line 98
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;->_bufferTail:Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer$Node;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;->_bufferHead:Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer$Node;

    goto :goto_0

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;->_bufferTail:Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer$Node;

    invoke-virtual {v1, v0}, Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer$Node;->linkNext(Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer$Node;)V

    .line 101
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;->_bufferTail:Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer$Node;

    .line 103
    :goto_0
    array-length p1, p1

    .line 104
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;->_bufferedEntryCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;->_bufferedEntryCount:I

    const/16 v0, 0x4000

    if-ge p1, v0, :cond_1

    add-int/2addr p1, p1

    goto :goto_1

    :cond_1
    shr-int/lit8 v0, p1, 0x2

    add-int/2addr p1, v0

    .line 111
    :goto_1
    new-array p1, p1, [Ljava/lang/Object;

    return-object p1
.end method

.method public bufferedSize()I
    .locals 1

    .line 184
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;->_bufferedEntryCount:I

    return v0
.end method

.method public completeAndClearBuffer([Ljava/lang/Object;ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;->_bufferHead:Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer$Node;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer$Node;->getData()[Ljava/lang/Object;

    move-result-object v2

    .line 159
    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_0

    .line 160
    aget-object v4, v2, v1

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 157
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer$Node;->next()Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer$Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v1, p2, :cond_2

    .line 165
    aget-object v0, p1, v1

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public completeAndClearBuffer([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 2

    .line 126
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;->_bufferedEntryCount:I

    add-int/2addr v0, p2

    .line 127
    new-array v1, v0, [Ljava/lang/Object;

    .line 128
    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;->_copyTo(Ljava/lang/Object;I[Ljava/lang/Object;I)V

    return-object v1
.end method

.method public completeAndClearBuffer([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 142
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;->_bufferedEntryCount:I

    add-int/2addr v0, p2

    .line 144
    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/Object;

    .line 145
    invoke-virtual {p0, p3, v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;->_copyTo(Ljava/lang/Object;I[Ljava/lang/Object;I)V

    .line 146
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;->_reset()V

    return-object p3
.end method

.method public initialCapacity()I
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;->_freeBuffer:[Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public resetAndStart()[Ljava/lang/Object;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;->_reset()V

    .line 74
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;->_freeBuffer:[Ljava/lang/Object;

    if-nez v0, :cond_0

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
