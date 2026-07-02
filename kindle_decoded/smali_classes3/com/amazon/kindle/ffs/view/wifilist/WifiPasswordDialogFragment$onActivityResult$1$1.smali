.class final Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onActivityResult$1$1;
.super Ljava/lang/Object;
.source "WifiPasswordDialogFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onActivityResult$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onActivityResult$1;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onActivityResult$1;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onActivityResult$1$1;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onActivityResult$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 172
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onActivityResult$1$1;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onActivityResult$1;

    iget-object v0, v0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onActivityResult$1;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;

    invoke-static {v0}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->access$setFocusOnLearnMore(Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;)V

    .line 173
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onActivityResult$1$1;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onActivityResult$1;

    iget-object v0, v0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onActivityResult$1;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onActivityResult$1$1$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onActivityResult$1$1$1;-><init>(Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onActivityResult$1$1;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
