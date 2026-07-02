.class public Lcom/amazon/org/codehaus/jackson/format/InputAccessor$Std;
.super Ljava/lang/Object;
.source "InputAccessor.java"

# interfaces
.implements Lcom/amazon/org/codehaus/jackson/format/InputAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/format/InputAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Std"
.end annotation


# instance fields
.field protected final _buffer:[B

.field protected _bufferedAmount:I

.field protected final _in:Ljava/io/InputStream;

.field protected _ptr:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[B)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/format/InputAccessor$Std;->_in:Ljava/io/InputStream;

    .line 68
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/format/InputAccessor$Std;->_buffer:[B

    const/4 p1, 0x0

    .line 69
    iput p1, p0, Lcom/amazon/org/codehaus/jackson/format/InputAccessor$Std;->_bufferedAmount:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/format/InputAccessor$Std;->_in:Ljava/io/InputStream;

    .line 79
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/format/InputAccessor$Std;->_buffer:[B

    .line 81
    array-length p1, p1

    iput p1, p0, Lcom/amazon/org/codehaus/jackson/format/InputAccessor$Std;->_bufferedAmount:I

    return-void
.end method


# virtual methods
.method public createMatcher(Lcom/amazon/org/codehaus/jackson/JsonFactory;Lcom/amazon/org/codehaus/jackson/format/MatchStrength;)Lcom/amazon/org/codehaus/jackson/format/DataFormatMatcher;
    .locals 7

    .line 127
    new-instance v6, Lcom/amazon/org/codehaus/jackson/format/DataFormatMatcher;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/format/InputAccessor$Std;->_in:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/format/InputAccessor$Std;->_buffer:[B

    iget v3, p0, Lcom/amazon/org/codehaus/jackson/format/InputAccessor$Std;->_bufferedAmount:I

    move-object v0, v6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/format/DataFormatMatcher;-><init>(Ljava/io/InputStream;[BILcom/amazon/org/codehaus/jackson/JsonFactory;Lcom/amazon/org/codehaus/jackson/format/MatchStrength;)V

    return-object v6
.end method

.method public hasMoreBytes()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/format/InputAccessor$Std;->_ptr:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/format/InputAccessor$Std;->_bufferedAmount:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/format/InputAccessor$Std;->_buffer:[B

    array-length v3, v1

    sub-int/2addr v3, v0

    const/4 v4, 0x0

    if-ge v3, v2, :cond_1

    return v4

    .line 94
    :cond_1
    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/format/InputAccessor$Std;->_in:Ljava/io/InputStream;

    invoke-virtual {v5, v1, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gtz v0, :cond_2

    return v4

    .line 98
    :cond_2
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/format/InputAccessor$Std;->_bufferedAmount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/amazon/org/codehaus/jackson/format/InputAccessor$Std;->_bufferedAmount:I

    return v2
.end method

.method public nextByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/format/InputAccessor$Std;->_ptr:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/format/InputAccessor$Std;->_bufferedAmount:I

    neg-int v1, v1

    if-le v0, v1, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/format/InputAccessor$Std;->hasMoreBytes()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not read more than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/format/InputAccessor$Std;->_ptr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes (max buffer size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/format/InputAccessor$Std;->_buffer:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/format/InputAccessor$Std;->_buffer:[B

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/format/InputAccessor$Std;->_ptr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/org/codehaus/jackson/format/InputAccessor$Std;->_ptr:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 116
    iput v0, p0, Lcom/amazon/org/codehaus/jackson/format/InputAccessor$Std;->_ptr:I

    return-void
.end method
