.class Lcom/amazon/kcp/search/enhancedsearch/Section$2;
.super Ljava/lang/Object;
.source "Section.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/enhancedsearch/Section;->onClickAtPosition(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;

.field final synthetic val$indexToUpdate:I


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/enhancedsearch/Section;I)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$2;->this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;

    iput p2, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$2;->val$indexToUpdate:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$2;->this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/Section;->access$600(Lcom/amazon/kcp/search/enhancedsearch/Section;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$2;->val$indexToUpdate:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
