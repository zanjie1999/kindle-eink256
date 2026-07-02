.class Lcom/lab126/lucene/search/LuceneTokenizerLab126$WordIteratorReader;
.super Ljava/io/Reader;
.source "LuceneTokenizerLab126.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lab126/lucene/search/LuceneTokenizerLab126;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WordIteratorReader"
.end annotation


# instance fields
.field private wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/search/IKindleWordTokenIterator;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126$WordIteratorReader;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public read([CII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget-object p3, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126$WordIteratorReader;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {p3}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->next()Z

    move-result p3

    const/4 v0, -0x1

    if-eqz p3, :cond_2

    .line 164
    iget-object p3, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126$WordIteratorReader;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {p3}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object p3

    if-nez p3, :cond_0

    .line 169
    invoke-static {}, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Word iterator token is null in read() of WordIteratorReader"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 172
    :cond_0
    iget-object p3, p3, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    .line 173
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    array-length v1, p1

    sub-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    add-int v2, p2, v1

    .line 175
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr p2, v0

    const/16 p3, 0x20

    .line 177
    aput-char p3, p1, p2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    return v0
.end method
