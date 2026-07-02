.class Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment$1;
.super Ljava/lang/Object;
.source "KuInterstitialPageDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;

.field final synthetic val$kuLogo:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;Landroid/widget/ImageView;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment$1;->this$0:Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;

    iput-object p2, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment$1;->val$kuLogo:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment$1;->val$kuLogo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestFocus()Z

    return-void
.end method
