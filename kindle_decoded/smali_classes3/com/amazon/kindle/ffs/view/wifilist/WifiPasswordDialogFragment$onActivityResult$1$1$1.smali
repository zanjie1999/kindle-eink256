.class final Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onActivityResult$1$1$1;
.super Ljava/lang/Object;
.source "WifiPasswordDialogFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onActivityResult$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onActivityResult$1$1;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onActivityResult$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onActivityResult$1$1$1;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onActivityResult$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onActivityResult$1$1$1;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onActivityResult$1$1;

    iget-object v0, v0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onActivityResult$1$1;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onActivityResult$1;

    iget-object v0, v0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onActivityResult$1;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->access$changeVisibilityStatusExceptForLearnMore(Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;Z)V

    return-void
.end method
