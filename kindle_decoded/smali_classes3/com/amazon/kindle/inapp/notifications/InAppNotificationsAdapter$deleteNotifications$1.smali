.class final Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$deleteNotifications$1;
.super Ljava/lang/Object;
.source "InAppNotificationsAdapter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->deleteNotifications(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $isInMultiDelete:Z

.field final synthetic this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Z)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$deleteNotifications$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    iput-boolean p2, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$deleteNotifications$1;->$isInMultiDelete:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 532
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$deleteNotifications$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    iget-boolean v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$deleteNotifications$1;->$isInMultiDelete:Z

    invoke-static {v0, v1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$showDeleteErrorDialog(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Z)V

    return-void
.end method
