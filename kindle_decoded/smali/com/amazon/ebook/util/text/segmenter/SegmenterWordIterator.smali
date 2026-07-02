.class public abstract Lcom/amazon/ebook/util/text/segmenter/SegmenterWordIterator;
.super Lcom/ibm/icu/text/BreakIterator;


# instance fields
.field protected breakPositions:Ljava/util/ArrayList;

.field private citer:Ljava/text/CharacterIterator;

.field private currIndex:I

.field private srcString:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ibm/icu/text/BreakIterator;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/ebook/util/text/segmenter/SegmenterWordIterator;->breakPositions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/amazon/ebook/util/text/segmenter/SegmenterWordIterator;->reset()V

    return-void
.end method


# virtual methods
.method protected reset()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/ebook/util/text/segmenter/SegmenterWordIterator;->breakPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/ebook/util/text/segmenter/SegmenterWordIterator;->citer:Ljava/text/CharacterIterator;

    iput-object v0, p0, Lcom/amazon/ebook/util/text/segmenter/SegmenterWordIterator;->srcString:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/ebook/util/text/segmenter/SegmenterWordIterator;->currIndex:I

    return-void
.end method
