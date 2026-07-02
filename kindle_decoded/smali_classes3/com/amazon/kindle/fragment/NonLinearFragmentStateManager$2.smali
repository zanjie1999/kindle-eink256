.class Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$2;
.super Ljava/lang/Object;
.source "NonLinearFragmentStateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->showFullPageFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentTransaction;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

.field final synthetic val$currentFragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;Lcom/amazon/kindle/nln/BaseNonLinearFragment;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$2;->this$0:Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

    iput-object p2, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$2;->val$currentFragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "NLN Force Layout and Invalidate"

    const/4 v1, 0x1

    .line 415
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 416
    iget-object v1, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$2;->val$currentFragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/android/util/UIUtils;->forceLayoutAndInvalidateUpTree(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 417
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method
