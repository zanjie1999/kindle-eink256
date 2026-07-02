.class Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment$3;
.super Ljava/lang/Object;
.source "KuInterstitialPageDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;

.field final synthetic val$controller:Lcom/amazon/ku/KuInterstitialPageController;


# direct methods
.method constructor <init>(Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;Lcom/amazon/ku/KuInterstitialPageController;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment$3;->this$0:Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;

    iput-object p2, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment$3;->val$controller:Lcom/amazon/ku/KuInterstitialPageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 108
    iget-object p1, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment$3;->val$controller:Lcom/amazon/ku/KuInterstitialPageController;

    iget-object v0, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment$3;->this$0:Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;

    invoke-virtual {p1, v0}, Lcom/amazon/ku/KuInterstitialPageController;->onNoClicked(Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;)V

    return-void
.end method
