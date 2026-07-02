.class public Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;
.super Ljava/lang/Object;
.source "NoteCardUIData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;
    }
.end annotation


# instance fields
.field private annotationIndex:I

.field private annotationStartPos:I

.field private annotationType:I

.field private bundle:Landroid/os/Bundle;

.field private noteEditorEntry:Ljava/lang/String;

.field private selectionEndPos:I

.field private selectionStartPos:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;->bundle:Landroid/os/Bundle;

    const/4 v0, -0x1

    const-string v1, "annotation_index"

    .line 87
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;->annotationIndex:I

    const-string v1, "selectedAnnotationStart"

    .line 88
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;->annotationStartPos:I

    const-string v1, "selectionStartPos"

    .line 89
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;->selectionStartPos:I

    const-string v1, "selectionEndPos"

    .line 90
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;->selectionEndPos:I

    const-string v0, "selectedAnnotationType"

    const/4 v1, 0x1

    .line 91
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;->annotationType:I

    const-string v0, "noteEditorEntry"

    const/4 v1, 0x0

    .line 92
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;->noteEditorEntry:Ljava/lang/String;

    return-void
.end method

.method private getAddIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 143
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 144
    sget-object v1, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;->ADDED:Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;

    const-string v2, "result_of_edit"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "note_text"

    .line 145
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    iget-object p1, p0, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;->noteEditorEntry:Ljava/lang/String;

    const-string v1, "noteEditorEntry"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private getEditIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 132
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 133
    sget-object v1, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;->EDITED:Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;

    const-string v2, "result_of_edit"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "note_text"

    .line 134
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    iget p1, p0, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;->annotationIndex:I

    const-string v1, "annotation_index"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    iget-object p1, p0, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;->noteEditorEntry:Ljava/lang/String;

    const-string v1, "noteEditorEntry"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public getDeleteIntent()Landroid/content/Intent;
    .locals 3

    .line 121
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 122
    sget-object v1, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;->DELETED:Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;

    const-string v2, "result_of_edit"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 123
    iget v1, p0, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;->annotationIndex:I

    const-string v2, "annotation_index"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    iget v1, p0, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;->annotationType:I

    const-string v2, "selectedAnnotationType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    iget-object v1, p0, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;->noteEditorEntry:Ljava/lang/String;

    const-string v2, "noteEditorEntry"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public getSaveIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "note_text"

    .line 98
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAnnotationsManager()Lcom/amazon/kindle/annotation/IAnnotationsManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/annotation/IAnnotationsManager;->removeInvalidXMLCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;->hasValidAnnotationIndex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;->getDeleteIntent()Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 106
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;->getEditIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 109
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;->getAddIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 112
    :goto_0
    iget v0, p0, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;->annotationStartPos:I

    const-string v1, "selectedAnnotationStart"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    iget v0, p0, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;->annotationType:I

    const-string v1, "selectedAnnotationType"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    iget v0, p0, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;->selectionStartPos:I

    const-string v1, "selectionStartPos"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    iget v0, p0, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;->selectionEndPos:I

    const-string v1, "selectionEndPos"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p1
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;->bundle:Landroid/os/Bundle;

    const-string v1, "note_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;->bundle:Landroid/os/Bundle;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasValidAnnotationIndex()Z
    .locals 2

    .line 165
    iget v0, p0, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;->annotationIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
