.class final Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onCreateView$3;
.super Lkotlin/jvm/internal/Lambda;
.source "WifiPasswordDialogFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onCreateView$3;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onCreateView$3;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onCreateView$3;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;

    invoke-static {v0, p1}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->access$setSaveWifiToLocker$p(Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;Z)V

    return-void
.end method
