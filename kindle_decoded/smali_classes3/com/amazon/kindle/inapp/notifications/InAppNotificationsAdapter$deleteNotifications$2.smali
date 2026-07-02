.class public final Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$deleteNotifications$2;
.super Lcom/amazon/kindle/inapp/notifications/service/DeleteNotificationsAsyncTask;
.source "InAppNotificationsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->deleteNotifications(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInAppNotificationsAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InAppNotificationsAdapter.kt\ncom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$deleteNotifications$2\n*L\n1#1,656:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $isInMultiDelete:Z

.field final synthetic $notificationIds:Ljava/util/List;

.field final synthetic this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Ljava/util/List;ZLcom/android/volley/RequestQueue;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            "Z",
            "Lcom/android/volley/RequestQueue;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .line 537
    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$deleteNotifications$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    iput-object p2, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$deleteNotifications$2;->$notificationIds:Ljava/util/List;

    iput-boolean p3, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$deleteNotifications$2;->$isInMultiDelete:Z

    invoke-direct {p0, p4, p5}, Lcom/amazon/kindle/inapp/notifications/service/DeleteNotificationsAsyncTask;-><init>(Lcom/android/volley/RequestQueue;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 537
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$deleteNotifications$2;->onPostExecute(Z)V

    return-void
.end method

.method protected onPostExecute(Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 540
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$deleteNotifications$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getTAG$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Ljava/lang/String;

    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$deleteNotifications$2;->$notificationIds:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Failed to delete notifications:%s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 541
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$deleteNotifications$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    iget-boolean v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$deleteNotifications$2;->$isInMultiDelete:Z

    invoke-static {p1, v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$showDeleteErrorDialog(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Z)V

    :cond_0
    return-void
.end method
