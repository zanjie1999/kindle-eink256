.class final Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$BCMObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "BreadcrumbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BCMObserver"
.end annotation


# instance fields
.field private final bcManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;)V
    .locals 0

    .line 784
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 785
    iput-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$BCMObserver;->bcManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 790
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$BCMObserver;->bcManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;

    invoke-static {v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->access$600(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 791
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$BCMObserver;->bcManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->updateBreadcrumbBadges()V

    goto :goto_0

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$BCMObserver;->bcManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->resetBadgeListeners()V

    :goto_0
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 800
    iget-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$BCMObserver;->bcManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;

    invoke-virtual {p1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->updateBreadcrumbBadges()V

    return-void
.end method
