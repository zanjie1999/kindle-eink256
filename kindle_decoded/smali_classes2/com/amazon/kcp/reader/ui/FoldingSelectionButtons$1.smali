.class Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$1;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "FoldingSelectionButtons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->setUpImageButtons(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$1;->this$0:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    const/16 v0, 0x80

    if-ne p2, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 129
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
