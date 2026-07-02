.class final Lcom/amazon/kcp/debug/DebugActivity$20;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugActivity;->getCustomColorsAlertDialog(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/app/Activity;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field final synthetic val$settingsView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/view/View;)V
    .locals 0

    .line 815
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$20;->val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iput-object p2, p0, Lcom/amazon/kcp/debug/DebugActivity$20;->val$settingsView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 817
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugActivity$20;->val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    instance-of v1, v0, Lcom/amazon/android/docviewer/DebugKindleDocViewer;

    if-eqz v1, :cond_1

    .line 818
    check-cast v0, Lcom/amazon/android/docviewer/DebugKindleDocViewer;

    .line 823
    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugActivity$20;->val$settingsView:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/krl/R$id;->fontRText:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 824
    iget-object v2, p0, Lcom/amazon/kcp/debug/DebugActivity$20;->val$settingsView:Landroid/view/View;

    sget v3, Lcom/amazon/kindle/krl/R$id;->fontGText:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 825
    iget-object v3, p0, Lcom/amazon/kcp/debug/DebugActivity$20;->val$settingsView:Landroid/view/View;

    sget v4, Lcom/amazon/kindle/krl/R$id;->fontBText:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 827
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 828
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 829
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xff

    .line 832
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v5, 0x0

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 833
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 834
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 836
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    .line 838
    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/DebugKindleDocViewer;->debugSetTextColor(I)V

    .line 843
    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugActivity$20;->val$settingsView:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/krl/R$id;->backgroundRText:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 844
    iget-object v2, p0, Lcom/amazon/kcp/debug/DebugActivity$20;->val$settingsView:Landroid/view/View;

    sget v3, Lcom/amazon/kindle/krl/R$id;->backgroundGText:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 845
    iget-object v3, p0, Lcom/amazon/kcp/debug/DebugActivity$20;->val$settingsView:Landroid/view/View;

    sget v6, Lcom/amazon/kindle/krl/R$id;->backgroundBText:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 847
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 848
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 849
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 852
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 853
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 854
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 856
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    .line 858
    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/DebugKindleDocViewer;->debugSetBackgroundColor(I)V

    .line 863
    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugActivity$20;->val$settingsView:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/krl/R$id;->fontSizeText:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 864
    iget-object v2, p0, Lcom/amazon/kcp/debug/DebugActivity$20;->val$settingsView:Landroid/view/View;

    sget v3, Lcom/amazon/kindle/krl/R$id;->spacingText:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 866
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 867
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 869
    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/DebugKindleDocViewer;->debugSetFontSize(I)V

    .line 870
    invoke-interface {v0, v2}, Lcom/amazon/android/docviewer/DebugKindleDocViewer;->debugSetLineSpacing(I)V

    .line 872
    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugActivity$20;->val$settingsView:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/krl/R$id;->marginLeftText:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 873
    iget-object v2, p0, Lcom/amazon/kcp/debug/DebugActivity$20;->val$settingsView:Landroid/view/View;

    sget v3, Lcom/amazon/kindle/krl/R$id;->marginTopText:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 874
    iget-object v3, p0, Lcom/amazon/kcp/debug/DebugActivity$20;->val$settingsView:Landroid/view/View;

    sget v4, Lcom/amazon/kindle/krl/R$id;->marginRightText:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 875
    iget-object v4, p0, Lcom/amazon/kcp/debug/DebugActivity$20;->val$settingsView:Landroid/view/View;

    sget v5, Lcom/amazon/kindle/krl/R$id;->marginBottomText:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 877
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 878
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 879
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 880
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 885
    iget-object v5, p0, Lcom/amazon/kcp/debug/DebugActivity$20;->val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v5}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getPrimaryWritingMode()Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->isHorizontal()Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v4, v2

    .line 891
    :goto_0
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amazon/android/docviewer/DebugKindleDocViewer;->debugSetMargins(IIII)V

    .line 894
    invoke-interface {v0}, Lcom/amazon/android/docviewer/DebugKindleDocViewer;->debugApplySettings()V

    :cond_1
    return-void
.end method
