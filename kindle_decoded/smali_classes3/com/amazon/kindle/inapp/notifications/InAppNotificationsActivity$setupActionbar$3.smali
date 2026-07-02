.class final Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$setupActionbar$3;
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
.field final synthetic this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$setupActionbar$3;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 241
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$setupActionbar$3;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-static {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->access$getAdapter$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->resetNotificationTray(Z)V

    .line 242
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$setupActionbar$3;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->setupToolbarAfterMultiDelete()V

    .line 243
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$setupActionbar$3;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-static {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->access$getAdapter$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
