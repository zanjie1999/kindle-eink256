.class public interface abstract Lcom/amazon/android/docviewer/DebugKindleDocViewer;
.super Ljava/lang/Object;
.source "DebugKindleDocViewer.java"

# interfaces
.implements Lcom/amazon/android/docviewer/KindleDocViewer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;
    }
.end annotation


# virtual methods
.method public abstract debugApplySettings()V
.end method

.method public abstract debugGetBackgroundColor()I
.end method

.method public abstract debugGetFontSize()I
.end method

.method public abstract debugGetLineSpacing()I
.end method

.method public abstract debugGetMargins()Landroid/view/ViewGroup$MarginLayoutParams;
.end method

.method public abstract debugGetProperty(Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;)I
.end method

.method public abstract debugGetTextColor()I
.end method

.method public abstract debugSetBackgroundColor(I)V
.end method

.method public abstract debugSetFontSize(I)V
.end method

.method public abstract debugSetLineSpacing(I)V
.end method

.method public abstract debugSetMargins(IIII)V
.end method

.method public abstract debugSetProperty(Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;I)V
.end method

.method public abstract debugSetTextColor(I)V
.end method
