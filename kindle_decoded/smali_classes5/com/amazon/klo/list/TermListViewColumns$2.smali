.class Lcom/amazon/klo/list/TermListViewColumns$2;
.super Ljava/lang/Object;
.source "TermListViewColumns.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/klo/list/TermListViewColumns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/klo/list/TermListViewColumns;


# direct methods
.method constructor <init>(Lcom/amazon/klo/list/TermListViewColumns;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/amazon/klo/list/TermListViewColumns$2;->this$0:Lcom/amazon/klo/list/TermListViewColumns;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 56
    iget-object v0, p0, Lcom/amazon/klo/list/TermListViewColumns$2;->this$0:Lcom/amazon/klo/list/TermListViewColumns;

    invoke-static {v0}, Lcom/amazon/klo/list/TermListViewColumns;->access$000(Lcom/amazon/klo/list/TermListViewColumns;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/amazon/klo/list/TermListViewColumns$2;->this$0:Lcom/amazon/klo/list/TermListViewColumns;

    invoke-static {v0}, Lcom/amazon/klo/list/TermListViewColumns;->access$100(Lcom/amazon/klo/list/TermListViewColumns;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/klo/list/TermListViewColumns$2;->this$0:Lcom/amazon/klo/list/TermListViewColumns;

    invoke-static {v1}, Lcom/amazon/klo/list/TermListViewColumns;->access$000(Lcom/amazon/klo/list/TermListViewColumns;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/klo/list/TermListViewColumns$2;->this$0:Lcom/amazon/klo/list/TermListViewColumns;

    invoke-static {v2}, Lcom/amazon/klo/list/TermListViewColumns;->access$000(Lcom/amazon/klo/list/TermListViewColumns;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/amazon/klo/list/TermListViewColumns$2;->this$0:Lcom/amazon/klo/list/TermListViewColumns;

    .line 59
    invoke-static {v2}, Lcom/amazon/klo/list/TermListViewColumns;->access$000(Lcom/amazon/klo/list/TermListViewColumns;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/klo/list/TermListViewColumns$2;->this$0:Lcom/amazon/klo/list/TermListViewColumns;

    invoke-static {v3}, Lcom/amazon/klo/list/TermListViewColumns;->access$000(Lcom/amazon/klo/list/TermListViewColumns;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/amazon/klo/list/TermListViewColumns$2;->this$0:Lcom/amazon/klo/list/TermListViewColumns;

    .line 60
    invoke-static {v3}, Lcom/amazon/klo/list/TermListViewColumns;->access$000(Lcom/amazon/klo/list/TermListViewColumns;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/amazon/klo/list/TermListViewColumns$2;->this$0:Lcom/amazon/klo/list/TermListViewColumns;

    invoke-static {v4}, Lcom/amazon/klo/list/TermListViewColumns;->access$000(Lcom/amazon/klo/list/TermListViewColumns;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/amazon/klo/list/TermListViewColumns$2;->this$0:Lcom/amazon/klo/list/TermListViewColumns;

    .line 61
    invoke-static {v4}, Lcom/amazon/klo/list/TermListViewColumns;->access$000(Lcom/amazon/klo/list/TermListViewColumns;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget-object v5, p0, Lcom/amazon/klo/list/TermListViewColumns$2;->this$0:Lcom/amazon/klo/list/TermListViewColumns;

    invoke-static {v5}, Lcom/amazon/klo/list/TermListViewColumns;->access$000(Lcom/amazon/klo/list/TermListViewColumns;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 58
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 62
    iget-object v0, p0, Lcom/amazon/klo/list/TermListViewColumns$2;->this$0:Lcom/amazon/klo/list/TermListViewColumns;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method
