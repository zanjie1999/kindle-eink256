.class Lcom/amazon/kcp/search/widget/TopSearchWidget$1;
.super Ljava/lang/Object;
.source "TopSearchWidget.java"

# interfaces
.implements Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/widget/TopSearchWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/widget/TopSearchWidget;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/widget/TopSearchWidget;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/amazon/kcp/search/widget/TopSearchWidget$1;->this$0:Lcom/amazon/kcp/search/widget/TopSearchWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Ljava/lang/String;I)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchWidget$1;->this$0:Lcom/amazon/kcp/search/widget/TopSearchWidget;

    invoke-static {v0}, Lcom/amazon/kcp/search/widget/TopSearchWidget;->access$000(Lcom/amazon/kcp/search/widget/TopSearchWidget;)Lcom/amazon/kcp/search/widget/TopSearchWidget$TopSearchWidgetListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchWidget$1;->this$0:Lcom/amazon/kcp/search/widget/TopSearchWidget;

    invoke-static {v0}, Lcom/amazon/kcp/search/widget/TopSearchWidget;->access$000(Lcom/amazon/kcp/search/widget/TopSearchWidget;)Lcom/amazon/kcp/search/widget/TopSearchWidget$TopSearchWidgetListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/amazon/kcp/search/widget/TopSearchWidget$TopSearchWidgetListener;->onKeywordClick(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
