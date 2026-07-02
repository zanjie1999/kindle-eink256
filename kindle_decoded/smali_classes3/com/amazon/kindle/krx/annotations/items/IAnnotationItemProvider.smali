.class public interface abstract Lcom/amazon/kindle/krx/annotations/items/IAnnotationItemProvider;
.super Ljava/lang/Object;
.source "IAnnotationItemProvider.java"


# virtual methods
.method public abstract getActionHandler()Lcom/amazon/kindle/krx/annotations/items/IAnnotationItemActionHandler;
.end method

.method public abstract getItems(Lcom/amazon/kindle/krx/content/IBook;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRenderer()Lcom/amazon/kindle/krx/annotations/items/IAnnotationItemRenderer;
.end method
