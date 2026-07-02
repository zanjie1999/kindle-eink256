.class abstract Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;
.super Ljava/lang/Object;
.source "FoldingSelectionButtons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "TopLevelButtonHandler"
.end annotation


# instance fields
.field private final buttonView:Landroid/view/View;

.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;Landroid/view/View;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;->this$0:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;->buttonView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method abstract getButtonState()Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;
.end method

.method getButtonView()Landroid/view/View;
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;->buttonView:Landroid/view/View;

    return-object v0
.end method

.method updateButtonView()V
    .locals 3

    .line 417
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;->getButtonState()Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;->ENABLED:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 418
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;->getButtonView()Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
