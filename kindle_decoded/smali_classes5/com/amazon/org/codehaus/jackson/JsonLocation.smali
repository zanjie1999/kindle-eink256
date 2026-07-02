.class public Lcom/amazon/org/codehaus/jackson/JsonLocation;
.super Ljava/lang/Object;
.source "JsonLocation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NA:Lcom/amazon/org/codehaus/jackson/JsonLocation;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final _columnNr:I

.field final _lineNr:I

.field final _sourceRef:Ljava/lang/Object;

.field final _totalBytes:J

.field final _totalChars:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 22
    new-instance v8, Lcom/amazon/org/codehaus/jackson/JsonLocation;

    const-string v1, "N/A"

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/amazon/org/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JJII)V

    sput-object v8, Lcom/amazon/org/codehaus/jackson/JsonLocation;->NA:Lcom/amazon/org/codehaus/jackson/JsonLocation;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JII)V
    .locals 8

    const-wide/16 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    .line 42
    invoke-direct/range {v0 .. v7}, Lcom/amazon/org/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JJII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JJII)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/amazon/org/codehaus/jackson/annotate/JsonProperty;
            value = "sourceRef"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lcom/amazon/org/codehaus/jackson/annotate/JsonProperty;
            value = "byteOffset"
        .end annotation
    .end param
    .param p4    # J
        .annotation runtime Lcom/amazon/org/codehaus/jackson/annotate/JsonProperty;
            value = "charOffset"
        .end annotation
    .end param
    .param p6    # I
        .annotation runtime Lcom/amazon/org/codehaus/jackson/annotate/JsonProperty;
            value = "lineNr"
        .end annotation
    .end param
    .param p7    # I
        .annotation runtime Lcom/amazon/org/codehaus/jackson/annotate/JsonProperty;
            value = "columnNr"
        .end annotation
    .end param
    .annotation runtime Lcom/amazon/org/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;

    .line 53
    iput-wide p2, p0, Lcom/amazon/org/codehaus/jackson/JsonLocation;->_totalBytes:J

    .line 54
    iput-wide p4, p0, Lcom/amazon/org/codehaus/jackson/JsonLocation;->_totalChars:J

    .line 55
    iput p6, p0, Lcom/amazon/org/codehaus/jackson/JsonLocation;->_lineNr:I

    .line 56
    iput p7, p0, Lcom/amazon/org/codehaus/jackson/JsonLocation;->_columnNr:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 128
    :cond_1
    instance-of v2, p1, Lcom/amazon/org/codehaus/jackson/JsonLocation;

    if-nez v2, :cond_2

    return v1

    .line 129
    :cond_2
    check-cast p1, Lcom/amazon/org/codehaus/jackson/JsonLocation;

    .line 131
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;

    if-nez v2, :cond_3

    .line 132
    iget-object v2, p1, Lcom/amazon/org/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;

    if-eqz v2, :cond_4

    return v1

    .line 133
    :cond_3
    iget-object v3, p1, Lcom/amazon/org/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 135
    :cond_4
    iget v2, p0, Lcom/amazon/org/codehaus/jackson/JsonLocation;->_lineNr:I

    iget v3, p1, Lcom/amazon/org/codehaus/jackson/JsonLocation;->_lineNr:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/JsonLocation;->_columnNr:I

    iget v3, p1, Lcom/amazon/org/codehaus/jackson/JsonLocation;->_columnNr:I

    if-ne v2, v3, :cond_5

    iget-wide v2, p0, Lcom/amazon/org/codehaus/jackson/JsonLocation;->_totalChars:J

    iget-wide v4, p1, Lcom/amazon/org/codehaus/jackson/JsonLocation;->_totalChars:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_5

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/JsonLocation;->getByteOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonLocation;->getByteOffset()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getByteOffset()J
    .locals 2

    .line 91
    iget-wide v0, p0, Lcom/amazon/org/codehaus/jackson/JsonLocation;->_totalBytes:J

    return-wide v0
.end method

.method public getCharOffset()J
    .locals 2

    .line 83
    iget-wide v0, p0, Lcom/amazon/org/codehaus/jackson/JsonLocation;->_totalChars:J

    return-wide v0
.end method

.method public getColumnNr()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/JsonLocation;->_columnNr:I

    return v0
.end method

.method public getLineNr()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/JsonLocation;->_lineNr:I

    return v0
.end method

.method public getSourceRef()Ljava/lang/Object;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 116
    :goto_0
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/JsonLocation;->_lineNr:I

    xor-int/2addr v0, v1

    .line 117
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/JsonLocation;->_columnNr:I

    add-int/2addr v0, v1

    .line 118
    iget-wide v1, p0, Lcom/amazon/org/codehaus/jackson/JsonLocation;->_totalChars:J

    long-to-int v2, v1

    xor-int/2addr v0, v2

    .line 119
    iget-wide v1, p0, Lcom/amazon/org/codehaus/jackson/JsonLocation;->_totalBytes:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "[Source: "

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;

    if-nez v1, :cond_0

    const-string v1, "UNKNOWN"

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "; line: "

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/JsonLocation;->_lineNr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", column: "

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/JsonLocation;->_columnNr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
