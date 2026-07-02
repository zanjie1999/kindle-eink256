.class public abstract Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$AbstractTextSegmentIterator;
.super Ljava/lang/Object;
.source "AccessibilityIterators.java"

# interfaces
.implements Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$TextSegmentIterator;


# instance fields
.field private final mSegment:[I

.field protected mText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 52
    iput-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$AbstractTextSegmentIterator;->mSegment:[I

    return-void
.end method


# virtual methods
.method protected getRange(II)[I
    .locals 2

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$AbstractTextSegmentIterator;->mSegment:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 63
    aput p2, v0, p1

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public initialize(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$AbstractTextSegmentIterator;->mText:Ljava/lang/String;

    return-void
.end method
