.class Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$4;
.super Ljava/lang/Object;
.source "NonLinearFragmentStateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->showBirdsEyeFragment(Lcom/amazon/kindle/krx/reader/IPosition;Ljava/util/List;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentTransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

.field final synthetic val$manager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$4;->this$0:Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

    iput-object p2, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$4;->val$manager:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 546
    iget-object v0, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$4;->this$0:Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

    sget-object v1, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    iget-object v2, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$4;->val$manager:Landroidx/fragment/app/FragmentManager;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->access$000(Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;Lcom/amazon/kindle/nln/NonLinearNavigationMode;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentTransaction;)V

    return-void
.end method
