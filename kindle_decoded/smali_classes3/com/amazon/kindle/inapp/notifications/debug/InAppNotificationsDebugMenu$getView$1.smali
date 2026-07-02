.class final Lcom/amazon/kindle/inapp/notifications/debug/InAppNotificationsDebugMenu$getView$1;
.super Ljava/lang/Object;
.source "InAppNotificationsDebugMenu.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/inapp/notifications/debug/InAppNotificationsDebugMenu;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/inapp/notifications/debug/InAppNotificationsDebugMenu;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/inapp/notifications/debug/InAppNotificationsDebugMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/debug/InAppNotificationsDebugMenu$getView$1;->this$0:Lcom/amazon/kindle/inapp/notifications/debug/InAppNotificationsDebugMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 31
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/debug/InAppNotificationsDebugMenu$getView$1;->this$0:Lcom/amazon/kindle/inapp/notifications/debug/InAppNotificationsDebugMenu;

    invoke-static {v0}, Lcom/amazon/kindle/inapp/notifications/debug/InAppNotificationsDebugMenu;->access$getSdk$p(Lcom/amazon/kindle/inapp/notifications/debug/InAppNotificationsDebugMenu;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 33
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/debug/InAppNotificationsDebugMenu$getView$1;->this$0:Lcom/amazon/kindle/inapp/notifications/debug/InAppNotificationsDebugMenu;

    invoke-static {v0}, Lcom/amazon/kindle/inapp/notifications/debug/InAppNotificationsDebugMenu;->access$getSdk$p(Lcom/amazon/kindle/inapp/notifications/debug/InAppNotificationsDebugMenu;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
