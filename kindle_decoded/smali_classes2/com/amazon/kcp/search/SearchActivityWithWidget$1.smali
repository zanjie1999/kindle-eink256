.class Lcom/amazon/kcp/search/SearchActivityWithWidget$1;
.super Ljava/lang/Object;
.source "SearchActivityWithWidget.java"

# interfaces
.implements Lcom/amazon/kcp/search/widget/TopSearchWidget$TopSearchWidgetListener;


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

    .line 38
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchActivityWithWidget$1;->this$0:Lcom/amazon/kcp/search/SearchActivityWithWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeywordClick(Ljava/lang/String;I)V
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivityWithWidget$1;->this$0:Lcom/amazon/kcp/search/SearchActivityWithWidget;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/RubySearchActivity;->updateSearchText(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivityWithWidget$1;->this$0:Lcom/amazon/kcp/search/SearchActivityWithWidget;

    iget-object v1, v0, Lcom/amazon/kcp/search/SearchActivity;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2, v2}, Lcom/amazon/kcp/search/SearchActivity;->doSearch(Ljava/lang/String;ZZZ)V

    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivityWithWidget$1;->this$0:Lcom/amazon/kcp/search/SearchActivityWithWidget;

    invoke-static {v0, p2}, Lcom/amazon/kcp/search/SearchActivityWithWidget;->access$100(Lcom/amazon/kcp/search/SearchActivityWithWidget;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/search/SearchActivityWithWidget;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivityWithWidget$1;->this$0:Lcom/amazon/kcp/search/SearchActivityWithWidget;

    invoke-static {v0, p2}, Lcom/amazon/kcp/search/SearchActivityWithWidget;->access$200(Lcom/amazon/kcp/search/SearchActivityWithWidget;I)V

    .line 45
    iget-object p2, p0, Lcom/amazon/kcp/search/SearchActivityWithWidget$1;->this$0:Lcom/amazon/kcp/search/SearchActivityWithWidget;

    invoke-static {p2}, Lcom/amazon/kcp/search/SearchActivityWithWidget;->access$300(Lcom/amazon/kcp/search/SearchActivityWithWidget;)Lcom/amazon/kcp/search/SearchHistoryWidget;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/search/SearchHistoryWidget;->addNewSearchHistoryItem(Ljava/lang/String;)V

    return-void
.end method
