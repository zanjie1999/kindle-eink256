.class final Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$setupEmptyView$1;
.super Ljava/lang/Object;
.source "InAppNotificationsActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->setupEmptyView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$setupEmptyView$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 164
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$setupEmptyView$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-static {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->access$getNetworkUtil$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;->isNetworkAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 165
    sget-object p1, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->Companion:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->reportTrayRefreshed()V

    .line 166
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$setupEmptyView$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-static {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->access$displayLoader(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)V

    .line 167
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$setupEmptyView$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->getNotifications()V

    goto :goto_0

    .line 169
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$setupEmptyView$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-static {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->access$showInternetErrorDialog(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)V

    :goto_0
    return-void
.end method
