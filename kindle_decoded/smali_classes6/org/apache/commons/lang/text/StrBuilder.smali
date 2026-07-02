.class public Lorg/apache/commons/lang/text/StrBuilder;
.super Ljava/lang/Object;
.source "StrBuilder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x69dea51fe8fc7e4bL


# instance fields
.field protected buffer:[C

.field private newLine:Ljava/lang/String;

.field private nullText:Ljava/lang/String;

.field protected size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    .line 102
    invoke-direct {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gtz p1, :cond_0

    const/16 p1, 0x20

    .line 115
    :cond_0
    new-array p1, p1, [C

    iput-object p1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 4

    if-nez p1, :cond_0

    .line 474
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNull()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object p1

    return-object p1

    .line 476
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 478
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v1

    add-int v2, v1, v0

    .line 479
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    const/4 v2, 0x0

    .line 480
    iget-object v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 481
    iget p1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    :cond_1
    return-object p0
.end method

.method public appendNull()Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1

    .line 445
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->nullText:Ljava/lang/String;

    if-nez v0, :cond_0

    return-object p0

    .line 448
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2588
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang/text/StrBuilder;

    .line 2589
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    array-length v1, v1

    new-array v1, v1, [C

    iput-object v1, v0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 2590
    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 3

    .line 232
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    array-length v1, v0

    if-le p1, v1, :cond_0

    mul-int/lit8 p1, p1, 0x2

    .line 234
    new-array p1, p1, [C

    iput-object p1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 235
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 2536
    instance-of v0, p1, Lorg/apache/commons/lang/text/StrBuilder;

    if-eqz v0, :cond_0

    .line 2537
    check-cast p1, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->equals(Lorg/apache/commons/lang/text/StrBuilder;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Lorg/apache/commons/lang/text/StrBuilder;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 2515
    :cond_0
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    iget v2, p1, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    return v3

    .line 2518
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 2519
    iget-object p1, p1, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_3

    .line 2521
    aget-char v4, v2, v1

    aget-char v5, p1, v1

    if-eq v4, v5, :cond_2

    return v3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 2548
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 2550
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ltz v1, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    .line 2551
    aget-char v3, v0, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public length()I
    .locals 1

    .line 186
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 2567
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
