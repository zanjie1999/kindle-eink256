.class Lcom/amazon/kcp/debug/DebugActivityV2$DebugMenuCollectionPagerAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "DebugActivityV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/debug/DebugActivityV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DebugMenuCollectionPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DebugActivityV2;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/debug/DebugActivityV2;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivityV2$DebugMenuCollectionPagerAdapter;->this$0:Lcom/amazon/kcp/debug/DebugActivityV2;

    .line 177
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugActivityV2$DebugMenuCollectionPagerAdapter;->this$0:Lcom/amazon/kcp/debug/DebugActivityV2;

    iget-object v0, v0, Lcom/amazon/kcp/debug/DebugActivityV2;->debugMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 182
    new-instance v0, Lcom/amazon/kcp/debug/DebugMenuFragment;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/DebugMenuFragment;-><init>()V

    .line 183
    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugActivityV2$DebugMenuCollectionPagerAdapter;->this$0:Lcom/amazon/kcp/debug/DebugActivityV2;

    iget-object v1, v1, Lcom/amazon/kcp/debug/DebugActivityV2;->debugMenus:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/debug/DebugMenuFragment;->setRootView(Landroid/view/View;)V

    return-object v0
.end method
