.class Lcom/amazon/ku/KuInterstitialPageController$3;
.super Ljava/lang/Object;
.source "KuInterstitialPageController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ku/KuInterstitialPageController;->refreshDialogFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ku/KuInterstitialPageController;


# direct methods
.method constructor <init>(Lcom/amazon/ku/KuInterstitialPageController;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController$3;->this$0:Lcom/amazon/ku/KuInterstitialPageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController$3;->this$0:Lcom/amazon/ku/KuInterstitialPageController;

    invoke-static {v0}, Lcom/amazon/ku/KuInterstitialPageController;->access$900(Lcom/amazon/ku/KuInterstitialPageController;)Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->refreshContentView()V

    return-void
.end method
