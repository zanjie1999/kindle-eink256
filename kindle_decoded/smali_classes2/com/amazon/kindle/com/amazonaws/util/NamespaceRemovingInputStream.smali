.class Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream;
.super Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;
.source "NamespaceRemovingInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0xc8


# instance fields
.field private hasRemovedNamespace:Z

.field private final lookAheadData:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 48
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0xc8

    new-array p1, p1, [B

    .line 33
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream;->lookAheadData:[B

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream;->hasRemovedNamespace:Z

    return-void
.end method

.method private matchXmlNamespaceAttribute(Ljava/lang/String;)I
    .locals 4

    .line 121
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "xmlns"

    .line 122
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->removePrefix(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    const-string v1, " "

    .line 125
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->removeRepeatingPrefix(Ljava/lang/String;)Z

    const-string v3, "="

    .line 126
    invoke-virtual {v0, v3}, Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->removePrefix(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    .line 128
    :cond_1
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->removeRepeatingPrefix(Ljava/lang/String;)Z

    const-string v1, "\""

    .line 130
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->removePrefix(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    .line 132
    :cond_2
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->removePrefixEndingWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 135
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;->abortIfNeeded()V

    .line 58
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_1

    .line 59
    iget-boolean v1, p0, Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream;->hasRemovedNamespace:Z

    if-nez v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream;->lookAheadData:[B

    int-to-byte v2, v0

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 61
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream;->lookAheadData:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 62
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream;->lookAheadData:[B

    array-length v4, v2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 63
    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 65
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream;->lookAheadData:[B

    add-int/2addr v1, v5

    sget-object v6, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v4, v3, v1, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 67
    invoke-direct {p0, v2}, Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream;->matchXmlNamespaceAttribute(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    :goto_0
    add-int/lit8 v0, v1, -0x1

    if-ge v3, v0, :cond_0

    .line 70
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 73
    iput-boolean v5, p0, Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream;->hasRemovedNamespace:Z

    :cond_1
    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 87
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    return v2

    :cond_0
    return v0

    :cond_1
    add-int v2, v0, p2

    int-to-byte v1, v1

    .line 94
    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p3
.end method
