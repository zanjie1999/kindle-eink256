.class Lcom/amazon/ku/KuInterstitialPageController$6;
.super Ljava/lang/Object;
.source "KuInterstitialPageController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ku/KuInterstitialPageController;->postSignUpFailureDialog(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ku/KuInterstitialPageController;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$assets:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/amazon/ku/KuInterstitialPageController;Landroid/app/Activity;Ljava/util/Map;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController$6;->this$0:Lcom/amazon/ku/KuInterstitialPageController;

    iput-object p2, p0, Lcom/amazon/ku/KuInterstitialPageController$6;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/amazon/ku/KuInterstitialPageController$6;->val$assets:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 592
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController$6;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 593
    iget-object v1, p0, Lcom/amazon/ku/KuInterstitialPageController$6;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "KuSignUpFailureDialog"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 595
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    const/4 v1, 0x0

    .line 597
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 599
    iget-object v1, p0, Lcom/amazon/ku/KuInterstitialPageController$6;->val$assets:Ljava/util/Map;

    sget-object v3, Lcom/amazon/ku/data/KuInterstitialPageAsset;->HEADER:Lcom/amazon/ku/data/KuInterstitialPageAsset;

    .line 600
    invoke-virtual {v3}, Lcom/amazon/ku/data/KuInterstitialPageAsset;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/ku/KuInterstitialPageController$6;->val$assets:Ljava/util/Map;

    sget-object v4, Lcom/amazon/ku/data/KuInterstitialPageAsset;->BODY:Lcom/amazon/ku/data/KuInterstitialPageAsset;

    .line 601
    invoke-virtual {v4}, Lcom/amazon/ku/data/KuInterstitialPageAsset;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/ku/KuInterstitialPageController$6;->val$assets:Ljava/util/Map;

    sget-object v5, Lcom/amazon/ku/data/KuInterstitialPageAsset;->YES_BUTTON:Lcom/amazon/ku/data/KuInterstitialPageAsset;

    .line 602
    invoke-virtual {v5}, Lcom/amazon/ku/data/KuInterstitialPageAsset;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 600
    invoke-static {v1, v3, v4}, Lcom/amazon/ku/ui/fragment/KuErrorDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ku/ui/fragment/KuErrorDialogFragment;

    move-result-object v1

    .line 603
    invoke-virtual {v1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 605
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController$6;->this$0:Lcom/amazon/ku/KuInterstitialPageController;

    invoke-static {v0}, Lcom/amazon/ku/KuInterstitialPageController;->access$1200(Lcom/amazon/ku/KuInterstitialPageController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 606
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController$6;->this$0:Lcom/amazon/ku/KuInterstitialPageController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/ku/KuInterstitialPageController;->onDialogDismissed(Z)V

    .line 608
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController$6;->this$0:Lcom/amazon/ku/KuInterstitialPageController;

    invoke-static {v0}, Lcom/amazon/ku/KuInterstitialPageController;->access$800(Lcom/amazon/ku/KuInterstitialPageController;)Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "KuSignUpErrorScreen"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;)V

    return-void
.end method
