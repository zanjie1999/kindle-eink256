.class public interface abstract Lcom/amazon/android/docviewer/selection/IObjectSelectionController;
.super Ljava/lang/Object;
.source "IObjectSelectionController.java"


# virtual methods
.method public abstract addNote()V
.end method

.method public abstract canAnnotate()Z
.end method

.method public abstract canHighlight()Z
.end method

.method public abstract createQuickHighlight()V
.end method

.method public abstract dispose()V
.end method

.method public abstract getCoveringHighlight()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
.end method

.method public abstract getLastUsedHighlightColor()Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;
.end method

.method public abstract hasSelectionOnScreen()Z
.end method

.method public abstract isCurrentSelectionQuickHighlightable()Z
.end method

.method public abstract isImageOnlySelected()Z
.end method

.method public abstract onHighlightButtonClicked(Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;Z)V
.end method

.method public abstract searchInBrowser()V
.end method

.method public abstract searchInDocument()V
.end method

.method public abstract searchInWikipedia()V
.end method

.method public abstract setQuickHighlightMinWords(I)V
.end method

.method public abstract showImageZoom()V
.end method
