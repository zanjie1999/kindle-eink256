.class Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$1;
.super Ljava/lang/Object;
.source "ReaderSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;Landroid/content/Context;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$1;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    iput-object p2, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 462
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$1;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$002(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;Z)Z

    .line 469
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$1;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$100(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Landroidx/appcompat/widget/SearchView;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 470
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$1;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$100(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Landroidx/appcompat/widget/SearchView;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 473
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$1;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    sget v1, Lcom/amazon/kindle/krl/R$id;->search_src_text:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 475
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 478
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$1;->val$context:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_2

    .line 480
    invoke-virtual {v1, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 484
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$1;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$200(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$1;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$200(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->didStartSearch()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$1;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    .line 485
    invoke-static {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$200(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->isSearchFinished()Z

    move-result p1

    if-nez p1, :cond_3

    .line 486
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$1;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$200(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->cancelSearch()V

    :cond_3
    return-void
.end method
