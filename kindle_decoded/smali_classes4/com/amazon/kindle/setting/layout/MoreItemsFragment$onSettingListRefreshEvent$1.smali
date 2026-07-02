.class final Lcom/amazon/kindle/setting/layout/MoreItemsFragment$onSettingListRefreshEvent$1;
.super Ljava/lang/Object;
.source "MoreItemsFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/setting/layout/MoreItemsFragment;->onSettingListRefreshEvent(Lcom/amazon/kindle/sdcard/SettingListRefreshEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/setting/layout/MoreItemsFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/setting/layout/MoreItemsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/setting/layout/MoreItemsFragment$onSettingListRefreshEvent$1;->this$0:Lcom/amazon/kindle/setting/layout/MoreItemsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/amazon/kindle/setting/layout/MoreItemsFragment$onSettingListRefreshEvent$1;->this$0:Lcom/amazon/kindle/setting/layout/MoreItemsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/setting/layout/MoreItemsFragment$onSettingListRefreshEvent$1;->this$0:Lcom/amazon/kindle/setting/layout/MoreItemsFragment;

    invoke-static {v0}, Lcom/amazon/kindle/setting/layout/MoreItemsFragment;->access$getMenuContainer$p(Lcom/amazon/kindle/setting/layout/MoreItemsFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 80
    iget-object v0, p0, Lcom/amazon/kindle/setting/layout/MoreItemsFragment$onSettingListRefreshEvent$1;->this$0:Lcom/amazon/kindle/setting/layout/MoreItemsFragment;

    invoke-static {v0}, Lcom/amazon/kindle/setting/layout/MoreItemsFragment;->access$getMenuContainer$p(Lcom/amazon/kindle/setting/layout/MoreItemsFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/setting/layout/MoreItemsFragment;->access$populateViews(Lcom/amazon/kindle/setting/layout/MoreItemsFragment;Landroid/view/ViewGroup;)V

    return-void
.end method
