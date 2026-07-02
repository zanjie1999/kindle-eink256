.class final Lcom/amazon/kcp/debug/DebugActivity$23;
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

    .line 956
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$23;->val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iput-object p2, p0, Lcom/amazon/kcp/debug/DebugActivity$23;->val$settingsView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 958
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugActivity$23;->val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    instance-of v1, v0, Lcom/amazon/android/docviewer/DebugKindleDocViewer;

    if-eqz v1, :cond_0

    .line 959
    check-cast v0, Lcom/amazon/android/docviewer/DebugKindleDocViewer;

    .line 964
    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugActivity$23;->val$settingsView:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/krl/R$id;->maskAText:I

    .line 965
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 966
    iget-object v2, p0, Lcom/amazon/kcp/debug/DebugActivity$23;->val$settingsView:Landroid/view/View;

    sget v3, Lcom/amazon/kindle/krl/R$id;->maskRText:I

    .line 967
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 968
    iget-object v3, p0, Lcom/amazon/kcp/debug/DebugActivity$23;->val$settingsView:Landroid/view/View;

    sget v4, Lcom/amazon/kindle/krl/R$id;->maskGText:I

    .line 969
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 970
    iget-object v4, p0, Lcom/amazon/kcp/debug/DebugActivity$23;->val$settingsView:Landroid/view/View;

    sget v5, Lcom/amazon/kindle/krl/R$id;->maskBText:I

    .line 971
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 973
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 974
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 975
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 976
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xff

    .line 979
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v6, 0x0

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 980
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 981
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 982
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 984
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 986
    sget-object v2, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->GV_MASK_COLOR:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    invoke-interface {v0, v2, v1}, Lcom/amazon/android/docviewer/DebugKindleDocViewer;->debugSetProperty(Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;I)V

    .line 988
    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugActivity$23;->val$settingsView:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/krl/R$id;->animationDurationText:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 989
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 990
    sget-object v2, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->GV_TRANSITION_DURATION:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    invoke-interface {v0, v2, v1}, Lcom/amazon/android/docviewer/DebugKindleDocViewer;->debugSetProperty(Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;I)V

    .line 992
    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugActivity$23;->val$settingsView:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/krl/R$id;->fitToWidthCheck:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 993
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 994
    sget-object v2, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->FIT_TO_WIDTH:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    invoke-interface {v0, v2, v1}, Lcom/amazon/android/docviewer/DebugKindleDocViewer;->debugSetProperty(Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;I)V

    .line 996
    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugActivity$23;->val$settingsView:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/krl/R$id;->twoPageUpCheck:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 997
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 998
    sget-object v2, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->MULTI_COLUMN:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    invoke-interface {v0, v2, v1}, Lcom/amazon/android/docviewer/DebugKindleDocViewer;->debugSetProperty(Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;I)V

    .line 1000
    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugActivity$23;->val$settingsView:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/krl/R$id;->fullpageOnEnterCheck:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 1001
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 1002
    sget-object v2, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->GV_SHOW_FULL_ON_ENTER:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    invoke-interface {v0, v2, v1}, Lcom/amazon/android/docviewer/DebugKindleDocViewer;->debugSetProperty(Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;I)V

    .line 1004
    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugActivity$23;->val$settingsView:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/krl/R$id;->fullpageOnExitCheck:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 1005
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 1006
    sget-object v2, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->GV_SHOW_FULL_ON_EXIT:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    invoke-interface {v0, v2, v1}, Lcom/amazon/android/docviewer/DebugKindleDocViewer;->debugSetProperty(Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;I)V

    .line 1008
    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugActivity$23;->val$settingsView:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/krl/R$id;->verticalScrollCheck:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 1009
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 1010
    sget-object v2, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->VERTICAL_SCROLL:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    invoke-interface {v0, v2, v1}, Lcom/amazon/android/docviewer/DebugKindleDocViewer;->debugSetProperty(Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;I)V

    .line 1012
    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugActivity$23;->val$settingsView:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/krl/R$id;->autoRotateCheck:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 1013
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 1014
    sget-object v2, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->GV_AUTO_ROTATE:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    invoke-interface {v0, v2, v1}, Lcom/amazon/android/docviewer/DebugKindleDocViewer;->debugSetProperty(Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;I)V

    .line 1016
    invoke-interface {v0}, Lcom/amazon/android/docviewer/DebugKindleDocViewer;->debugApplySettings()V

    :cond_0
    return-void
.end method
