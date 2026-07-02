.class Lcom/amazon/bookwizard/ui/view/HorizontalListView$1;
.super Landroid/database/DataSetObserver;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/ui/view/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$1;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$1;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->access$002(Lcom/amazon/bookwizard/ui/view/HorizontalListView;Z)Z

    .line 71
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$1;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->invalidate()V

    .line 72
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$1;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->requestLayout()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$1;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-static {v0}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->access$100(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)V

    .line 78
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$1;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->invalidate()V

    .line 79
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$1;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->requestLayout()V

    return-void
.end method
