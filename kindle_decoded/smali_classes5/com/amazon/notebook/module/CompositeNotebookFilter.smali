.class public Lcom/amazon/notebook/module/CompositeNotebookFilter;
.super Ljava/lang/Object;
.source "CompositeNotebookFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private includeImages:Z

.field private selectedChapters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectedFilters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/notebook/module/NotebookFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/notebook/module/CompositeNotebookFilter;->selectedFilters:Ljava/util/Set;

    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/notebook/module/CompositeNotebookFilter;->selectedChapters:Ljava/util/Set;

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/amazon/notebook/module/CompositeNotebookFilter;->includeImages:Z

    .line 17
    invoke-virtual {p0}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->getSelectedFilters()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/amazon/notebook/module/NotebookFilter;->ALL:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/amazon/notebook/module/CompositeNotebookFilter;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/notebook/module/CompositeNotebookFilter;->selectedFilters:Ljava/util/Set;

    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/notebook/module/CompositeNotebookFilter;->selectedChapters:Ljava/util/Set;

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/amazon/notebook/module/CompositeNotebookFilter;->includeImages:Z

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->getSelectedFilters()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->setSelectedFilters(Ljava/util/Set;)V

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->getSelectedChapters()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->setSelectedChapters(Ljava/util/Set;)V

    .line 23
    invoke-virtual {p1}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->shouldIncludeImages()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->setShouldIncludeImages(Z)V

    return-void
.end method

.method private setSelectedChapters(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/amazon/notebook/module/CompositeNotebookFilter;->selectedChapters:Ljava/util/Set;

    return-void
.end method

.method private setSelectedFilters(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/notebook/module/NotebookFilter;",
            ">;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/amazon/notebook/module/CompositeNotebookFilter;->selectedFilters:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method getFilteredAnnotationTypes()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 60
    invoke-virtual {p0}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->getSelectedFilters()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/notebook/module/NotebookFilter;

    .line 61
    sget-object v3, Lcom/amazon/notebook/module/NotebookFilter;->BOOKMARKS:Lcom/amazon/notebook/module/NotebookFilter;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/amazon/notebook/module/NotebookFilter;->ALL:Lcom/amazon/notebook/module/NotebookFilter;

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v3, 0x0

    .line 62
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_2
    sget-object v3, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS:Lcom/amazon/notebook/module/NotebookFilter;

    if-eq v2, v3, :cond_3

    sget-object v3, Lcom/amazon/notebook/module/NotebookFilter;->ALL:Lcom/amazon/notebook/module/NotebookFilter;

    if-ne v2, v3, :cond_4

    :cond_3
    const/4 v3, 0x2

    .line 66
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {p0}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->shouldIncludeImages()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x7

    .line 68
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_4
    sget-object v3, Lcom/amazon/notebook/module/NotebookFilter;->NOTES:Lcom/amazon/notebook/module/NotebookFilter;

    if-eq v2, v3, :cond_5

    sget-object v3, Lcom/amazon/notebook/module/NotebookFilter;->ALL:Lcom/amazon/notebook/module/NotebookFilter;

    if-ne v2, v3, :cond_0

    :cond_5
    const/4 v2, 0x1

    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method getFilteredHighlightColors()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHT_COLOR_FILTERS:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 81
    sget-object v1, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHT_COLOR_FILTERS:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/notebook/module/NotebookFilter;

    .line 82
    invoke-virtual {p0}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->getSelectedFilters()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    invoke-virtual {v2}, Lcom/amazon/notebook/module/NotebookFilter;->getColorTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSelectedChapters()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/amazon/notebook/module/CompositeNotebookFilter;->selectedChapters:Ljava/util/Set;

    return-object v0
.end method

.method public getSelectedFilters()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/notebook/module/NotebookFilter;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/amazon/notebook/module/CompositeNotebookFilter;->selectedFilters:Ljava/util/Set;

    return-object v0
.end method

.method isStarredAnnotationFiltered()Z
    .locals 2

    .line 55
    invoke-virtual {p0}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->getSelectedFilters()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/amazon/notebook/module/NotebookFilter;->STARRED:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setShouldIncludeImages(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/amazon/notebook/module/CompositeNotebookFilter;->includeImages:Z

    return-void
.end method

.method public shouldIncludeImages()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/amazon/notebook/module/CompositeNotebookFilter;->includeImages:Z

    return v0
.end method
