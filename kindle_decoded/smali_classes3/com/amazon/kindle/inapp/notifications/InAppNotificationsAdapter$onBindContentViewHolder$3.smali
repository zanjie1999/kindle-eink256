.class final Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$3;
.super Ljava/lang/Object;
.source "InAppNotificationsAdapter.kt"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->onBindContentViewHolder(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $holder:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;

.field final synthetic $position:I

.field final synthetic $selectedAnnouncement:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$3;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    iput-object p2, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$3;->$holder:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;

    iput p3, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$3;->$position:I

    iput-object p4, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$3;->$selectedAnnouncement:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$3;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$isMultiDelete$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    move-result v1

    goto :goto_0

    .line 319
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$3;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {p1, v1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$setMultiDelete$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Z)V

    .line 320
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$3;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$3;->$holder:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;

    invoke-static {p1, v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$setNotificationSelected(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;)V

    .line 321
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$3;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getSelectedNotificationsPosition$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$3;->$position:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$3;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getSelectedNotificationsPosition$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x1e

    if-ge p1, v0, :cond_1

    .line 322
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$3;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getSelectedNotificationsPosition$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$3;->$position:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$3;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->getActivity()Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$3;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getSelectedNotificationsPosition$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->updateActionbar(Ljava/util/List;)V

    .line 325
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$3;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->getActivity()Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$3;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getSelectedNotificationsPosition$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->setupActionbar(Ljava/util/List;)V

    .line 326
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$3;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getAccessibilityUtil$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$3;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getTAG$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "TAG"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$3;->$selectedAnnouncement:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil;->autoAnnounce(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1
.end method
