.class Lcom/amazon/ku/KuInterstitialPageController$2;
.super Ljava/lang/Object;
.source "KuInterstitialPageController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ku/KuInterstitialPageController;->showInterstitialPageDialog(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ku/KuInterstitialPageController;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$kuBooks:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/amazon/ku/KuInterstitialPageController;Ljava/util/List;Landroid/app/Activity;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController$2;->this$0:Lcom/amazon/ku/KuInterstitialPageController;

    iput-object p2, p0, Lcom/amazon/ku/KuInterstitialPageController$2;->val$kuBooks:Ljava/util/List;

    iput-object p3, p0, Lcom/amazon/ku/KuInterstitialPageController$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 275
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController$2;->this$0:Lcom/amazon/ku/KuInterstitialPageController;

    iget-object v1, p0, Lcom/amazon/ku/KuInterstitialPageController$2;->val$kuBooks:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/amazon/ku/KuInterstitialPageController;->access$702(Lcom/amazon/ku/KuInterstitialPageController;Ljava/util/List;)Ljava/util/List;

    .line 278
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 279
    iget-object v1, p0, Lcom/amazon/ku/KuInterstitialPageController$2;->val$activity:Landroid/app/Activity;

    const-class v2, Lcom/amazon/ku/ui/activity/KuInterstitialPageActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 280
    iget-object v1, p0, Lcom/amazon/ku/KuInterstitialPageController$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 282
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController$2;->this$0:Lcom/amazon/ku/KuInterstitialPageController;

    invoke-static {v0}, Lcom/amazon/ku/KuInterstitialPageController;->access$800(Lcom/amazon/ku/KuInterstitialPageController;)Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "KuInterstitialScreen"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;)V

    return-void
.end method
