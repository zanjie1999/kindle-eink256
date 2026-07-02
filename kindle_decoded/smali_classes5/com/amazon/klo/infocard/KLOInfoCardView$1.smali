.class Lcom/amazon/klo/infocard/KLOInfoCardView$1;
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

    .line 86
    iput-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardView$1;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardView;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .line 90
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 92
    iget-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardView$1;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardView;

    invoke-static {p1}, Lcom/amazon/klo/infocard/KLOInfoCardView;->access$000(Lcom/amazon/klo/infocard/KLOInfoCardView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;)V

    .line 93
    iget-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardView$1;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardView;

    invoke-static {p1}, Lcom/amazon/klo/infocard/KLOInfoCardView;->access$100(Lcom/amazon/klo/infocard/KLOInfoCardView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;)V

    .line 94
    iget-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardView$1;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardView;

    invoke-static {p1}, Lcom/amazon/klo/infocard/KLOInfoCardView;->access$200(Lcom/amazon/klo/infocard/KLOInfoCardView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;)V

    return-void
.end method
