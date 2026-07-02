.class public final Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$getNotifications$1;
.super Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsAsyncTask;
.source "InAppNotificationsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->getNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;Lcom/android/volley/RequestQueue;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/RequestQueue;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$getNotifications$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsAsyncTask;-><init>(Lcom/android/volley/RequestQueue;Ljava/lang/String;Lcom/google/gson/Gson;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;->getNotifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$getNotifications$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-static {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->access$showEmptyView(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$getNotifications$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-static {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->access$showNonEmptyView(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)V

    .line 151
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$getNotifications$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-static {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->access$getAdapter$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;->getNotifications()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;->getNextPageToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->replaceNotifications(Ljava/util/List;Ljava/lang/String;)V

    .line 153
    :goto_0
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$getNotifications$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-static {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->access$getSwipeRefreshLayout$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 145
    check-cast p1, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$getNotifications$1;->onPostExecute(Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;)V

    return-void
.end method
