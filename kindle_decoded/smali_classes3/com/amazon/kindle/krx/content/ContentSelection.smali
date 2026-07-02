.class public Lcom/amazon/kindle/krx/content/ContentSelection;
.super Lcom/amazon/kindle/krx/content/BaseContentSelection;
.source "ContentSelection.java"


# instance fields
.field private book:Lcom/amazon/kindle/krx/content/IBook;

.field private objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/amazon/kindle/krx/content/BaseContentSelection;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/ContentSelection;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    .line 23
    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 26
    new-instance v0, Lcom/amazon/kindle/krx/content/LocalBook;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/content/LocalBook;-><init>(Lcom/amazon/kindle/model/content/ILocalBookInfo;)V

    iput-object v0, p0, Lcom/amazon/kindle/krx/content/ContentSelection;->book:Lcom/amazon/kindle/krx/content/IBook;

    :cond_0
    return-void
.end method

.method private setSelectionType(Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;)V
    .locals 1

    .line 143
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentSelection$1;->$SwitchMap$com$amazon$kindle$krx$content$IContentSelection$KRXSelectionType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 154
    iget-object p1, p0, Lcom/amazon/kindle/krx/content/ContentSelection;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->NONE_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->setSelectionType(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/krx/content/ContentSelection;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->TEXT_NON_EDITABLE:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->setSelectionType(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;)V

    goto :goto_0

    .line 148
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/krx/content/ContentSelection;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->GRAPHICAL:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->setSelectionType(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;)V

    goto :goto_0

    .line 145
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/krx/content/ContentSelection;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->TEXT:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->setSelectionType(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getBook()Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/ContentSelection;->book:Lcom/amazon/kindle/krx/content/IBook;

    return-object v0
.end method

.method public getLastSelectedWordPosition()Lcom/amazon/kindle/krx/reader/IPositionRange;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/ContentSelection;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionEnd()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/ContentSelection;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getLastSelectedPositionId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 44
    new-instance v1, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionStart()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/ContentSelection;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getFirstSelectedPositionId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 34
    new-instance v1, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionType()Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/ContentSelection;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionType()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    move-result-object v0

    .line 63
    sget-object v1, Lcom/amazon/kindle/krx/content/ContentSelection$1;->$SwitchMap$com$amazon$android$docviewer$selection$IObjectSelectionModel$SelectionType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 71
    sget-object v0, Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;->NONE_SELECTED:Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

    return-object v0

    .line 69
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;->TEXT_NON_EDITABLE:Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

    return-object v0

    .line 67
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;->GRAPHICAL_HIGHLIGHT:Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

    return-object v0

    .line 65
    :cond_2
    sget-object v0, Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;->TEXT_HIGHLIGHT:Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

    return-object v0
.end method

.method public hasSelectedHighlight()Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/ContentSelection;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectedHighlight()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSelection()Z
    .locals 3

    .line 96
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/content/ContentSelection;->getSelectionStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/content/ContentSelection;->getSelectionEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 98
    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/reader/IPosition;->isAfter(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/reader/IPosition;->isEqual(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isQuickHighlight()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/ContentSelection;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->isSelectionInQuickHighlightMode()Z

    move-result v0

    return v0
.end method

.method public selectNone()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/ContentSelection;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->selectNone()V

    return-void
.end method

.method public setSelection(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;)V
    .locals 1

    .line 121
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/content/ContentSelection;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/content/ContentSelection;->selectNone()V

    .line 124
    :cond_0
    invoke-direct {p0, p3}, Lcom/amazon/kindle/krx/content/ContentSelection;->setSelectionType(Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;)V

    .line 125
    iget-object p3, p0, Lcom/amazon/kindle/krx/content/ContentSelection;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p3, p1, p2}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->setSelection(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    return-void
.end method
