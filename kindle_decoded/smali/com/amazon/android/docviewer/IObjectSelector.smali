.class public interface abstract Lcom/amazon/android/docviewer/IObjectSelector;
.super Ljava/lang/Object;
.source "IObjectSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/IObjectSelector$UserAction;
    }
.end annotation


# virtual methods
.method public abstract canPerformActionAt(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;III)Z
.end method

.method public abstract getRectForNote(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Landroid/graphics/Rect;
.end method

.method public abstract hasActionAnywhere(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z
.end method

.method public abstract isDoubleTapObjectSelected()Z
.end method

.method public abstract performAction(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)I
.end method

.method public abstract selectAt(III)Z
.end method

.method public abstract selectNext()Z
.end method

.method public abstract selectNone()V
.end method

.method public abstract selectPrevious()Z
.end method

.method public abstract setHighlightSelectionListener(Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;)V
.end method
