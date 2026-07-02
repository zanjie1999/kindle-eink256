.class public final Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$showDeleteAllWarningDialog$primaryButtonOnClick$1;
.super Ljava/lang/Object;
.source "InAppNotificationsActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->showDeleteAllWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $dialog:Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;

.field final synthetic this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;",
            ")V"
        }
    .end annotation

    .line 345
    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$showDeleteAllWarningDialog$primaryButtonOnClick$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    iput-object p2, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$showDeleteAllWarningDialog$primaryButtonOnClick$1;->$dialog:Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 347
    sget-object p1, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->Companion:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->reportTrayCleared()V

    .line 348
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$showDeleteAllWarningDialog$primaryButtonOnClick$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-static {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->access$getAdapter$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->removeAllItems()V

    .line 349
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$showDeleteAllWarningDialog$primaryButtonOnClick$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-static {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->access$showEmptyView(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)V

    .line 350
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$showDeleteAllWarningDialog$primaryButtonOnClick$1;->$dialog:Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->dismiss()V

    return-void
.end method
