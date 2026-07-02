.class final Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$setupActionbar$2;
.super Ljava/lang/Object;
.source "InAppNotificationsActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->setupActionbar(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $selectedNotificationPosition:Ljava/util/List;

.field final synthetic this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$setupActionbar$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    iput-object p2, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$setupActionbar$2;->$selectedNotificationPosition:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 227
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$setupActionbar$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-static {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->access$getAdapter$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$setupActionbar$2;->$selectedNotificationPosition:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->reportMultiDeletePerformed(Ljava/util/List;)V

    .line 228
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$setupActionbar$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-static {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->access$getNetworkUtil$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;->isNetworkAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 229
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$setupActionbar$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-static {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->access$getAdapter$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$setupActionbar$2;->$selectedNotificationPosition:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->removeMultiNotifications(Ljava/util/List;)V

    .line 230
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$setupActionbar$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->getNotifications()V

    .line 231
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$setupActionbar$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-static {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->access$getAdapter$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->resetNotificationTray(Z)V

    .line 232
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$setupActionbar$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->setupToolbar()V

    goto :goto_0

    .line 235
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$setupActionbar$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-static {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->access$showInternetErrorDialog(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)V

    :goto_0
    return-void
.end method
