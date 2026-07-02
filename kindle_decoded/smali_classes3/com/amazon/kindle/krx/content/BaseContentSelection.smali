.class public Lcom/amazon/kindle/krx/content/BaseContentSelection;
.super Ljava/lang/Object;
.source "BaseContentSelection.java"

# interfaces
.implements Lcom/amazon/kindle/krx/content/IContentSelection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBook()Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastSelectedWordPosition()Lcom/amazon/kindle/krx/reader/IPositionRange;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionEnd()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionStart()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionType()Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasSelectedHighlight()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasSelection()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isQuickHighlight()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public selectNone()V
    .locals 0

    return-void
.end method

.method public setSelection(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;)V
    .locals 0

    return-void
.end method
