.class Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RubyHomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/fragments/RubyHomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RubyHomeAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter$RubyHomeViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

.field widgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/home/card/HomeCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;->this$0:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;Lcom/amazon/kcp/library/fragments/RubyHomeFragment$1;)V
    .locals 0

    .line 506
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;-><init>(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;)V
    .locals 0

    .line 506
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;->resetHasBeenShownToUserForAllWidgets()V

    return-void
.end method

.method private resetHasBeenShownToUserForAllWidgets()V
    .locals 3

    .line 559
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;->widgets:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 560
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/home/card/HomeCard;

    const/4 v2, 0x0

    .line 561
    invoke-interface {v1, v2}, Lcom/amazon/kindle/home/card/HomeCard;->setHasBeenShownToUser(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;->widgets:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;->widgets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/home/card/HomeCard;

    invoke-interface {p1}, Lcom/amazon/kindle/home/card/HomeCard;->getViewLayoutId()I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 533
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;->widgets:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/home/card/HomeCard;

    .line 534
    check-cast p1, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter$RubyHomeViewHolder;

    .line 537
    iget-object v1, p1, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter$RubyHomeViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    add-int/lit8 p2, p2, -0x1

    .line 540
    invoke-interface {v0, p2}, Lcom/amazon/kindle/home/card/HomeCard;->setDisplayPosition(I)V

    .line 543
    iget-object p2, p1, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter$RubyHomeViewHolder;->view:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 544
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 545
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object p2

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;->this$0:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    .line 546
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object p2

    .line 547
    iget p2, p2, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;->this$0:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    invoke-static {v2}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->access$600(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;)F

    move-result v2

    mul-float p2, p2, v2

    float-to-int p2, p2

    iput p2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 548
    iget-object p2, p1, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter$RubyHomeViewHolder;->view:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 550
    iget-object p1, p1, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter$RubyHomeViewHolder;->view:Landroid/view/View;

    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;->this$0:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    invoke-static {p2}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->access$700(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;)Lcom/amazon/kindle/home/card/HomeWidgetListener;

    move-result-object p2

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;->this$0:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    invoke-static {v1}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->access$800(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;)Lcom/amazon/kindle/home/action/HomeActionManager;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/amazon/kindle/home/card/HomeCard;->bindView(Landroid/view/View;Lcom/amazon/kindle/home/card/HomeWidgetListener;Lcom/amazon/kindle/home/action/HomeActionManager;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 521
    new-instance v0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter$RubyHomeViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter$RubyHomeViewHolder;-><init>(Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;Landroid/view/View;)V

    return-object v0
.end method
