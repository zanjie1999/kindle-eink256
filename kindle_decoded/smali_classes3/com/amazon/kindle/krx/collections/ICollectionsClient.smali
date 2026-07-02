.class public interface abstract Lcom/amazon/kindle/krx/collections/ICollectionsClient;
.super Ljava/lang/Object;
.source "ICollectionsClient.java"


# virtual methods
.method public abstract getActionButtons()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getCollectionsFilter()Lcom/amazon/kindle/krx/collections/CollectionFilter;
.end method

.method public abstract getLeftPanelView(Landroid/content/Context;)Landroid/view/View;
.end method
