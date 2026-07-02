.class Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar$3;
.super Ljava/lang/Object;
.source "LibrarySelectedFiltersBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->setCloseBtnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar$3;->this$0:Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 142
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar$3;->this$0:Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;

    invoke-static {v0}, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->access$100(Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;)Lcom/amazon/kcp/library/LibraryFilterStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->getSelectedFilterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/LibraryFilterItem;

    .line 144
    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryFilterItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar$3;->this$0:Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;

    invoke-static {v0}, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->access$200(Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;->recordClearFilter(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 148
    iget-object p1, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar$3;->this$0:Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;

    invoke-static {p1}, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->access$100(Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;)Lcom/amazon/kcp/library/LibraryFilterStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->clearItemIds()V

    return-void
.end method
