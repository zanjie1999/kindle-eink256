.class Lcom/amazon/kcp/search/SearchActivityWithWidget$2;
.super Ljava/lang/Object;
.source "SearchActivityWithWidget.java"

# interfaces
.implements Lcom/amazon/kcp/search/SearchHistoryWidget$ISearchHistoryItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/SearchActivityWithWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/SearchActivityWithWidget;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/SearchActivityWithWidget;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchActivityWithWidget$2;->this$0:Lcom/amazon/kcp/search/SearchActivityWithWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Ljava/lang/String;)V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivityWithWidget$2;->this$0:Lcom/amazon/kcp/search/SearchActivityWithWidget;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/RubySearchActivity;->updateSearchText(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivityWithWidget$2;->this$0:Lcom/amazon/kcp/search/SearchActivityWithWidget;

    iget-object v1, v0, Lcom/amazon/kcp/search/SearchActivity;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2, v2}, Lcom/amazon/kcp/search/SearchActivity;->doSearch(Ljava/lang/String;ZZZ)V

    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivityWithWidget$2;->this$0:Lcom/amazon/kcp/search/SearchActivityWithWidget;

    invoke-static {v0}, Lcom/amazon/kcp/search/SearchActivityWithWidget;->access$300(Lcom/amazon/kcp/search/SearchActivityWithWidget;)Lcom/amazon/kcp/search/SearchHistoryWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/SearchHistoryWidget;->addNewSearchHistoryItem(Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivityWithWidget$2;->this$0:Lcom/amazon/kcp/search/SearchActivityWithWidget;

    invoke-static {p1}, Lcom/amazon/kcp/search/SearchActivityWithWidget;->access$400(Lcom/amazon/kcp/search/SearchActivityWithWidget;)V

    return-void
.end method
