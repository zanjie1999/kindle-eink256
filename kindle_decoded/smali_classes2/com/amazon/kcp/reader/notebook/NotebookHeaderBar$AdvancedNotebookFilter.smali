.class public Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;
.super Ljava/lang/Object;
.source "NotebookHeaderBar.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public includeImages:Z

.field public selectedChapters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public selectedFilters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;->selectedFilters:Ljava/util/Set;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;->selectedChapters:Ljava/util/Set;

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;->includeImages:Z

    .line 49
    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;->selectedFilters:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->ALL:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
