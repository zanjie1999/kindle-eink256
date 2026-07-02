.class public interface abstract Lcom/amazon/android/docviewer/IKindleDocViewerEvents;
.super Ljava/lang/Object;
.source "IKindleDocViewerEvents.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract onAfterSettingsChange()V
.end method

.method public abstract onCurrentPageDrawn()V
.end method

.method public abstract onDocViewerAfterPageTurn()V
.end method

.method public abstract onDocViewerAfterPositionChanged(I)V
.end method

.method public abstract onDocViewerBeforePageTurn()V
.end method

.method public abstract onDocViewerBeforePositionChange(I)V
.end method

.method public abstract onDocViewerOpenAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
.end method

.method public abstract onDocViewerRefresh()V
.end method

.method public abstract onDocViewerShowBookDetails()V
.end method

.method public abstract onDocViewerWillNavigateBack(J)V
.end method

.method public abstract onNavigationOrSettingsChangeFailed(I)V
.end method

.method public abstract onPageFlowChanged()V
.end method
