.class final Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;
.super Ljava/lang/Object;
.source "InAppNotificationsAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->onBindContentViewHolder(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInAppNotificationsAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InAppNotificationsAdapter.kt\ncom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2\n*L\n1#1,656:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $handler:Lcom/amazon/kindle/inapp/notifications/tapaction/InAppTapActionHandler;

.field final synthetic $holder:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;

.field final synthetic $notification:Lcom/amazon/kindle/inapp/notifications/util/Notification;

.field final synthetic $notificationIds:Ljava/util/List;

.field final synthetic $position:I

.field final synthetic $selectedAnnouncement:Ljava/lang/String;

.field final synthetic $status:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $unselectedAnnouncement:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Lcom/amazon/kindle/inapp/notifications/util/Notification;Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;Lcom/amazon/kindle/inapp/notifications/tapaction/InAppTapActionHandler;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    iput-object p2, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->$notification:Lcom/amazon/kindle/inapp/notifications/util/Notification;

    iput-object p3, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->$holder:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;

    iput-object p4, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->$handler:Lcom/amazon/kindle/inapp/notifications/tapaction/InAppTapActionHandler;

    iput-object p5, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->$status:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p6, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->$notificationIds:Ljava/util/List;

    iput p7, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->$position:I

    iput-object p8, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->$unselectedAnnouncement:Ljava/lang/String;

    iput-object p9, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->$selectedAnnouncement:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 281
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$isMultiDelete$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 282
    sget-object p1, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->Companion:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->$notification:Lcom/amazon/kindle/inapp/notifications/util/Notification;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->reportInAppNotificationTapped(Lcom/amazon/kindle/inapp/notifications/util/Notification;)V

    .line 283
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->$holder:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->getSelectedNotificationCheckMark()Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 284
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->$handler:Lcom/amazon/kindle/inapp/notifications/tapaction/InAppTapActionHandler;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->$notification:Lcom/amazon/kindle/inapp/notifications/util/Notification;

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {v1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getContext$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/InAppTapActionHandler;->performTapAction(Lcom/amazon/kindle/inapp/notifications/util/Notification;Landroid/content/Context;)V

    .line 285
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->$status:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getSTATUS_UNREAD$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 286
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->$holder:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;

    invoke-static {p1, v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$setAlphaDefault(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;)V

    .line 287
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->$holder:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    sget v1, Lcom/amazon/kindle/inapp/notifications/R$attr;->notification_tray_cell_default_background_color:I

    invoke-static {v0, v1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getAttrRes(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;I)Landroid/util/TypedValue;

    move-result-object v0

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->setBackgroundColor(I)V

    .line 288
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->$status:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getSTATUS_READ$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 289
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->$holder:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->setRead(Z)V

    .line 290
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->$notificationIds:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$markNotNew(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Ljava/util/List;)V

    goto/16 :goto_0

    .line 293
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getSelectedNotificationsPosition$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->$position:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "TAG"

    if-eqz p1, :cond_3

    .line 294
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->$holder:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;

    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->$status:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$setNotificationNotSelected(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;Ljava/lang/String;)V

    .line 295
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getSelectedNotificationsPosition$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Ljava/util/List;

    move-result-object p1

    iget v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->$position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 296
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getAccessibilityUtil$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {v1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getTAG$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->$unselectedAnnouncement:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil;->autoAnnounce(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getSelectedNotificationsPosition$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 298
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->getActivity()Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->setupToolbarAfterMultiDelete()V

    .line 299
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$setMultiDelete$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Z)V

    goto :goto_0

    .line 301
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->getActivity()Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getSelectedNotificationsPosition$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->updateActionbar(Ljava/util/List;)V

    goto :goto_0

    .line 303
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getSelectedNotificationsPosition$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0x1e

    if-ge p1, v1, :cond_4

    .line 304
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->$holder:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;

    invoke-static {p1, v1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$setNotificationSelected(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;)V

    .line 305
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getSelectedNotificationsPosition$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Ljava/util/List;

    move-result-object p1

    iget v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->$position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->getActivity()Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {v1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getSelectedNotificationsPosition$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->updateActionbar(Ljava/util/List;)V

    .line 307
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getAccessibilityUtil$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {v1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getTAG$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;->$selectedAnnouncement:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil;->autoAnnounce(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
