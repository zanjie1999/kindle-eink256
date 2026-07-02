.class public interface abstract Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;
.super Ljava/lang/Object;
.source "ICustomSelectionButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract getButtonState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;
.end method

.method public abstract getButtonText(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Ljava/lang/String;
.end method

.method public abstract getCategory()Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;
.end method

.method public abstract getCorrespondingFeatureType()Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;
.end method

.method public abstract getDrawable(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getOverflowMenuText(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Ljava/lang/String;
.end method

.method public abstract getPriority(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)I
.end method

.method public abstract isImageOnlyPresentationPreferred()Z
.end method

.method public abstract onClick(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V
.end method
