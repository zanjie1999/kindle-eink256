.class public Lcom/amazon/kindle/util/CharArraySlice;
.super Ljava/lang/Object;
.source "CharArraySlice.java"


# instance fields
.field public content:[C

.field public length:I

.field public start:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p2, p0, Lcom/amazon/kindle/util/CharArraySlice;->start:I

    .line 47
    iput p3, p0, Lcom/amazon/kindle/util/CharArraySlice;->length:I

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/util/CharArraySlice;->content:[C

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 2

    if-ltz p1, :cond_0

    .line 105
    iget v0, p0, Lcom/amazon/kindle/util/CharArraySlice;->length:I

    if-ge p1, v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/amazon/kindle/util/CharArraySlice;->content:[C

    iget v1, p0, Lcom/amazon/kindle/util/CharArraySlice;->start:I

    add-int/2addr v1, p1

    aget-char p1, v0, v1

    return p1

    .line 106
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public length()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/amazon/kindle/util/CharArraySlice;->length:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/amazon/kindle/util/CharArraySlice;->content:[C

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 213
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/kindle/util/CharArraySlice;->content:[C

    iget v2, p0, Lcom/amazon/kindle/util/CharArraySlice;->start:I

    iget v3, p0, Lcom/amazon/kindle/util/CharArraySlice;->length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
