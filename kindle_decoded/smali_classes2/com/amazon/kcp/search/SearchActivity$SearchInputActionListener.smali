.class public Lcom/amazon/kcp/search/SearchActivity$SearchInputActionListener;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SearchInputActionListener"
.end annotation


# instance fields
.field private activity:Lcom/amazon/kcp/search/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/search/SearchActivity;)V
    .locals 0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchActivity$SearchInputActionListener;->activity:Lcom/amazon/kcp/search/SearchActivity;

    return-void
.end method

.method private performImeSearchAction()V
    .locals 5

    .line 220
    invoke-static {}, Lcom/amazon/kcp/search/SearchActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Making search call with spell correction enabled after search button is clicked for query."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity$SearchInputActionListener;->activity:Lcom/amazon/kcp/search/SearchActivity;

    iget-object v1, v0, Lcom/amazon/kcp/search/SearchActivity;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/search/SearchActivity$SearchInputActionListener;->activity:Lcom/amazon/kcp/search/SearchActivity;

    invoke-static {v2}, Lcom/amazon/kcp/search/SearchActivity;->access$200(Lcom/amazon/kcp/search/SearchActivity;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/amazon/kcp/search/SearchActivity;->doSearch(Ljava/lang/String;ZZZ)V

    .line 222
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity$SearchInputActionListener;->activity:Lcom/amazon/kcp/search/SearchActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/SearchActivity;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/search/SearchActivity;->access$300(Lcom/amazon/kcp/search/SearchActivity;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity$SearchInputActionListener;->activity:Lcom/amazon/kcp/search/SearchActivity;

    iget-object v0, v0, Lcom/amazon/kcp/search/SearchActivity;->searchInput:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/amazon/android/util/UIUtils;->closeSoftKeyboard(Landroid/view/View;)V

    .line 224
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity$SearchInputActionListener;->activity:Lcom/amazon/kcp/search/SearchActivity;

    const-string v1, "SearchButtonClicked"

    invoke-static {v0, v1}, Lcom/amazon/kcp/search/SearchActivity;->access$400(Lcom/amazon/kcp/search/SearchActivity;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity$SearchInputActionListener;->activity:Lcom/amazon/kcp/search/SearchActivity;

    iget-object v0, v0, Lcom/amazon/kcp/search/SearchActivity;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kcp/search/SearchClickEvent;

    invoke-direct {v1}, Lcom/amazon/kcp/search/SearchClickEvent;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 226
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity$SearchInputActionListener;->activity:Lcom/amazon/kcp/search/SearchActivity;

    iget-object v0, v0, Lcom/amazon/kcp/search/SearchActivity;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 227
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity$SearchInputActionListener;->activity:Lcom/amazon/kcp/search/SearchActivity;

    sget-object v1, Lcom/amazon/kcp/search/SearchActivity$SearchAction;->SEARCH_COMMITTED:Lcom/amazon/kcp/search/SearchActivity$SearchAction;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/SearchActivity;->setLastAction(Lcom/amazon/kcp/search/SearchActivity$SearchAction;)V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x3

    if-ne p2, p3, :cond_1

    .line 209
    iget-object p2, p0, Lcom/amazon/kcp/search/SearchActivity$SearchInputActionListener;->activity:Lcom/amazon/kcp/search/SearchActivity;

    invoke-static {p2}, Lcom/amazon/kcp/search/SearchActivity;->access$000(Lcom/amazon/kcp/search/SearchActivity;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/amazon/kcp/search/SearchActivity$SearchInputActionListener;->activity:Lcom/amazon/kcp/search/SearchActivity;

    iget-object p3, p2, Lcom/amazon/kcp/search/SearchActivity;->recyclerView:Lcom/amazon/kcp/search/views/SearchRecyclerView;

    if-eqz p3, :cond_0

    .line 210
    invoke-virtual {p2, p1}, Lcom/amazon/kcp/search/SearchActivity;->setShouldShowSuggestions(Z)V

    .line 211
    iget-object p2, p0, Lcom/amazon/kcp/search/SearchActivity$SearchInputActionListener;->activity:Lcom/amazon/kcp/search/SearchActivity;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/amazon/kcp/search/SearchActivity;->setShouldShowLibraryResults(Z)V

    .line 212
    iget-object p2, p0, Lcom/amazon/kcp/search/SearchActivity$SearchInputActionListener;->activity:Lcom/amazon/kcp/search/SearchActivity;

    invoke-virtual {p2, p3}, Lcom/amazon/kcp/search/SearchActivity;->setShouldShowStoreResults(Z)V

    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity$SearchInputActionListener;->performImeSearchAction()V

    :cond_1
    return p1
.end method
