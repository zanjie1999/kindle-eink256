.class public interface abstract Lcom/amazon/kindle/krx/contentdecoration/IContentDecorator;
.super Ljava/lang/Object;
.source "IContentDecorator.java"


# virtual methods
.method public abstract decorate(Ljava/util/Collection;Landroid/graphics/Canvas;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/android/docviewer/IDocumentPage;Landroid/graphics/Rect;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;",
            ">;",
            "Landroid/graphics/Canvas;",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            "Lcom/amazon/android/docviewer/IDocumentPage;",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContentDecorationAt(II)Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;
.end method

.method public abstract getPriority()I
.end method
