.class public Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;
.super Ljava/lang/Object;
.source "NotebookNoteTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/notebook/NotebookNoteTools$PositionHierarchy;
    }
.end annotation


# static fields
.field private static final METADATA_KEY_HIGHLIGHT_COLOR:Ljava/lang/String; = "mchl_color"

.field private static final METADATA_KEY_TAGS:Ljava/lang/String; = "tags"

.field private static final PAGE_POSITION:I = 0x2

.field private static final STAR_TAG:Ljava/lang/String; = "star"

.field private static final SUBTOC_POSITION:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final TOC_POSITION:I


# instance fields
.field m_context:Landroid/content/Context;

.field private final m_docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private toc:Lcom/amazon/android/docviewer/IKindleTOC;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->m_docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 54
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->getTOC(Lcom/amazon/android/docviewer/KindleDocViewer;)Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->toc:Lcom/amazon/android/docviewer/IKindleTOC;

    .line 55
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->m_context:Landroid/content/Context;

    return-void
.end method

.method private filterNotesByChapters(Ljava/util/List;Ljava/util/Set;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 84
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 87
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 91
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kcp/reader/Note;

    .line 92
    invoke-virtual {p0, v4, v1}, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->getTOCLabels(Lcom/amazon/kcp/reader/Note;Lcom/amazon/kcp/reader/Note;)Lcom/amazon/kcp/reader/notebook/NotebookNoteTools$PositionHierarchy;

    move-result-object v1

    .line 94
    iget-object v5, v1, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools$PositionHierarchy;->tocPosition:Ljava/lang/String;

    if-nez v5, :cond_1

    if-eqz v3, :cond_1

    .line 95
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 96
    :cond_1
    iget-object v5, v1, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools$PositionHierarchy;->tocPosition:Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    .line 98
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 99
    :cond_2
    iget-object v1, v1, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools$PositionHierarchy;->tocPosition:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v3, 0x0

    :cond_3
    :goto_1
    move-object v1, v4

    goto :goto_0

    :cond_4
    return-object v0

    :cond_5
    :goto_2
    return-object p1
.end method

.method private filterNotesByNotebookFilters(Ljava/util/List;Ljava/util/Set;ZII)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;",
            ">;ZII)",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 113
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 114
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 116
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x7

    if-eqz v5, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    .line 117
    sget-object v7, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->STARRED:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    const/4 v8, 0x1

    if-ne v5, v7, :cond_1

    const/4 v4, 0x1

    .line 121
    :cond_1
    sget-object v7, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->BOOKMARKS:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    if-eq v5, v7, :cond_2

    sget-object v7, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->ALL:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    if-ne v5, v7, :cond_3

    .line 122
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_3
    sget-object v7, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->HIGHLIGHTS:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    if-eq v5, v7, :cond_4

    sget-object v7, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->ALL:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    if-ne v5, v7, :cond_5

    :cond_4
    const/4 v7, 0x2

    .line 126
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_5
    sget-object v6, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->NOTES:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    if-eq v5, v6, :cond_6

    sget-object v6, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->ALL:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    if-ne v5, v6, :cond_7

    .line 131
    :cond_6
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_7
    sget-object v6, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->POPULAR_HIGHLIGHT:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    if-ne v5, v6, :cond_8

    const/4 v6, 0x6

    .line 135
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_8
    sget-object v6, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->HIGHLIGHTS_BLUE:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    if-eq v5, v6, :cond_9

    sget-object v6, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->HIGHLIGHTS_ORANGE:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    if-eq v5, v6, :cond_9

    sget-object v6, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->HIGHLIGHTS_PINK:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    if-eq v5, v6, :cond_9

    sget-object v6, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->HIGHLIGHTS_YELLOW:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    if-ne v5, v6, :cond_0

    .line 142
    :cond_9
    invoke-static {v5}, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->getHighlightFilterColor(Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/reader/Note;

    if-nez p3, :cond_c

    .line 148
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v5

    if-ne v5, v6, :cond_c

    goto :goto_1

    .line 152
    :cond_c
    invoke-direct {p0, p2, p4, p5}, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->isNoteInRange(Lcom/amazon/kcp/reader/Note;II)Z

    move-result v5

    .line 153
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 154
    invoke-static {p2}, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->isStarred(Lcom/amazon/kcp/reader/Note;)Z

    move-result v8

    .line 156
    invoke-static {p2}, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->getHighlightColor(Lcom/amazon/kcp/reader/Note;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 157
    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_2

    :cond_d
    const/4 v9, 0x0

    :goto_2
    if-eqz v5, :cond_b

    if-eqz v4, :cond_e

    if-eqz v4, :cond_b

    if-eqz v8, :cond_b

    :cond_e
    if-nez v7, :cond_f

    if-eqz v9, :cond_b

    .line 161
    :cond_f
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 166
    :cond_10
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->sortNotes(Ljava/util/List;)Ljava/util/List;

    return-object v0
.end method

.method private getHierarchyPair(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/android/docviewer/ITOCItem;",
            ">;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->toc:Lcom/amazon/android/docviewer/IKindleTOC;

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->m_docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->toc:Lcom/amazon/android/docviewer/IKindleTOC;

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->toc:Lcom/amazon/android/docviewer/IKindleTOC;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 273
    :cond_1
    instance-of v1, v0, Lcom/amazon/android/docviewer/IBookHierarchicalTOC;

    if-eqz v1, :cond_2

    .line 274
    check-cast v0, Lcom/amazon/android/docviewer/IBookHierarchicalTOC;

    const/4 v1, 0x2

    invoke-interface {v0, p1, v1}, Lcom/amazon/android/docviewer/IBookHierarchicalTOC;->getHierarchyForPosition(II)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 276
    :cond_2
    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/IKindleTOC;->getTopLevelTOCItemAtPosition(I)Lcom/amazon/android/docviewer/ITOCItem;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/android/docviewer/ITOCItem;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 277
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private static getHighlightColor(Lcom/amazon/kcp/reader/Note;)Ljava/lang/String;
    .locals 2

    .line 212
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getMetadata()Ljava/util/Map;

    move-result-object p0

    const-string v0, "mchl_color"

    .line 219
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "yellow"

    :goto_0
    return-object p0
.end method

.method private static getHighlightFilterColor(Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;)Ljava/lang/String;
    .locals 3

    .line 190
    sget-object v0, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools$1;->$SwitchMap$com$amazon$kcp$reader$notebook$NotebookHeaderBar$NotebookFilter:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 204
    sget-object v0, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected invalid filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "yellow"

    goto :goto_0

    :cond_1
    const-string p0, "pink"

    goto :goto_0

    :cond_2
    const-string p0, "orange"

    goto :goto_0

    :cond_3
    const-string p0, "blue"

    :goto_0
    return-object p0
.end method

.method private getLabelIfChanged(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    .line 282
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getPreferredPositionLabel(I)Ljava/lang/String;
    .locals 4

    .line 296
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->getPageLabelFromPosition(I)Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 298
    iget-object p1, p0, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->m_context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/krl/R$string;->book_menu_notes_page_type:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->m_docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->suppressLocations()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 307
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->getLocationFromPosition(I)I

    move-result p1

    .line 308
    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->m_context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/krl/R$string;->book_menu_notes_location_type:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private isNoteInRange(Lcom/amazon/kcp/reader/Note;II)Z
    .locals 1

    .line 347
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    if-lt v0, p2, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    if-gt p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static isStarred(Lcom/amazon/kcp/reader/Note;)Z
    .locals 1

    .line 176
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getMetadata()Ljava/util/Map;

    move-result-object p0

    const-string v0, "tags"

    .line 179
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    const-string v0, "star"

    .line 180
    invoke-interface {p0, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private sortNotes(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;"
        }
    .end annotation

    .line 170
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object p1
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .locals 1

    .line 72
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getFilteredNotes(Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->m_context:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->m_docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v0, v1}, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->getAllAnnotations(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/util/List;

    move-result-object v0

    .line 77
    iget-object v1, p1, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;->selectedChapters:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->filterNotesByChapters(Ljava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object v3

    .line 78
    iget-object v4, p1, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;->selectedFilters:Ljava/util/Set;

    iget-boolean v5, p1, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;->includeImages:Z

    const/4 v6, 0x0

    const v7, 0x7fffffff

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->filterNotesByNotebookFilters(Ljava/util/List;Ljava/util/Set;ZII)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method getLocationFromPosition(I)I
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->m_docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result p1

    return p1
.end method

.method getPageLabelFromPosition(I)Ljava/lang/String;
    .locals 1

    .line 321
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->m_docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v0

    return-object v0
.end method

.method getTOC(Lcom/amazon/android/docviewer/KindleDocViewer;)Lcom/amazon/android/docviewer/IKindleTOC;
    .locals 0

    .line 64
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object p1

    return-object p1
.end method

.method public getTOCLabels(Lcom/amazon/kcp/reader/Note;Lcom/amazon/kcp/reader/Note;)Lcom/amazon/kcp/reader/notebook/NotebookNoteTools$PositionHierarchy;
    .locals 7

    if-nez p1, :cond_0

    .line 226
    new-instance p1, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools$PositionHierarchy;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools$PositionHierarchy;-><init>(Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;)V

    return-object p1

    .line 229
    :cond_0
    new-instance v0, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools$PositionHierarchy;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools$PositionHierarchy;-><init>(Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_1

    .line 236
    iget-object p2, p0, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->m_context:Landroid/content/Context;

    sget v4, Lcom/amazon/kindle/krl/R$string;->front_matter:I

    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools$PositionHierarchy;->tocPosition:Ljava/lang/String;

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_5

    .line 239
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/Note;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    .line 240
    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->getPreferredPositionLabel(I)Ljava/lang/String;

    move-result-object v4

    .line 241
    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->getHierarchyPair(I)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 243
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/android/docviewer/ITOCItem;

    invoke-interface {v5}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    move-object v5, v3

    .line 244
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v2, :cond_3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/android/docviewer/ITOCItem;

    invoke-interface {p2}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_3
    move-object p2, v3

    goto :goto_2

    :cond_4
    move-object p2, v3

    move-object v5, p2

    goto :goto_2

    :cond_5
    :goto_1
    move-object p2, v3

    move-object v4, p2

    move-object v5, v4

    .line 249
    :goto_2
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    .line 250
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->getPreferredPositionLabel(I)Ljava/lang/String;

    move-result-object v6

    .line 252
    invoke-direct {p0, v6, v4}, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->getLabelIfChanged(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 254
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->getHierarchyPair(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 256
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/ITOCItem;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_6
    move-object v1, v3

    .line 257
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_7

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/ITOCItem;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    :cond_7
    if-eqz v1, :cond_8

    .line 259
    invoke-direct {p0, v1, v5}, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->getLabelIfChanged(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools$PositionHierarchy;->tocPosition:Ljava/lang/String;

    .line 261
    :cond_8
    invoke-direct {p0, v3, p2}, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->getLabelIfChanged(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_9
    return-object v0
.end method
