.class public Lcom/amazon/android/widget/SearchViewWrapper;
.super Ljava/lang/Object;
.source "SearchViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/widget/SearchViewWrapper$OnCloseListenerWrapper;,
        Lcom/amazon/android/widget/SearchViewWrapper$OnFocusChangeListenerWrapper;,
        Lcom/amazon/android/widget/SearchViewWrapper$OnQueryTextListenerWrapper;,
        Lcom/amazon/android/widget/SearchViewWrapper$Availability;
    }
.end annotation


# instance fields
.field private searchView:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>(Landroid/view/MenuItem;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    .line 97
    instance-of v0, p1, Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 98
    check-cast p1, Landroid/widget/SearchView;

    iput-object p1, p0, Lcom/amazon/android/widget/SearchViewWrapper;->searchView:Landroid/widget/SearchView;

    :cond_0
    return-void
.end method


# virtual methods
.method public isLayoutRequested()Z
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/amazon/android/widget/SearchViewWrapper;->searchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Landroid/widget/SearchView;->isLayoutRequested()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setIconified(Z)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/amazon/android/widget/SearchViewWrapper;->searchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0, p1}, Landroid/widget/SearchView;->setIconified(Z)V

    :cond_0
    return-void
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/amazon/android/widget/SearchViewWrapper;->searchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0, p1}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    :cond_0
    return-void
.end method

.method public setOnCloseListener(Lcom/amazon/android/widget/SearchViewWrapper$OnCloseListenerWrapper;)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/amazon/android/widget/SearchViewWrapper;->searchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 154
    new-instance v1, Lcom/amazon/android/widget/SearchViewWrapper$3;

    invoke-direct {v1, p0, p1}, Lcom/amazon/android/widget/SearchViewWrapper$3;-><init>(Lcom/amazon/android/widget/SearchViewWrapper;Lcom/amazon/android/widget/SearchViewWrapper$OnCloseListenerWrapper;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 161
    invoke-virtual {v0, p1}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Lcom/amazon/android/widget/SearchViewWrapper$OnFocusChangeListenerWrapper;)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/amazon/android/widget/SearchViewWrapper;->searchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 132
    new-instance v1, Lcom/amazon/android/widget/SearchViewWrapper$2;

    invoke-direct {v1, p0, p1}, Lcom/amazon/android/widget/SearchViewWrapper$2;-><init>(Lcom/amazon/android/widget/SearchViewWrapper;Lcom/amazon/android/widget/SearchViewWrapper$OnFocusChangeListenerWrapper;)V

    .line 133
    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 142
    invoke-virtual {v0, p1}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnQueryTextListener(Lcom/amazon/android/widget/SearchViewWrapper$OnQueryTextListenerWrapper;)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/amazon/android/widget/SearchViewWrapper;->searchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 108
    new-instance v1, Lcom/amazon/android/widget/SearchViewWrapper$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/android/widget/SearchViewWrapper$1;-><init>(Lcom/amazon/android/widget/SearchViewWrapper;Lcom/amazon/android/widget/SearchViewWrapper$OnQueryTextListenerWrapper;)V

    .line 109
    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 121
    invoke-virtual {v0, p1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSearchableInfo(Landroid/app/SearchManager;Landroid/content/ComponentName;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 192
    iget-object v0, p0, Lcom/amazon/android/widget/SearchViewWrapper;->searchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p1, p2}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object p1

    .line 193
    invoke-virtual {v0, p1}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    :cond_0
    return-void
.end method
