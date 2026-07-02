.class public final Lcom/audible/hushpuppy/common/readalong/BookElementInfo;
.super Ljava/lang/Object;
.source "BookElementInfo.java"


# static fields
.field private static final SENTENCE_DELIMITER:[C


# instance fields
.field private final elementEndPos:I

.field private final elementStartPos:I

.field private final rectangle:Lcom/amazon/kindle/krx/reader/Rectangle;

.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ".;:"

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/common/readalong/BookElementInfo;->SENTENCE_DELIMITER:[C

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/reader/Rectangle;IILjava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/audible/hushpuppy/common/readalong/BookElementInfo;->rectangle:Lcom/amazon/kindle/krx/reader/Rectangle;

    .line 37
    iput p2, p0, Lcom/audible/hushpuppy/common/readalong/BookElementInfo;->elementStartPos:I

    .line 38
    iput p3, p0, Lcom/audible/hushpuppy/common/readalong/BookElementInfo;->elementEndPos:I

    .line 39
    iput-object p4, p0, Lcom/audible/hushpuppy/common/readalong/BookElementInfo;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getElementHeight()I
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/audible/hushpuppy/common/readalong/BookElementInfo;->rectangle:Lcom/amazon/kindle/krx/reader/Rectangle;

    if-eqz v0, :cond_0

    .line 67
    iget v0, v0, Lcom/amazon/kindle/krx/reader/Rectangle;->height:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getElementYIndex()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/audible/hushpuppy/common/readalong/BookElementInfo;->rectangle:Lcom/amazon/kindle/krx/reader/Rectangle;

    if-eqz v0, :cond_0

    .line 56
    iget v0, v0, Lcom/amazon/kindle/krx/reader/Rectangle;->y:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getEndPos()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/audible/hushpuppy/common/readalong/BookElementInfo;->elementEndPos:I

    return v0
.end method

.method public getStartPos()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/audible/hushpuppy/common/readalong/BookElementInfo;->elementStartPos:I

    return v0
.end method
