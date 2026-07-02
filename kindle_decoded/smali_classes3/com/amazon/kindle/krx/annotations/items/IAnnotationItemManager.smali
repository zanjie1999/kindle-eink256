.class public interface abstract Lcom/amazon/kindle/krx/annotations/items/IAnnotationItemManager;
.super Ljava/lang/Object;
.source "IAnnotationItemManager.java"


# virtual methods
.method public abstract getAnnotationItems(Lcom/amazon/kindle/krx/content/IBook;)Ljava/util/Collection;
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

.method public abstract registerAnnotationItemComparator(Lcom/amazon/kindle/krx/annotations/items/IAnnotationItemComparator;)V
.end method

.method public abstract registerAnnotationItemFilter(Lcom/amazon/kindle/krx/annotations/items/IAnnotationItemFilter;)V
.end method

.method public abstract registerAnnotationItemProvider(Lcom/amazon/kindle/krx/annotations/items/IAnnotationItemProvider;)V
.end method
