.class public Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "UpdatedContentItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final CLASS_TAG:Ljava/lang/String;


# instance fields
.field private combinedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private isLoadingMoreVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->CLASS_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->isLoadingMoreVisible:Z

    .line 32
    iput-object p1, p0, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->combinedList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public appendToList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 149
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->combinedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public combinedListCount()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->combinedList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 68
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCombinedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->combinedList:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->combinedList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 138
    :cond_0
    iget-boolean v1, p0, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->isLoadingMoreVisible:Z

    if-eqz v1, :cond_1

    .line 139
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 141
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->isLoadingMoreVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->combinedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isLoadingMoreVisible()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->isLoadingMoreVisible:Z

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onBindViewHolder called which will soon have the UpdatedContentItemHolder do the actual binding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    iget-boolean v0, p0, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->isLoadingMoreVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->combinedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->combinedList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;

    .line 124
    check-cast p1, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder;

    .line 125
    invoke-virtual {p1, p2}, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder;->bindUpdateItem(Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onCreateViewHolder called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 95
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/theme/IThemeManager;->areMultipleThemesSupported()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 96
    sget p2, Lcom/amazon/versioning/R$layout;->loading_item_ruby:I

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 97
    new-instance p2, Lcom/amazon/versioning/reader/ui/recycler/UpdateContentLoadingHolder;

    invoke-direct {p2, p1}, Lcom/amazon/versioning/reader/ui/recycler/UpdateContentLoadingHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 99
    :cond_0
    sget p2, Lcom/amazon/versioning/R$layout;->loading_item:I

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 100
    new-instance p2, Lcom/amazon/versioning/reader/ui/recycler/UpdateContentLoadingHolder;

    invoke-direct {p2, p1}, Lcom/amazon/versioning/reader/ui/recycler/UpdateContentLoadingHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 104
    :cond_1
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/theme/IThemeManager;->areMultipleThemesSupported()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 105
    sget p2, Lcom/amazon/versioning/R$layout;->update_item_ruby:I

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 106
    new-instance p2, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder;

    invoke-direct {p2, p1}, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 108
    :cond_2
    sget p2, Lcom/amazon/versioning/R$layout;->update_item:I

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 109
    new-instance p2, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder;

    invoke-direct {p2, p1}, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public removeLoadingMore()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->isLoadingMoreVisible:Z

    return-void
.end method

.method public showLoadingMore()V
    .locals 1

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->isLoadingMoreVisible:Z

    return-void
.end method
