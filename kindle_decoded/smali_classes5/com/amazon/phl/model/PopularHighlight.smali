.class public Lcom/amazon/phl/model/PopularHighlight;
.super Ljava/lang/Object;
.source "PopularHighlight.java"


# instance fields
.field private final creationTimestamp:J

.field private final endPosition:I

.field private final modificationTimestamp:J

.field private final numHighlighters:I

.field private final startPosition:I


# direct methods
.method public constructor <init>(IIIJJ)V
    .locals 7

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "numHighlighters must be positive"

    .line 24
    invoke-static {v2, v3}, Lcom/amazon/phl/util/Validate;->checkArgument(ZLjava/lang/String;)V

    if-ltz p1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string/jumbo v3, "startPosition must be non-negative"

    .line 25
    invoke-static {v2, v3}, Lcom/amazon/phl/util/Validate;->checkArgument(ZLjava/lang/String;)V

    if-le p2, p1, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    const-string v3, "endPosition must be after startPosition"

    .line 26
    invoke-static {v2, v3}, Lcom/amazon/phl/util/Validate;->checkArgument(ZLjava/lang/String;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    cmp-long v6, p4, v2

    if-gtz v6, :cond_4

    cmp-long v2, p4, v4

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v2, 0x1

    :goto_4
    const-string v3, "creationTimestamp must be positive or equal to NO_TIMESTAMP"

    .line 27
    invoke-static {v2, v3}, Lcom/amazon/phl/util/Validate;->checkArgument(ZLjava/lang/String;)V

    cmp-long v2, p6, p4

    if-gez v2, :cond_6

    cmp-long v2, p6, v4

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_5
    const-string v1, "modificationTimestamp must be greater than or equal to creationTimestamp or equal to NO_TIMESTAMP"

    .line 29
    invoke-static {v0, v1}, Lcom/amazon/phl/util/Validate;->checkArgument(ZLjava/lang/String;)V

    .line 31
    iput p1, p0, Lcom/amazon/phl/model/PopularHighlight;->startPosition:I

    .line 32
    iput p2, p0, Lcom/amazon/phl/model/PopularHighlight;->endPosition:I

    .line 33
    iput p3, p0, Lcom/amazon/phl/model/PopularHighlight;->numHighlighters:I

    .line 34
    iput-wide p4, p0, Lcom/amazon/phl/model/PopularHighlight;->creationTimestamp:J

    .line 35
    iput-wide p6, p0, Lcom/amazon/phl/model/PopularHighlight;->modificationTimestamp:J

    return-void
.end method


# virtual methods
.method public getEndPosition()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/amazon/phl/model/PopularHighlight;->endPosition:I

    return v0
.end method

.method public getNumHighlighters()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/amazon/phl/model/PopularHighlight;->numHighlighters:I

    return v0
.end method

.method public getStartPosition()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/amazon/phl/model/PopularHighlight;->startPosition:I

    return v0
.end method

.method public isOverlappingRange(II)Z
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/amazon/phl/model/PopularHighlight;->getEndPosition()I

    move-result v0

    if-lt v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/phl/model/PopularHighlight;->getStartPosition()I

    move-result p1

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
