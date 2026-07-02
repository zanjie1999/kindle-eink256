.class Lcom/amazon/kcp/search/enhancedsearch/Section$1;
.super Ljava/lang/Object;
.source "Section.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/enhancedsearch/Section;->reset(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;

.field final synthetic val$maintainExpanderState:Z


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/enhancedsearch/Section;Z)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$1;->this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;

    iput-boolean p2, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$1;->val$maintainExpanderState:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$1;->this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/Section;->access$000(Lcom/amazon/kcp/search/enhancedsearch/Section;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    iget-boolean v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$1;->val$maintainExpanderState:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$1;->this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;

    invoke-static {v0, v1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->access$102(Lcom/amazon/kcp/search/enhancedsearch/Section;Z)Z

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$1;->this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;

    invoke-static {v0, v1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->access$202(Lcom/amazon/kcp/search/enhancedsearch/Section;Z)Z

    .line 91
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$1;->this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;

    invoke-static {v0, v1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->access$302(Lcom/amazon/kcp/search/enhancedsearch/Section;I)I

    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$1;->this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/amazon/kcp/search/enhancedsearch/Section;->access$402(Lcom/amazon/kcp/search/enhancedsearch/Section;I)I

    .line 93
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$1;->this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;

    invoke-static {v0, v1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->access$502(Lcom/amazon/kcp/search/enhancedsearch/Section;I)I

    .line 94
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$1;->this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/Section;->access$600(Lcom/amazon/kcp/search/enhancedsearch/Section;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
