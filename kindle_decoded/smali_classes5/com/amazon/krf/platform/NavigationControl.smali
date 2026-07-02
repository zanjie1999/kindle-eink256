.class public interface abstract Lcom/amazon/krf/platform/NavigationControl;
.super Ljava/lang/Object;
.source "NavigationControl.java"


# virtual methods
.method public abstract createSecondaryTableIterator(I)Lcom/amazon/krf/platform/TreeIterator;
.end method

.method public abstract createTocIterator()Lcom/amazon/krf/platform/TreeIterator;
.end method

.method public abstract createTocIteratorFromPosition(Lcom/amazon/krf/platform/Position;)Lcom/amazon/krf/platform/TreeIterator;
.end method

.method public abstract createTocIteratorFromPosition(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/platform/TreeIterator;
.end method

.method public abstract getSecondaryTableCount()I
.end method
