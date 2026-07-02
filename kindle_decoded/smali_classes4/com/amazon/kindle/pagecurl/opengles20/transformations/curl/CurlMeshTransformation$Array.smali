.class Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;
.super Ljava/lang/Object;
.source "CurlMeshTransformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Array"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mArray:[Ljava/lang/Object;

.field private mCapacity:I

.field private mSize:I


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;I)V
    .locals 0

    .line 1704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1705
    iput p2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->mCapacity:I

    .line 1706
    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->mArray:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 1710
    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->mSize:I

    if-gt p1, v0, :cond_1

    iget v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->mCapacity:I

    if-ge v0, v1, :cond_1

    :goto_0
    if-le v0, p1, :cond_0

    .line 1714
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->mArray:[Ljava/lang/Object;

    add-int/lit8 v2, v0, -0x1

    aget-object v2, v1, v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1716
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->mArray:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 1717
    iget p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->mSize:I

    return-void

    .line 1711
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1721
    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->mSize:I

    iget v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->mCapacity:I

    if-ge v0, v1, :cond_0

    .line 1724
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->mArray:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->mSize:I

    aput-object p1, v1, v0

    return-void

    .line 1722
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public addAll(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array<",
            "TT;>;)V"
        }
    .end annotation

    .line 1728
    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->mSize:I

    invoke-virtual {p1}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->mCapacity:I

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 1731
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1732
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->mArray:[Ljava/lang/Object;

    iget v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->mSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->mSize:I

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 1729
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1737
    iput v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->mSize:I

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 1742
    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->mSize:I

    if-ge p1, v0, :cond_0

    .line 1745
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->mArray:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1

    .line 1743
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 1750
    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->mSize:I

    if-ge p1, v0, :cond_1

    .line 1753
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 1754
    :goto_0
    iget v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->mSize:I

    add-int/lit8 v2, v1, -0x1

    if-ge p1, v2, :cond_0

    .line 1755
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->mArray:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v3, v1, v2

    aput-object v3, v1, p1

    move p1, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 1757
    iput v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->mSize:I

    return-object v0

    .line 1751
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    .line 1762
    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->mSize:I

    return v0
.end method
