.class public Lcom/amazon/rma/rs/encoding/StringCollector;
.super Ljava/lang/Object;
.source "StringCollector.java"


# instance fields
.field private final hardcodedStrings:[Ljava/lang/String;

.field private final stringOut:Ljava/io/DataOutput;

.field private final stringStream:Ljava/io/ByteArrayOutputStream;

.field private final stringToID:Ljava/util/Map;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/rma/rs/encoding/StringCollector;->stringStream:Ljava/io/ByteArrayOutputStream;

    .line 20
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/StringCollector;->stringStream:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/amazon/rma/rs/encoding/StringCollector;->stringOut:Ljava/io/DataOutput;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 25
    :cond_0
    iput-object p1, p0, Lcom/amazon/rma/rs/encoding/StringCollector;->hardcodedStrings:[Ljava/lang/String;

    .line 26
    new-instance p1, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/StringCollector;->hardcodedStrings:[Ljava/lang/String;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/rma/rs/encoding/StringCollector;->stringToID:Ljava/util/Map;

    .line 27
    invoke-virtual {p0}, Lcom/amazon/rma/rs/encoding/StringCollector;->clear()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 34
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/StringCollector;->stringStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 35
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/StringCollector;->stringToID:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 36
    :goto_0
    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/StringCollector;->hardcodedStrings:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 37
    iget-object v2, p0, Lcom/amazon/rma/rs/encoding/StringCollector;->stringToID:Ljava/util/Map;

    aget-object v1, v1, v0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getID(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/StringCollector;->stringToID:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 53
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/StringCollector;->stringToID:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 54
    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/StringCollector;->stringToID:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/StringCollector;->stringOut:Ljava/io/DataOutput;

    invoke-static {v1, p1}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 57
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getSize()I
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/StringCollector;->stringToID:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/StringCollector;->hardcodedStrings:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->getUVIntSizeInBytes(I)I

    move-result v0

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/StringCollector;->stringStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToStream(Ljava/io/DataOutput;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/StringCollector;->stringToID:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/StringCollector;->hardcodedStrings:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeUVInt(Ljava/io/DataOutput;I)V

    .line 78
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/StringCollector;->stringStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
