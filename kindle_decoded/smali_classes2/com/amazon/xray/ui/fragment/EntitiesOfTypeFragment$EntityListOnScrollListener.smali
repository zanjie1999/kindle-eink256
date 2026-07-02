.class Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$EntityListOnScrollListener;
.super Ljava/lang/Object;
.source "EntitiesOfTypeFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntityListOnScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;

.field private touchScrolled:Z


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$EntityListOnScrollListener;->this$0:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$1;)V
    .locals 0

    .line 428
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$EntityListOnScrollListener;-><init>(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 443
    iget-boolean p1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$EntityListOnScrollListener;->touchScrolled:Z

    if-eqz p1, :cond_0

    .line 444
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$EntityListOnScrollListener;->this$0:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;

    invoke-static {p1}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->access$800(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;)Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;

    move-result-object p3

    iget-object p3, p3, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;->listView:Landroid/widget/ListView;

    invoke-static {p3}, Lcom/amazon/xray/ui/util/ListViewUtil;->getFirstVisiblePositionOffset(Landroid/widget/ListView;)I

    move-result p3

    invoke-static {p1, p3}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->access$1202(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;I)I

    .line 445
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$EntityListOnScrollListener;->this$0:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;

    invoke-static {p1, p2}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->access$1102(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;I)I

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 435
    iput-boolean p1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$EntityListOnScrollListener;->touchScrolled:Z

    :cond_0
    return-void
.end method
