.class Lcom/amazon/kcp/search/SearchHistoryWidget$1$1;
.super Ljava/lang/Object;
.source "SearchHistoryWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/SearchHistoryWidget$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/search/SearchHistoryWidget$1;

.field final synthetic val$adapterView:Landroid/widget/AdapterView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/SearchHistoryWidget$1;Landroid/widget/AdapterView;I)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchHistoryWidget$1$1;->this$1:Lcom/amazon/kcp/search/SearchHistoryWidget$1;

    iput-object p2, p0, Lcom/amazon/kcp/search/SearchHistoryWidget$1$1;->val$adapterView:Landroid/widget/AdapterView;

    iput p3, p0, Lcom/amazon/kcp/search/SearchHistoryWidget$1$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchHistoryWidget$1$1;->val$adapterView:Landroid/widget/AdapterView;

    iget v1, p0, Lcom/amazon/kcp/search/SearchHistoryWidget$1$1;->val$position:I

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchHistoryWidget$1$1;->this$1:Lcom/amazon/kcp/search/SearchHistoryWidget$1;

    iget-object v1, v1, Lcom/amazon/kcp/search/SearchHistoryWidget$1;->this$0:Lcom/amazon/kcp/search/SearchHistoryWidget;

    invoke-static {v1}, Lcom/amazon/kcp/search/SearchHistoryWidget;->access$000(Lcom/amazon/kcp/search/SearchHistoryWidget;)Lcom/amazon/kcp/search/SearchHistoryWidget$ISearchHistoryItemListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchHistoryWidget$1$1;->this$1:Lcom/amazon/kcp/search/SearchHistoryWidget$1;

    iget-object v1, v1, Lcom/amazon/kcp/search/SearchHistoryWidget$1;->this$0:Lcom/amazon/kcp/search/SearchHistoryWidget;

    invoke-static {v1}, Lcom/amazon/kcp/search/SearchHistoryWidget;->access$000(Lcom/amazon/kcp/search/SearchHistoryWidget;)Lcom/amazon/kcp/search/SearchHistoryWidget$ISearchHistoryItemListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kcp/search/SearchHistoryWidget$ISearchHistoryItemListener;->onItemClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
