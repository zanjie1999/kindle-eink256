.class public final Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$deleteAllNotifications$2;
.super Lcom/amazon/kindle/inapp/notifications/service/DeleteAllNotificationsAsyncTask;
.source "InAppNotificationsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->deleteAllNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInAppNotificationsAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InAppNotificationsAdapter.kt\ncom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$deleteAllNotifications$2\n*L\n1#1,656:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Lcom/android/volley/RequestQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/RequestQueue;",
            ")V"
        }
    .end annotation

    .line 558
    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$deleteAllNotifications$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-direct {p0, p2}, Lcom/amazon/kindle/inapp/notifications/service/DeleteAllNotificationsAsyncTask;-><init>(Lcom/android/volley/RequestQueue;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 558
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$deleteAllNotifications$2;->onPostExecute(Z)V

    return-void
.end method

.method protected onPostExecute(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 561
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$deleteAllNotifications$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getTAG$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Ljava/lang/String;

    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Failed to delete all notifications"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$deleteAllNotifications$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {v0, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$showDeleteErrorDialog(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Z)V

    :cond_0
    return-void
.end method
