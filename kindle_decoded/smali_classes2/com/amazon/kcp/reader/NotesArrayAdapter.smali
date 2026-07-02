.class public Lcom/amazon/kcp/reader/NotesArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NotesArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/amazon/kcp/reader/Note;",
        ">;"
    }
.end annotation


# static fields
.field private static final NOTES_LENGTH:I = 0xfa


# instance fields
.field private final docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private itemViewResourceId:I

.field private notes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/List;ILcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;I",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lcom/amazon/kcp/reader/NotesArrayAdapter;->itemViewResourceId:I

    .line 96
    iput-object p2, p0, Lcom/amazon/kcp/reader/NotesArrayAdapter;->notes:Ljava/util/List;

    .line 98
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 99
    sget-object p1, Lcom/amazon/kcp/reader/Note;->SPINNER:Lcom/amazon/kcp/reader/Note;

    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 100
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    .line 101
    iput p3, p0, Lcom/amazon/kcp/reader/NotesArrayAdapter;->itemViewResourceId:I

    .line 102
    invoke-interface {p4}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object p1

    .line 103
    invoke-interface {p1, p0, p2}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->startPopulateBookText(Landroid/widget/ArrayAdapter;Ljava/util/List;)V

    .line 105
    :cond_0
    iput-object p4, p0, Lcom/amazon/kcp/reader/NotesArrayAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-void
.end method

.method public static createAdapter(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;ILcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;)Lcom/amazon/kcp/reader/NotesArrayAdapter;
    .locals 1

    .line 64
    new-instance v0, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 65
    invoke-virtual {v0, p3}, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->getFilteredNotes(Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;)Ljava/util/List;

    move-result-object p3

    .line 66
    new-instance v0, Lcom/amazon/kcp/reader/NotesArrayAdapter;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/amazon/kcp/reader/NotesArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/amazon/android/docviewer/KindleDocViewer;)V

    return-object v0
.end method

.method public static createAdapter(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;)Lcom/amazon/kcp/reader/NotesArrayAdapter;
    .locals 2

    .line 79
    new-instance v0, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 80
    invoke-virtual {v0, p2}, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->getFilteredNotes(Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;)Ljava/util/List;

    move-result-object p2

    .line 81
    new-instance v0, Lcom/amazon/kcp/reader/NotesArrayAdapter;

    sget v1, Lcom/amazon/kindle/krl/R$layout;->notes_list_item:I

    invoke-direct {v0, p0, p2, v1, p1}, Lcom/amazon/kcp/reader/NotesArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/amazon/android/docviewer/KindleDocViewer;)V

    return-object v0
.end method

.method private getAnnotationResId(Lcom/amazon/kcp/reader/Note;)I
    .locals 3

    .line 253
    iget v0, p1, Lcom/amazon/kcp/reader/Note;->imageResourceId:I

    .line 255
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 256
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 257
    :cond_0
    invoke-static {p1}, Lcom/amazon/kcp/util/AnnotationUtils;->getAnnotationColor(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "blue"

    .line 258
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    sget v0, Lcom/amazon/kindle/krl/R$drawable;->menu_highlight_blue:I

    goto :goto_0

    :cond_1
    const-string v1, "orange"

    .line 260
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 261
    sget v0, Lcom/amazon/kindle/krl/R$drawable;->menu_highlight_orange:I

    goto :goto_0

    :cond_2
    const-string v1, "pink"

    .line 262
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 263
    sget v0, Lcom/amazon/kindle/krl/R$drawable;->menu_highlight_pink:I

    :cond_3
    :goto_0
    return v0
.end method

.method private setHighlightAccessibilityTextOnView(Landroid/widget/TextView;Lcom/amazon/kcp/reader/Note;)V
    .locals 2

    .line 235
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 236
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 237
    :cond_0
    invoke-static {p2}, Lcom/amazon/kcp/util/AnnotationUtils;->getAnnotationColor(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "blue"

    .line 239
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    sget p2, Lcom/amazon/kindle/krl/R$string;->speak_mchl_blue:I

    goto :goto_0

    :cond_1
    const-string v0, "orange"

    .line 241
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    sget p2, Lcom/amazon/kindle/krl/R$string;->speak_mchl_orange:I

    goto :goto_0

    :cond_2
    const-string v0, "pink"

    .line 243
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 244
    sget p2, Lcom/amazon/kindle/krl/R$string;->speak_mchl_pink:I

    goto :goto_0

    .line 246
    :cond_3
    sget p2, Lcom/amazon/kindle/krl/R$string;->speak_mchl_yellow:I

    .line 248
    :goto_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method private setTextOnView(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 230
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setupNotesListView(Landroid/view/View;I)Landroid/view/View;
    .locals 13

    if-nez p1, :cond_0

    .line 130
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/amazon/kcp/reader/NotesArrayAdapter;->itemViewResourceId:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 135
    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/reader/Note;

    .line 138
    sget v0, Lcom/amazon/kindle/krl/R$id;->annotation_type:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 139
    sget v1, Lcom/amazon/kindle/krl/R$id;->annotation_image:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 140
    sget v2, Lcom/amazon/kindle/krl/R$id;->note_location_type:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 141
    sget v3, Lcom/amazon/kindle/krl/R$id;->annotation_location:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 143
    sget v4, Lcom/amazon/kindle/krl/R$id;->note_snippet:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 144
    sget v5, Lcom/amazon/kindle/krl/R$id;->note_item_loading_spinner:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 146
    sget-object v6, Lcom/amazon/kcp/reader/Note;->SPINNER:Lcom/amazon/kcp/reader/Note;

    const/16 v7, 0x8

    const-string v8, " "

    const/4 v9, 0x0

    if-ne p2, v6, :cond_2

    if-eqz v1, :cond_1

    .line 148
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    :cond_1
    invoke-direct {p0, v3, v8}, Lcom/amazon/kcp/reader/NotesArrayAdapter;->setTextOnView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0, v2, v8}, Lcom/amazon/kcp/reader/NotesArrayAdapter;->setTextOnView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/krl/R$string;->loading_book:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    return-object p1

    :cond_2
    const/4 v6, -0x1

    if-eqz v1, :cond_4

    .line 158
    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/NotesArrayAdapter;->getAnnotationResId(Lcom/amazon/kcp/reader/Note;)I

    move-result v10

    if-eq v10, v6, :cond_3

    .line 161
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 163
    :cond_3
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/Note;->getDrawableIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    :goto_0
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    :cond_4
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v1, p2, Lcom/amazon/kcp/reader/Note;->text:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/reader/NotesArrayAdapter;->setTextOnView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0, v0, p2}, Lcom/amazon/kcp/reader/NotesArrayAdapter;->setHighlightAccessibilityTextOnView(Landroid/widget/TextView;Lcom/amazon/kcp/reader/Note;)V

    .line 173
    iget v0, p2, Lcom/amazon/kcp/reader/Note;->typeTextResourceId:I

    if-eq v0, v6, :cond_5

    .line 174
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p2, Lcom/amazon/kcp/reader/Note;->typeTextResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 176
    :cond_5
    iget-object v0, p2, Lcom/amazon/kcp/reader/Note;->text:Ljava/lang/String;

    .line 182
    :goto_1
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/Note;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    .line 184
    iget-object v5, p0, Lcom/amazon/kcp/reader/NotesArrayAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v5}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object v5

    .line 189
    invoke-static {v5}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v10, 0x1

    if-eqz v6, :cond_6

    .line 190
    iget-object v5, p0, Lcom/amazon/kcp/reader/NotesArrayAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v5}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result v1

    .line 192
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/amazon/kindle/krl/R$string;->book_menu_notes_location_type:I

    new-array v11, v10, [Ljava/lang/Object;

    .line 193
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    .line 192
    invoke-virtual {v5, v6, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 195
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v11, Lcom/amazon/kindle/krl/R$string;->notes_location_type:I

    new-array v7, v7, [Ljava/lang/Object;

    .line 196
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v9

    aput-object v0, v7, v10

    .line 195
    invoke-virtual {v6, v11, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 198
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v6, Lcom/amazon/kindle/krl/R$string;->book_menu_notes_page_type:I

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v5, v11, v9

    invoke-virtual {v1, v6, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v11, Lcom/amazon/kindle/krl/R$string;->notes_page_type:I

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v9

    aput-object v0, v7, v10

    invoke-virtual {v6, v11, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v1

    .line 203
    :goto_2
    invoke-direct {p0, v3, v5}, Lcom/amazon/kcp/reader/NotesArrayAdapter;->setTextOnView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 204
    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/reader/NotesArrayAdapter;->setTextOnView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getUserText()Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 208
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getBookText()Ljava/lang/String;

    move-result-object v0

    .line 211
    :cond_7
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v1, 0xfa

    if-le p2, v1, :cond_8

    .line 212
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    :cond_8
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 216
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 218
    :cond_9
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-object p1
.end method


# virtual methods
.method public getItemViewResourceId()I
    .locals 1

    .line 275
    iget v0, p0, Lcom/amazon/kcp/reader/NotesArrayAdapter;->itemViewResourceId:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 110
    invoke-direct {p0, p2, p1}, Lcom/amazon/kcp/reader/NotesArrayAdapter;->setupNotesListView(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    .line 112
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/amazon/kcp/reader/NotesArrayAdapter;->notes:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p1, p3, :cond_0

    .line 113
    iget-object p1, p0, Lcom/amazon/kcp/reader/NotesArrayAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    .line 114
    sget-object p3, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->BOOK_MENU_POPULATION:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {p3}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p3, p1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-object p2
.end method
