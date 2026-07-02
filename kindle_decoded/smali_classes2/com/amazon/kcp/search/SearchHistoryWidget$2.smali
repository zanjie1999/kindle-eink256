.class Lcom/amazon/kcp/search/SearchHistoryWidget$2;
.super Ljava/lang/Object;
.source "SearchHistoryWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/SearchHistoryWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/SearchHistoryWidget;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/SearchHistoryWidget;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchHistoryWidget$2;->this$0:Lcom/amazon/kcp/search/SearchHistoryWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 72
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchHistoryWidget$2;->this$0:Lcom/amazon/kcp/search/SearchHistoryWidget;

    invoke-static {p1}, Lcom/amazon/kcp/search/SearchHistoryWidget;->access$100(Lcom/amazon/kcp/search/SearchHistoryWidget;)Lcom/amazon/kcp/search/searchhistory/ISearchHistoryController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/search/searchhistory/ISearchHistoryController;->clearSearchHistory()V

    return-void
.end method
