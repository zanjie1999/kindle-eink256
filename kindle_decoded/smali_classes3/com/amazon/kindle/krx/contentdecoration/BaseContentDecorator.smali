.class public abstract Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecorator;
.super Ljava/lang/Object;
.source "BaseContentDecorator.java"

# interfaces
.implements Lcom/amazon/kindle/krx/contentdecoration/IContentDecorator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected createCoveringRectangles(IILcom/amazon/android/docviewer/IDocumentPage;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/amazon/android/docviewer/IDocumentPage;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 27
    invoke-interface {p3}, Lcom/amazon/android/docviewer/IDocumentPage;->getFirstElementPositionId()I

    move-result v0

    .line 28
    invoke-interface {p3}, Lcom/amazon/android/docviewer/IDocumentPage;->getLastElementPositionId()I

    move-result v1

    if-gt p1, p2, :cond_3

    if-gt p1, v1, :cond_3

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ge p1, v0, :cond_1

    move p1, v0

    :cond_1
    if-le p2, v1, :cond_2

    move p2, v1

    .line 40
    :cond_2
    invoke-interface {p3, p1, p2}, Lcom/amazon/android/docviewer/IDocumentPage;->createCoveringRectangles(II)Ljava/util/Vector;

    move-result-object p1

    return-object p1

    .line 31
    :cond_3
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getContentDecorationAt(II)Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPriority()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
