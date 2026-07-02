.class Lcom/amazon/startactions/plugin/StartActionsController$LocaleChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StartActionsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/plugin/StartActionsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocaleChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/startactions/plugin/StartActionsController;


# direct methods
.method private constructor <init>(Lcom/amazon/startactions/plugin/StartActionsController;)V
    .locals 0

    .line 1235
    iput-object p1, p0, Lcom/amazon/startactions/plugin/StartActionsController$LocaleChangeReceiver;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/startactions/plugin/StartActionsController;Lcom/amazon/startactions/plugin/StartActionsController$1;)V
    .locals 0

    .line 1235
    invoke-direct {p0, p1}, Lcom/amazon/startactions/plugin/StartActionsController$LocaleChangeReceiver;-><init>(Lcom/amazon/startactions/plugin/StartActionsController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1239
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1240
    invoke-static {}, Lcom/amazon/startactions/plugin/StartActionsController;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Locale changed. Clearing out the sidecar cache"

    invoke-static {p1, p2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    :cond_0
    invoke-static {}, Lcom/amazon/ea/util/SidecarCacheManager;->removeAllSidecars()V

    .line 1244
    iget-object p1, p0, Lcom/amazon/startactions/plugin/StartActionsController$LocaleChangeReceiver;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-static {p1}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1000(Lcom/amazon/startactions/plugin/StartActionsController;)Lcom/amazon/startactions/ui/StartActionsOverlayController;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 1248
    :cond_1
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1249
    invoke-static {}, Lcom/amazon/startactions/plugin/StartActionsController;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Locale changed. Refreshing startactions ui."

    invoke-static {p1, p2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    :cond_2
    iget-object p1, p0, Lcom/amazon/startactions/plugin/StartActionsController$LocaleChangeReceiver;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-static {p1}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1000(Lcom/amazon/startactions/plugin/StartActionsController;)Lcom/amazon/startactions/ui/StartActionsOverlayController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->refreshUI()V

    return-void
.end method
