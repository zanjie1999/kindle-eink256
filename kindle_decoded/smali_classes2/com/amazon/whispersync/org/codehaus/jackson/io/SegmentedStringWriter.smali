.class public final Lcom/amazon/whispersync/org/codehaus/jackson/io/SegmentedStringWriter;
.super Ljava/io/Writer;
.source "SegmentedStringWriter.java"


# instance fields
.field protected final _buffer:Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 26
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler;)V

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/io/SegmentedStringWriter;->_buffer:Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;

    return-void
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/io/SegmentedStringWriter;->write(I)V

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 3

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 46
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/io/SegmentedStringWriter;->_buffer:Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->append(Ljava/lang/String;II)V

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1

    .line 53
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 54
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/io/SegmentedStringWriter;->_buffer:Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->append(Ljava/lang/String;II)V

    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/io/SegmentedStringWriter;->append(C)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/io/SegmentedStringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/io/SegmentedStringWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public getAndClear()Ljava/lang/String;
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/io/SegmentedStringWriter;->_buffer:Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/io/SegmentedStringWriter;->_buffer:Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->releaseBuffers()V

    return-object v0
.end method

.method public write(I)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/io/SegmentedStringWriter;->_buffer:Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->append(C)V

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/io/SegmentedStringWriter;->_buffer:Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->append(Ljava/lang/String;II)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/io/SegmentedStringWriter;->_buffer:Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->append(Ljava/lang/String;II)V

    return-void
.end method

.method public write([C)V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/io/SegmentedStringWriter;->_buffer:Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->append([CII)V

    return-void
.end method

.method public write([CII)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/io/SegmentedStringWriter;->_buffer:Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->append([CII)V

    return-void
.end method
