.class public Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog;
.super Lcom/amazon/versioning/reader/ui/dialogs/KindleContentDialogFragment;
.source "LearnMoreUpdatePanelDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/dialogs/KindleContentDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonRubyDialog()Landroidx/appcompat/app/AlertDialog;
    .locals 4

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/versioning/R$layout;->kcu_learnmore_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 87
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 89
    sget v2, Lcom/amazon/versioning/R$id;->kcu_learnmore_dialog_text_id:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 91
    sget v3, Lcom/amazon/versioning/R$string;->learn_more_popup_content:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 94
    :cond_0
    sget v2, Lcom/amazon/versioning/R$id;->kcu_learnmore_dialog_link_id:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 96
    sget v3, Lcom/amazon/versioning/R$string;->learn_more_change_update_settings_label:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 97
    new-instance v3, Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog$3;

    invoke-direct {v3, p0, v1}, Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog$3;-><init>(Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    :cond_1
    sget v2, Lcom/amazon/versioning/R$id;->kcu_learnmore_dialog_button_id:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 114
    sget v2, Lcom/amazon/versioning/R$string;->learn_more_popup_button_text:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 115
    new-instance v2, Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog$4;

    invoke-direct {v2, p0, v1}, Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog$4;-><init>(Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-object v1
.end method

.method public getRubyDialog()Landroidx/appcompat/app/AlertDialog;
    .locals 4

    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/versioning/R$layout;->kcu_learnmore_dialog_ruby:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 39
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 41
    sget v2, Lcom/amazon/versioning/R$id;->kcu_learnmore_dialog_text_id:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 43
    sget v3, Lcom/amazon/versioning/R$string;->learn_more_popup_content:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 46
    :cond_0
    sget v2, Lcom/amazon/versioning/R$id;->kcu_learnmore_dialog_link_id:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 48
    sget v3, Lcom/amazon/versioning/R$string;->learn_more_change_update_settings_label:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 49
    new-instance v3, Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog$1;

    invoke-direct {v3, p0, v1}, Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog$1;-><init>(Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    :cond_1
    sget v2, Lcom/amazon/versioning/R$id;->kcu_learnmore_dialog_button_id:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 66
    sget v2, Lcom/amazon/versioning/R$string;->learn_more_popup_button_text:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 67
    new-instance v2, Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog$2;

    invoke-direct {v2, p0, v1}, Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog$2;-><init>(Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-object v1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 25
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->areMultipleThemesSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog;->getRubyDialog()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog;->getNonRubyDialog()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
