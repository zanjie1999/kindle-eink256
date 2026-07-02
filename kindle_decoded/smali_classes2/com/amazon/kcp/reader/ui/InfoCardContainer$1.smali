.class Lcom/amazon/kcp/reader/ui/InfoCardContainer$1;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "InfoCardContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/InfoCardContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/InfoCardContainer;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/InfoCardContainer;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer$1;->this$0:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 5

    .line 106
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 108
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer$1;->this$0:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    .line 110
    iget-boolean v0, p1, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->isPartiallyHidden:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/amazon/kindle/krl/R$string;->speak_cards_hidden:I

    new-array v4, v2, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cards:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    .line 115
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    return-void

    .line 119
    :cond_0
    iget-object v0, p1, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    sget v0, Lcom/amazon/kindle/krl/R$string;->speak_cards_count_single:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/amazon/kindle/krl/R$string;->speak_cards_count:I

    .line 120
    :goto_0
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer$1;->this$0:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cards:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-virtual {v3, v0, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    return-void
.end method
