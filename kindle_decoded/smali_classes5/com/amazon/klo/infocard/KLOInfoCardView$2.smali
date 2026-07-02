.class Lcom/amazon/klo/infocard/KLOInfoCardView$2;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "KLOInfoCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/klo/infocard/KLOInfoCardView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/klo/infocard/KLOInfoCardView;


# direct methods
.method constructor <init>(Lcom/amazon/klo/infocard/KLOInfoCardView;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardView$2;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardView;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .line 103
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 104
    iget-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardView$2;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/klo/R$string;->klo_info_card_v2_open_button_accessibility_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
