.class Lcom/amazon/kcp/search/widget/TopSearchWidget$3;
.super Ljava/lang/Object;
.source "TopSearchWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/widget/TopSearchWidget;->refreshTopSearchWords()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/widget/TopSearchWidget;

.field final synthetic val$topSearchWords:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/widget/TopSearchWidget;Ljava/util/List;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/amazon/kcp/search/widget/TopSearchWidget$3;->this$0:Lcom/amazon/kcp/search/widget/TopSearchWidget;

    iput-object p2, p0, Lcom/amazon/kcp/search/widget/TopSearchWidget$3;->val$topSearchWords:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchWidget$3;->this$0:Lcom/amazon/kcp/search/widget/TopSearchWidget;

    invoke-static {v0}, Lcom/amazon/kcp/search/widget/TopSearchWidget;->access$300(Lcom/amazon/kcp/search/widget/TopSearchWidget;)Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/search/widget/TopSearchWidget$3;->val$topSearchWords:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter;->setTopSearchWords(Ljava/util/List;)V

    .line 133
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchWidget$3;->this$0:Lcom/amazon/kcp/search/widget/TopSearchWidget;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchWidget$3;->this$0:Lcom/amazon/kcp/search/widget/TopSearchWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
