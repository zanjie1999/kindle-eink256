.class public interface abstract Lcom/amazon/android/docviewer/selection/ISelectionEditor;
.super Ljava/lang/Object;
.source "ISelectionEditor.java"


# virtual methods
.method public abstract endSelection()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract endSelection(Lcom/amazon/android/docviewer/IPageElement;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setPageTurnedBySelection(Z)V
.end method

.method public abstract startSelection(Lcom/amazon/android/docviewer/IPageElement;)V
.end method

.method public abstract startSelectionBeginChange(Lcom/amazon/android/docviewer/IPageElement;)V
.end method

.method public abstract startSelectionEndChange(Lcom/amazon/android/docviewer/IPageElement;)V
.end method

.method public abstract updateSelectionBounds(Lcom/amazon/android/docviewer/IPageElement;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
