.class public Lcom/amazon/xray/model/object/BookMetadata;
.super Ljava/lang/Object;
.source "BookMetadata.java"


# instance fields
.field private final hasExcerpts:Z

.field private final hasImages:Z

.field private final numImages:I

.field private final numPeople:I

.field private final numTerms:I

.field private final previewImages:[I

.field private final readingRange:Lcom/amazon/xray/model/object/PositionRange;

.field private final showSpoilersDefault:Z


# direct methods
.method public constructor <init>(IIZZZIII[I)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Lcom/amazon/xray/util/Validate;->notNegative(I)V

    if-ge p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "erl must be greater than or equal to srl"

    .line 59
    invoke-static {v0, v1}, Lcom/amazon/xray/util/Validate;->not(ZLjava/lang/String;)V

    .line 61
    new-instance v0, Lcom/amazon/xray/model/object/PositionRange;

    sub-int/2addr p2, p1

    invoke-direct {v0, p1, p2}, Lcom/amazon/xray/model/object/PositionRange;-><init>(II)V

    iput-object v0, p0, Lcom/amazon/xray/model/object/BookMetadata;->readingRange:Lcom/amazon/xray/model/object/PositionRange;

    .line 63
    iput-boolean p3, p0, Lcom/amazon/xray/model/object/BookMetadata;->hasImages:Z

    .line 64
    iput-boolean p4, p0, Lcom/amazon/xray/model/object/BookMetadata;->hasExcerpts:Z

    .line 65
    iput-boolean p5, p0, Lcom/amazon/xray/model/object/BookMetadata;->showSpoilersDefault:Z

    .line 66
    iput p6, p0, Lcom/amazon/xray/model/object/BookMetadata;->numPeople:I

    .line 67
    iput p7, p0, Lcom/amazon/xray/model/object/BookMetadata;->numTerms:I

    .line 68
    iput p8, p0, Lcom/amazon/xray/model/object/BookMetadata;->numImages:I

    .line 69
    iput-object p9, p0, Lcom/amazon/xray/model/object/BookMetadata;->previewImages:[I

    return-void
.end method


# virtual methods
.method public getHasExcerpts()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/amazon/xray/model/object/BookMetadata;->hasExcerpts:Z

    return v0
.end method

.method public getHasImages()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/amazon/xray/model/object/BookMetadata;->hasImages:Z

    return v0
.end method

.method public getNumImages()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/amazon/xray/model/object/BookMetadata;->numImages:I

    return v0
.end method

.method public getNumPeople()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/amazon/xray/model/object/BookMetadata;->numPeople:I

    return v0
.end method

.method public getNumTerms()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/amazon/xray/model/object/BookMetadata;->numTerms:I

    return v0
.end method

.method public getPreviewImages()[I
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/amazon/xray/model/object/BookMetadata;->previewImages:[I

    return-object v0
.end method

.method public getReadingRange()Lcom/amazon/xray/model/object/PositionRange;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/xray/model/object/BookMetadata;->readingRange:Lcom/amazon/xray/model/object/PositionRange;

    return-object v0
.end method

.method public getShowSpoilersDefault()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/amazon/xray/model/object/BookMetadata;->showSpoilersDefault:Z

    return v0
.end method
