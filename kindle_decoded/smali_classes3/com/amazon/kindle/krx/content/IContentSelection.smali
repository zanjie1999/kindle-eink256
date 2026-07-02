.class public interface abstract Lcom/amazon/kindle/krx/content/IContentSelection;
.super Ljava/lang/Object;
.source "IContentSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;
    }
.end annotation


# virtual methods
.method public abstract getBook()Lcom/amazon/kindle/krx/content/IBook;
.end method

.method public abstract getLastSelectedWordPosition()Lcom/amazon/kindle/krx/reader/IPositionRange;
.end method

.method public abstract getSelectedText()Ljava/lang/String;
.end method

.method public abstract getSelectionEnd()Lcom/amazon/kindle/krx/reader/IPosition;
.end method

.method public abstract getSelectionStart()Lcom/amazon/kindle/krx/reader/IPosition;
.end method

.method public abstract getSelectionType()Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;
.end method

.method public abstract hasSelectedHighlight()Z
.end method

.method public abstract hasSelection()Z
.end method

.method public abstract isQuickHighlight()Z
.end method

.method public abstract selectNone()V
.end method

.method public abstract setSelection(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;)V
.end method
