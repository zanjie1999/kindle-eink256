.class Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$7;
.super Ljava/lang/Object;
.source "ReaderSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)V
    .locals 0

    .line 876
    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$7;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 880
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$7;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$200(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$7;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$200(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$7;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    .line 881
    invoke-static {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$2100(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/ReaderSearchAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$7;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$200(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 882
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$7;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {p1, p2}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$2200(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;Z)V

    .line 892
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$7;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$100(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Landroidx/appcompat/widget/SearchView;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$7;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$100(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Landroidx/appcompat/widget/SearchView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 894
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$7;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$000(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->CLEAR_BUTTON_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->TEXT_AREA_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    .line 897
    :goto_1
    iget-object p2, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$7;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recordMetricsForAction(Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;)V

    .line 898
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$7;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {p1, v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$002(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;Z)Z

    :cond_3
    return-void
.end method
