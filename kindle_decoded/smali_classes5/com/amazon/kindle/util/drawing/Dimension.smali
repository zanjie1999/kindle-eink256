.class public Lcom/amazon/kindle/util/drawing/Dimension;
.super Ljava/lang/Object;
.source "Dimension.java"


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    .line 31
    iput v0, p0, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    .line 41
    iput p2, p0, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    return-void
.end method

.method public static varargs merge([Lcom/amazon/kindle/util/drawing/Dimension;)Lcom/amazon/kindle/util/drawing/Dimension;
    .locals 6

    .line 91
    new-instance v0, Lcom/amazon/kindle/util/drawing/Dimension;

    invoke-direct {v0}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>()V

    if-eqz p0, :cond_3

    .line 92
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 96
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 97
    iget v4, v3, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    iget v5, v0, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    if-le v4, v5, :cond_1

    .line 98
    iput v4, v0, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    .line 101
    :cond_1
    iget v3, v3, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    iget v4, v0, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    if-le v3, v4, :cond_2

    .line 102
    iput v3, v0, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 77
    :cond_1
    const-class v2, Lcom/amazon/kindle/util/drawing/Dimension;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 80
    :cond_2
    check-cast p1, Lcom/amazon/kindle/util/drawing/Dimension;

    .line 81
    iget v2, p0, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    iget v3, p1, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    iget p1, p1, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 62
    iget v0, p0, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 63
    iget v1, p0, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    add-int/2addr v0, v1

    return v0
.end method
