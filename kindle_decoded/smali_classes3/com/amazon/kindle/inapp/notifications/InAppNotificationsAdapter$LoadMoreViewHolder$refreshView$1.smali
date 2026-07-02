.class public final Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder$refreshView$1;
.super Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsAsyncTask;
.source "InAppNotificationsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->refreshView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $adapterRef:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/volley/RequestQueue;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef;",
            "Lcom/android/volley/RequestQueue;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder$refreshView$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;

    iput-object p2, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder$refreshView$1;->$adapterRef:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsAsyncTask;-><init>(Lcom/android/volley/RequestQueue;Ljava/lang/String;Lcom/google/gson/Gson;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;->getSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder$refreshView$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->access$setErrorView(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;Z)V

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder$refreshView$1;->$adapterRef:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;->getNotifications()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;->getNextPageToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$addMoreNotifications(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Ljava/util/List;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 157
    check-cast p1, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder$refreshView$1;->onPostExecute(Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;)V

    return-void
.end method
