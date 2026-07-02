.class final Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu$OnFilterItemClickListener;
.super Ljava/lang/Object;
.source "LibraryFilterMenu.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnFilterItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu$OnFilterItemClickListener;->this$0:Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu$1;)V
    .locals 0

    .line 306
    invoke-direct {p0, p1}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu$OnFilterItemClickListener;-><init>(Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;)V

    return-void
.end method

.method private isOnlySelectedFilterItemInGroup(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu$OnFilterItemClickListener;->this$0:Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;

    invoke-static {v0}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->access$100(Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;)Lcom/amazon/kcp/library/LibraryFilterStateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->getSelectedItemIdsForGroup(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 364
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private performUnreadFilterMetrics(Lcom/amazon/kcp/library/LibraryFilterItem;)V
    .locals 3

    .line 369
    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryFilterItem;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unread"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu$OnFilterItemClickListener;->this$0:Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;

    invoke-static {v0}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->access$100(Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;)Lcom/amazon/kcp/library/LibraryFilterStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->getSelectedItemIds()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryFilterItem;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 372
    iget-object v1, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu$OnFilterItemClickListener;->this$0:Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;

    invoke-static {v1}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->access$300(Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v0}, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;->recordLibraryReadItemsAction(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private recordFastMetricsFilterChange(Lcom/amazon/kcp/library/LibraryFilterItem;)V
    .locals 3

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 336
    iget-object v1, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu$OnFilterItemClickListener;->this$0:Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;

    invoke-static {v1}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->access$100(Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;)Lcom/amazon/kcp/library/LibraryFilterStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->getSelectedFilterItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/LibraryFilterItem;

    .line 337
    invoke-virtual {v2}, Lcom/amazon/kcp/library/LibraryFilterItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu$OnFilterItemClickListener;->this$0:Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;

    invoke-static {v1}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->access$300(Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;)Ljava/lang/String;

    move-result-object v1

    .line 340
    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryFilterItem;->getId()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 339
    invoke-static {v1, v2, v0, p1, v2}, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;->recordChangeFilter(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private recordFastMetricsSharedLibraryFilterSelection(Lcom/amazon/kcp/library/LibraryFilterItem;Landroid/view/View;)V
    .locals 1

    .line 352
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 353
    check-cast p2, Lcom/amazon/kcp/widget/RefineLibraryCheckableItem;

    invoke-virtual {p2}, Lcom/amazon/kcp/cover/CheckableFrameLayout;->isChecked()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 355
    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryFilterItem;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 356
    invoke-static {p2}, Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics;->recordMyItemsFilterSelection(Z)V

    goto :goto_0

    .line 358
    :cond_0
    invoke-static {p2}, Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics;->recordSharedItemsFilterSelection(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 0

    .line 310
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object p1

    .line 311
    invoke-interface {p1, p3}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/amazon/kcp/library/LibraryFilterGroup;

    .line 312
    invoke-interface {p1, p3, p4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/kcp/library/LibraryFilterItem;

    .line 314
    invoke-direct {p0, p3}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu$OnFilterItemClickListener;->performUnreadFilterMetrics(Lcom/amazon/kcp/library/LibraryFilterItem;)V

    .line 316
    invoke-virtual {p5}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getId()Ljava/lang/String;

    move-result-object p4

    const-string p6, "SharedLibrary"

    invoke-virtual {p4, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 317
    invoke-direct {p0, p3, p2}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu$OnFilterItemClickListener;->recordFastMetricsSharedLibraryFilterSelection(Lcom/amazon/kcp/library/LibraryFilterItem;Landroid/view/View;)V

    .line 319
    :cond_0
    invoke-direct {p0, p3}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu$OnFilterItemClickListener;->recordFastMetricsFilterChange(Lcom/amazon/kcp/library/LibraryFilterItem;)V

    .line 321
    invoke-virtual {p5}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lcom/amazon/kcp/library/LibraryFilterItem;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p2, p4}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu$OnFilterItemClickListener;->isOnlySelectedFilterItemInGroup(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 322
    iget-object p2, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu$OnFilterItemClickListener;->this$0:Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;

    invoke-static {p2}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->access$100(Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;)Lcom/amazon/kcp/library/LibraryFilterStateManager;

    move-result-object p2

    invoke-virtual {p5}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Lcom/amazon/kcp/library/LibraryFilterItem;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p4, p3}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->clearGroupAndToggleItem(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :cond_1
    iget-object p2, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu$OnFilterItemClickListener;->this$0:Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;

    invoke-static {p2}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->access$100(Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;)Lcom/amazon/kcp/library/LibraryFilterStateManager;

    move-result-object p2

    invoke-virtual {p5}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Lcom/amazon/kcp/library/LibraryFilterItem;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p4, p3}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->toggleItemId(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :goto_0
    invoke-interface {p1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 328
    iget-object p1, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu$OnFilterItemClickListener;->this$0:Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;

    invoke-static {p1}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->access$200(Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;)Lcom/amazon/kindle/library/ui/popup/IPopup;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/library/ui/popup/IPopup;->dismiss()V

    :cond_2
    return p2
.end method
