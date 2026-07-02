.class public Lcom/amazon/kcp/search/RubySearchActivity;
.super Lcom/amazon/kcp/search/SearchActivity;
.source "RubySearchActivity.java"


# static fields
.field public static final TAB_NAME:Ljava/lang/String; = "TAB_NAME"


# instance fields
.field private searchCloseIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected clearResults()V
    .locals 2

    .line 82
    invoke-super {p0}, Lcom/amazon/kcp/search/SearchActivity;->clearResults()V

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/search/RubySearchActivity;->searchCloseIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method protected getListLayoutId()I
    .locals 1

    .line 88
    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->ruby_search_screen:I

    return v0
.end method

.method protected getSearchActionBar()I
    .locals 1

    .line 61
    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->ruby_search_action_bar:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_NAME"

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->previousTabName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 34
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->previousTabName:Ljava/lang/String;

    .line 37
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/search/SearchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    sget p1, Lcom/amazon/kindle/librarymodule/R$id;->search_close_icon:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/amazon/kcp/search/RubySearchActivity;->searchCloseIcon:Landroid/widget/ImageView;

    .line 40
    new-instance v0, Lcom/amazon/kcp/search/RubySearchActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/RubySearchActivity$1;-><init>(Lcom/amazon/kcp/search/RubySearchActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 50
    invoke-super {p0, p1}, Lcom/amazon/kcp/search/SearchActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 52
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->previousTabName:Ljava/lang/String;

    const-string v1, "TAB_NAME"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onSearchTextChanged(Ljava/lang/String;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Lcom/amazon/kcp/search/SearchActivity;->onSearchTextChanged(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/search/RubySearchActivity;->searchCloseIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method protected updateSearchText(Ljava/lang/String;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Lcom/amazon/kcp/search/SearchActivity;->updateSearchText(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/search/RubySearchActivity;->searchCloseIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
