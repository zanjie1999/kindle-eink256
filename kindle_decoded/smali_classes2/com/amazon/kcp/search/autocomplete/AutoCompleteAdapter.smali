.class public Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;
.super Lcom/amazon/kcp/search/ReaderSearchAdapter;
.source "AutoCompleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter$LoaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/search/ReaderSearchAdapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_LOADER:I = 0x2

.field private static final VIEW_TYPE_TERM:I = 0x1


# instance fields
.field private autoCompleteDataManager:Lcom/amazon/android/autocomplete/AutoCompleteDataManager;

.field private currentBook:Lcom/amazon/kindle/krx/content/IBook;

.field private currentSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isReadingCacheFinished:Z

.field private mainThreadHandler:Landroid/os/Handler;

.field private parentOnClick:Lcom/amazon/kcp/search/OnSearchTermClickListener;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/amazon/kcp/search/ReaderSearchAdapter;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;->isReadingCacheFinished:Z

    .line 52
    iput-object p1, p0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    .line 53
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;->mainThreadHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getDividerItemDecoration(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;->isReadingCacheFinished:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;->currentSet:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 142
    iget-boolean p1, p0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;->isReadingCacheFinished:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 134
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;->currentSet:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 135
    check-cast p1, Lcom/amazon/kcp/search/SearchTermViewHolder;

    .line 136
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/search/SearchTermViewHolder;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 105
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/amazon/kindle/krl/R$layout;->reader_search_list_spinner:I

    .line 106
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 107
    new-instance p2, Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter$LoaderViewHolder;

    invoke-direct {p2, p1}, Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter$LoaderViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 109
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/amazon/kindle/krl/R$layout;->recent_search_term_list_item:I

    .line 110
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 111
    iget-object p2, p0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-static {p2}, Lcom/amazon/kindle/utils/RTLUtils;->getLayoutDirection(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 112
    iget-object p2, p0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-static {p2}, Lcom/amazon/kindle/utils/RTLUtils;->getTextDirection(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTextDirection(I)V

    .line 113
    new-instance p2, Lcom/amazon/kcp/search/SearchTermViewHolder;

    invoke-direct {p2, p1}, Lcom/amazon/kcp/search/SearchTermViewHolder;-><init>(Landroid/view/View;)V

    .line 114
    iget-object p1, p0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;->parentOnClick:Lcom/amazon/kcp/search/OnSearchTermClickListener;

    if-eqz p1, :cond_1

    .line 115
    invoke-virtual {p2, p1}, Lcom/amazon/kcp/search/SearchTermViewHolder;->setOnSearchTermClickListener(Lcom/amazon/kcp/search/OnSearchTermClickListener;)V

    :cond_1
    return-object p2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public performAutoComplete(Ljava/lang/String;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;->autoCompleteDataManager:Lcom/amazon/android/autocomplete/AutoCompleteDataManager;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0, p1}, Lcom/amazon/android/autocomplete/AutoCompleteDataManager;->getAutoCompleteSuggestions(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;->currentSet:Ljava/util/List;

    .line 69
    iget-object p1, p0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;->mainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter$1;-><init>(Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setAutoCompleteDataManager(Lcom/amazon/android/autocomplete/AutoCompleteDataManager;)V
    .locals 1

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;->isReadingCacheFinished:Z

    if-eqz p1, :cond_0

    .line 87
    iput-object p1, p0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;->autoCompleteDataManager:Lcom/amazon/android/autocomplete/AutoCompleteDataManager;

    :cond_0
    return-void
.end method

.method public setOnSearchTermClickListener(Lcom/amazon/kcp/search/OnSearchTermClickListener;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;->parentOnClick:Lcom/amazon/kcp/search/OnSearchTermClickListener;

    return-void
.end method
