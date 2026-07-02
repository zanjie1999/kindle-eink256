.class public interface abstract Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;
.super Ljava/lang/Object;
.source "IObjectSelectionModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;,
        Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;,
        Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;
    }
.end annotation


# virtual methods
.method public abstract addWordToEndOfSelection()Ljava/lang/String;
.end method

.method public abstract addWordToStartOfSelection()Ljava/lang/String;
.end method

.method public abstract dispose()V
.end method

.method public abstract getCoveringRectangles()Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentSelectionColor()I
.end method

.method public abstract getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;
.end method

.method public abstract getFirstSelectedPositionId()I
.end method

.method public abstract getLastSelectedPositionId()I
.end method

.method public abstract getNextElementInPagePosition(I)I
.end method

.method public abstract getObjectSelectionController()Lcom/amazon/android/docviewer/selection/IObjectSelectionController;
.end method

.method public abstract getPreviousElementInPagePosition(I)I
.end method

.method public abstract getSelectedFirstWordStartId()I
.end method

.method public abstract getSelectedHighlight()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
.end method

.method public abstract getSelectedLastWordEndId()I
.end method

.method public abstract getSelectedText()Ljava/lang/String;
.end method

.method public abstract getSelectedTextToSearch()Ljava/lang/String;
.end method

.method public abstract getSelectionDisplay()Lcom/amazon/android/docviewer/selection/SelectionDisplay;
.end method

.method public abstract getSelectionEditor()Lcom/amazon/android/docviewer/selection/ISelectionEditor;
.end method

.method public abstract getSelectionMethod()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;
.end method

.method public abstract getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;
.end method

.method public abstract getSelectionType()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;
.end method

.method public abstract getTabletSelectedHighlight()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
.end method

.method public abstract isCurrentSelectionQuickHighlightable()Z
.end method

.method public abstract isDisposed()Z
.end method

.method public abstract isSelectionInQuickHighlightMode()Z
.end method

.method public abstract reInitializeOnOrientationChange()V
.end method

.method public abstract removeWordFromEndOfSelection()Ljava/lang/String;
.end method

.method public abstract removeWordFromStartOfSelection()Ljava/lang/String;
.end method

.method public abstract selectNone()V
.end method

.method public abstract setSelectedHighlight(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
.end method

.method public abstract setSelectedHighlight(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Z)V
.end method

.method public abstract setSelection(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V
.end method

.method public abstract setSelectionDisplay(Lcom/amazon/android/docviewer/selection/SelectionDisplay;)V
.end method

.method public abstract setSelectionMethod(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;)V
.end method

.method public abstract setSelectionType(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;)V
.end method

.method public abstract setStateCreatingAnnotation()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
