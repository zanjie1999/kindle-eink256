.class Lcom/audible/mobile/util/BufferedReaderIterable$BufferedReaderIterator;
.super Ljava/lang/Object;
.source "BufferedReaderIterable.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/util/BufferedReaderIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferedReaderIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final bufferedReader:Ljava/io/BufferedReader;


# direct methods
.method protected constructor <init>(Ljava/io/BufferedReader;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/audible/mobile/util/BufferedReaderIterable$BufferedReaderIterator;->bufferedReader:Ljava/io/BufferedReader;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/audible/mobile/util/BufferedReaderIterable$BufferedReaderIterator;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->markSupported()Z

    move-result v0

    const-string v1, "BufferedReader does not support mark."

    invoke-static {v0, v1}, Lcom/audible/mobile/util/Assert;->isTrue(ZLjava/lang/String;)V

    const/4 v0, 0x0

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/audible/mobile/util/BufferedReaderIterable$BufferedReaderIterator;->bufferedReader:Ljava/io/BufferedReader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/BufferedReader;->mark(I)V

    .line 38
    iget-object v1, p0, Lcom/audible/mobile/util/BufferedReaderIterable$BufferedReaderIterator;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I

    move-result v1

    if-gez v1, :cond_0

    return v0

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/audible/mobile/util/BufferedReaderIterable$BufferedReaderIterator;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/audible/mobile/util/BufferedReaderIterable$BufferedReaderIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 1

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/util/BufferedReaderIterable$BufferedReaderIterator;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 63
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
