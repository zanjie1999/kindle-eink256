.class Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;
.super Ljava/lang/Object;
.source "HCSparseArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[I

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 31
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mGarbage:Z

    .line 40
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->idealIntArraySize(I)I

    move-result p1

    .line 42
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mKeys:[I

    .line 43
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    .line 44
    iput v0, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mSize:I

    return-void
.end method

.method private static binarySearch([IIII)I
    .locals 4

    add-int/2addr p2, p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    move v1, p2

    :goto_0
    sub-int v2, v1, p1

    if-le v2, v0, :cond_1

    add-int v2, v1, p1

    .line 316
    div-int/lit8 v2, v2, 0x2

    .line 318
    aget v3, p0, v2

    if-ge v3, p3, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    if-ne v1, p2, :cond_2

    not-int p0, p2

    return p0

    .line 326
    :cond_2
    aget p0, p0, v1

    if-ne p0, p3, :cond_3

    return v1

    :cond_3
    not-int p0, v1

    return p0
.end method

.method private gc()V
    .locals 8

    .line 103
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mSize:I

    .line 105
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mKeys:[I

    .line 106
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 109
    aget-object v6, v2, v4

    .line 111
    sget-object v7, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    if-eq v4, v5, :cond_0

    .line 113
    aget v7, v1, v4

    aput v7, v1, v5

    .line 114
    aput-object v6, v2, v5

    :cond_0
    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 121
    :cond_2
    iput-boolean v3, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mGarbage:Z

    .line 122
    iput v5, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mSize:I

    return-void
.end method

.method static idealByteArraySize(I)I
    .locals 2

    const/4 v0, 0x4

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method static idealIntArraySize(I)I
    .locals 0

    mul-int/lit8 p0, p0, 0x4

    .line 341
    invoke-static {p0}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->idealByteArraySize(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x4

    return p0
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 283
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mSize:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mKeys:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    if-gt p1, v0, :cond_0

    .line 284
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 288
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mSize:I

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 289
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->gc()V

    .line 292
    :cond_1
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mSize:I

    .line 293
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    .line 294
    invoke-static {v1}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->idealIntArraySize(I)I

    move-result v1

    .line 296
    new-array v2, v1, [I

    .line 297
    new-array v1, v1, [Ljava/lang/Object;

    .line 300
    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    array-length v4, v3

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 303
    iput-object v2, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mKeys:[I

    .line 304
    iput-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    .line 307
    :cond_2
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mKeys:[I

    aput p1, v1, v0

    .line 308
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 309
    iput v0, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mSize:I

    return-void
.end method

.method public clear()V
    .locals 5

    .line 267
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mSize:I

    .line 268
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    const/4 v4, 0x0

    .line 271
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 274
    :cond_0
    iput v2, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mSize:I

    .line 275
    iput-boolean v2, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mGarbage:Z

    return-void
.end method

.method public delete(I)V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mKeys:[I

    iget v1, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->binarySearch([IIII)I

    move-result p1

    if-ltz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v0, p1

    sget-object v2, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 77
    aput-object v2, v0, p1

    const/4 p1, 0x1

    .line 78
    iput-boolean p1, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mGarbage:Z

    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mKeys:[I

    iget v1, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->binarySearch([IIII)I

    move-result p1

    if-ltz p1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v0, p1

    sget-object v2, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public indexOfKey(I)I
    .locals 3

    .line 236
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->gc()V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mKeys:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mSize:I

    invoke-static {v0, v1, v2, p1}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->binarySearch([IIII)I

    move-result p1

    return p1
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 252
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->gc()V

    :cond_0
    const/4 v0, 0x0

    .line 256
    :goto_0
    iget v1, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mSize:I

    if-ge v0, v1, :cond_2

    .line 257
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public keyAt(I)I
    .locals 1

    .line 197
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->gc()V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mKeys:[I

    aget p1, v0, p1

    return p1
.end method

.method public put(ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mKeys:[I

    iget v1, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->binarySearch([IIII)I

    move-result v0

    if-ltz v0, :cond_0

    .line 136
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, p1, v0

    goto :goto_0

    :cond_0
    not-int v0, v0

    .line 140
    iget v1, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v3, v1, v0

    sget-object v4, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v3, v4, :cond_1

    .line 141
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mKeys:[I

    aput p1, v2, v0

    .line 142
    aput-object p2, v1, v0

    return-void

    .line 146
    :cond_1
    iget-boolean v1, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mSize:I

    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v3, v3

    if-lt v1, v3, :cond_2

    .line 147
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->gc()V

    .line 150
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mKeys:[I

    iget v1, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mSize:I

    invoke-static {v0, v2, v1, p1}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->binarySearch([IIII)I

    move-result v0

    not-int v0, v0

    .line 153
    :cond_2
    iget v1, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mSize:I

    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v3, v3

    if-lt v1, v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 154
    invoke-static {v1}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->idealIntArraySize(I)I

    move-result v1

    .line 156
    new-array v3, v1, [I

    .line 157
    new-array v1, v1, [Ljava/lang/Object;

    .line 160
    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v5, v4

    invoke-static {v4, v2, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    array-length v5, v4

    invoke-static {v4, v2, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    iput-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mKeys:[I

    .line 164
    iput-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    .line 167
    :cond_3
    iget v1, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mSize:I

    sub-int v2, v1, v0

    if-eqz v2, :cond_4

    .line 169
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mKeys:[I

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v1, v0

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    iget v2, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mSize:I

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    :cond_4
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mKeys:[I

    aput p1, v1, v0

    .line 174
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, p1, v0

    .line 175
    iget p1, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mSize:I

    :goto_0
    return-void
.end method

.method public remove(I)V
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->delete(I)V

    return-void
.end method

.method public removeAt(I)V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v0, p1

    sget-object v2, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 95
    aput-object v2, v0, p1

    const/4 p1, 0x1

    .line 96
    iput-boolean p1, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mGarbage:Z

    :cond_0
    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 223
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->gc()V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-void
.end method

.method public size()I
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->gc()V

    .line 188
    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mSize:I

    return v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 210
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->gc()V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
