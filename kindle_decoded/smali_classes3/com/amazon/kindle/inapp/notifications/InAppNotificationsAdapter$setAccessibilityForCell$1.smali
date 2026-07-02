.class public final Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$setAccessibilityForCell$1;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "InAppNotificationsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->setAccessibilityForCell(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $holder:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;

.field final synthetic $position:I

.field final synthetic this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;",
            "I)V"
        }
    .end annotation

    .line 609
    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$setAccessibilityForCell$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    iput-object p2, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$setAccessibilityForCell$1;->$holder:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;

    iput p3, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$setAccessibilityForCell$1;->$position:I

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 611
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 612
    sget-object p1, Lcom/amazon/kindle/inapp/notifications/build/BuildInfo;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/build/BuildInfo;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/build/BuildInfo;->isThirdPartyBuild()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 613
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$setAccessibilityForCell$1;->$holder:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->isRead()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$setAccessibilityForCell$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getContext$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/inapp/notifications/R$string;->accessibility_new_notification:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 614
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$setAccessibilityForCell$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$isMultiDelete$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Z

    move-result v0

    const-string v1, "AccessibilityActionCompat.ACTION_LONG_CLICK"

    if-eqz v0, :cond_2

    .line 615
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$setAccessibilityForCell$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getSelectedNotificationsPosition$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$setAccessibilityForCell$1;->$position:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "AccessibilityActionCompat.ACTION_CLICK"

    if-eqz v0, :cond_1

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$setAccessibilityForCell$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getContext$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Landroid/content/Context;

    move-result-object p1

    sget v3, Lcom/amazon/kindle/inapp/notifications/R$string;->accessibility_selected:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 618
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$setAccessibilityForCell$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getContext$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/amazon/kindle/inapp/notifications/R$string;->accessibility_unselect:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 619
    new-instance v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget-object v4, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v2

    invoke-direct {v3, v2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 620
    new-instance v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget-object v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_LONG_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v1

    invoke-direct {v2, v1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    goto :goto_1

    .line 622
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$setAccessibilityForCell$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getContext$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/amazon/kindle/inapp/notifications/R$string;->accessibility_select:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 623
    new-instance v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget-object v4, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v2

    invoke-direct {v3, v2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 624
    new-instance v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget-object v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_LONG_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v1

    invoke-direct {v2, v1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    goto :goto_1

    .line 627
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$setAccessibilityForCell$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getContext$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/inapp/notifications/R$string;->inapp_notifications_delete:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 629
    new-instance v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget-object v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_LONG_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v1

    invoke-direct {v2, v1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 631
    :goto_1
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4

    .line 637
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/build/BuildInfo;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/build/BuildInfo;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_ACCESSIBILITY_FOCUS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const-string v1, "AccessibilityActionCompa\u2026CTION_ACCESSIBILITY_FOCUS"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 638
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$setAccessibilityForCell$1;->$holder:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->isRead()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$setAccessibilityForCell$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getContext$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/inapp/notifications/R$string;->accessibility_new_notification:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 639
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$setAccessibilityForCell$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {v1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$isMultiDelete$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 640
    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$setAccessibilityForCell$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {v1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getSelectedNotificationsPosition$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$setAccessibilityForCell$1;->$position:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$setAccessibilityForCell$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getContext$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/inapp/notifications/R$string;->accessibility_selected:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$setAccessibilityForCell$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getContext$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/inapp/notifications/R$string;->accessibility_fos_actions_when_multi_delete_and_selected:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 645
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$setAccessibilityForCell$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getContext$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/inapp/notifications/R$string;->accessibility_fos_actions_when_multi_delete_and_not_selected:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 648
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$setAccessibilityForCell$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getContext$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/inapp/notifications/R$string;->accessibility_fos_actions_when_not_in_multi_delete:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 650
    :goto_1
    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$setAccessibilityForCell$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {v1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getAccessibilityUtil$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$setAccessibilityForCell$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {v2}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getTAG$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TAG"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "announcement"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil;->autoAnnounce(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
