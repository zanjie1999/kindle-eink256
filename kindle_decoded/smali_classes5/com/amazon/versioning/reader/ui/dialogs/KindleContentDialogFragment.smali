.class public Lcom/amazon/versioning/reader/ui/dialogs/KindleContentDialogFragment;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "KindleContentDialogFragment.java"


# instance fields
.field protected dialogCompletionListner:Lcom/amazon/versioning/interfaces/DialogActionListener;

.field protected themeID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/amazon/versioning/reader/ui/dialogs/KindleContentDialogFragment;->themeID:I

    return-void
.end method


# virtual methods
.method public getNonRubyDialogBuilder()Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRubyDialog()Landroidx/appcompat/app/AlertDialog;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 60
    instance-of v0, p1, Lcom/amazon/versioning/interfaces/DialogActionListener;

    if-eqz v0, :cond_0

    .line 61
    check-cast p1, Lcom/amazon/versioning/interfaces/DialogActionListener;

    iput-object p1, p0, Lcom/amazon/versioning/reader/ui/dialogs/KindleContentDialogFragment;->dialogCompletionListner:Lcom/amazon/versioning/interfaces/DialogActionListener;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 34
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->areMultipleThemesSupported()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 38
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object p1

    .line 39
    sget-object v0, Lcom/amazon/versioning/reader/ui/dialogs/KindleContentDialogFragment$1;->$SwitchMap$com$amazon$kindle$krx$theme$Theme:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    sget p1, Lcom/amazon/versioning/R$style;->AlertDialog_Dark:I

    iput p1, p0, Lcom/amazon/versioning/reader/ui/dialogs/KindleContentDialogFragment;->themeID:I

    goto :goto_0

    .line 41
    :cond_1
    sget p1, Lcom/amazon/versioning/R$style;->AlertDialog_Light:I

    iput p1, p0, Lcom/amazon/versioning/reader/ui/dialogs/KindleContentDialogFragment;->themeID:I

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 69
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->areMultipleThemesSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/amazon/versioning/reader/ui/dialogs/KindleContentDialogFragment;->getRubyDialog()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/versioning/reader/ui/dialogs/KindleContentDialogFragment;->getNonRubyDialogBuilder()Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 111
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDetach()V

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/amazon/versioning/reader/ui/dialogs/KindleContentDialogFragment;->dialogCompletionListner:Lcom/amazon/versioning/interfaces/DialogActionListener;

    return-void
.end method

.method protected reportAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 143
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getUpdatePluginMetricsManager()Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;

    move-result-object v0

    .line 144
    invoke-virtual {v0, p1, p2}, Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;->performReadingStreamsAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected reportPMET(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 133
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getUpdatePluginMetricsManager()Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;

    move-result-object v0

    .line 134
    invoke-virtual {v0, p1, p2}, Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected reportPMETAndAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/amazon/versioning/reader/ui/dialogs/KindleContentDialogFragment;->reportPMET(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/amazon/versioning/reader/ui/dialogs/KindleContentDialogFragment;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
