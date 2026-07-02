.class public Lcom/amazon/kindle/annotation/ui/NotesRenderer;
.super Lcom/amazon/kindle/annotation/ui/AnnotationRendererBase;
.source "NotesRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final iconMaxWidth:I

.field private final icons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/amazon/kindle/annotation/ui/AnnotationRendererBase;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/amazon/kindle/annotation/ui/NotesRenderer;->context:Landroid/content/Context;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/annotation/ui/NotesRenderer;->icons:Ljava/util/HashMap;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$dimen;->note_book_icon_max_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/annotation/ui/NotesRenderer;->iconMaxWidth:I

    return-void
.end method


# virtual methods
.method public drawAnnotation(Landroid/graphics/Canvas;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Rect;

    .line 69
    invoke-virtual {p0, p2, p3}, Lcom/amazon/kindle/annotation/ui/NotesRenderer;->getNoteIcon(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 70
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p3, v0

    .line 71
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Lcom/amazon/kindle/annotation/ui/NotesRenderer;->iconMaxWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v1, v0

    mul-float v1, v1, p3

    float-to-int p3, v1

    .line 73
    iget v1, p4, Landroid/graphics/Rect;->right:I

    .line 74
    iget p4, p4, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    add-int/2addr p3, p4

    .line 75
    invoke-virtual {p2, v1, p4, v0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 76
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getAnnotations(Lcom/amazon/android/docviewer/KindleDocViewer;II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            "II)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation

    .line 60
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getNotesInRange(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDecorationStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;
    .locals 1

    .line 97
    sget-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->Icon:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    return-object v0
.end method

.method getNoteIcon(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 114
    sget-object v0, Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;->DEFAULT:Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;

    .line 117
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getSearchResults()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 119
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/search/ISearchResult;

    .line 120
    instance-of v3, v2, Lcom/amazon/kcp/search/InBookAnnotationSearchResult;

    if-eqz v3, :cond_0

    .line 121
    check-cast v2, Lcom/amazon/kcp/search/InBookAnnotationSearchResult;

    .line 122
    invoke-virtual {v2}, Lcom/amazon/kcp/search/InBookAnnotationSearchResult;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 123
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object p1

    sget-object p2, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    if-ne p1, p2, :cond_1

    sget-object p1, Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;->SEARCH_BLACK:Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;->SEARCH:Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;

    :goto_0
    move-object v0, p1

    .line 131
    :cond_2
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/annotation/ui/NotesRenderer;->getNoteIconVariant(Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method getNoteIconVariant(Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/amazon/kindle/annotation/ui/NotesRenderer;->icons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/amazon/kindle/annotation/ui/NotesRenderer;->icons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/annotation/ui/NotesRenderer;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/annotation/ui/NotesRenderer$IconVariant;->getResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/amazon/kindle/annotation/ui/NotesRenderer;->icons:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public getNotes(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 81
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object p2

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-interface {p2, v0, v1}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getNotesInRange(II)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 83
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 86
    new-instance v2, Lcom/amazon/kcp/reader/Note;

    sget v3, Lcom/amazon/kindle/krl/R$drawable;->menu_note:I

    sget v4, Lcom/amazon/kindle/krl/R$string;->notes_note:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/amazon/kindle/krl/R$string;->notes_note:I

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/amazon/kcp/reader/Note;-><init>(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;ILjava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
