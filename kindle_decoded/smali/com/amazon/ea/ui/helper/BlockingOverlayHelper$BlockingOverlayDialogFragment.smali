.class public Lcom/amazon/ea/ui/helper/BlockingOverlayHelper$BlockingOverlayDialogFragment;
.super Landroid/app/DialogFragment;
.source "BlockingOverlayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/ui/helper/BlockingOverlayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockingOverlayDialogFragment"
.end annotation


# instance fields
.field private themed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 82
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "com.amazon.ea.ui.helper.BlockingOverlayHelper.IS_DIALOG_THEMED_KEY"

    .line 84
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/amazon/ea/ui/helper/BlockingOverlayHelper$BlockingOverlayDialogFragment;->themed:Z

    if-eqz p1, :cond_1

    .line 88
    sget p1, Lcom/amazon/kindle/ea/R$array;->anyactions_kindle_dialog:I

    invoke-static {p1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedResourceId(I)I

    move-result p1

    goto :goto_1

    .line 90
    :cond_1
    sget p1, Lcom/amazon/kindle/ea/R$array;->anyactions_kindle_dialog:I

    :goto_1
    const/4 v2, 0x2

    .line 92
    invoke-virtual {p0, v2, p1}, Landroid/app/DialogFragment;->setStyle(II)V

    .line 93
    invoke-virtual {p0, v1}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 94
    invoke-virtual {p0, v0}, Landroid/app/DialogFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 99
    sget p3, Lcom/amazon/kindle/ea/R$layout;->anyactions_blocking_overlay:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 101
    sget p2, Lcom/amazon/kindle/ea/R$id;->anyactions_blocking_overlay_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 102
    sget p3, Lcom/amazon/kindle/ea/R$id;->anyactions_blocking_overlay_text:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 104
    iget-boolean v0, p0, Lcom/amazon/ea/ui/helper/BlockingOverlayHelper$BlockingOverlayDialogFragment;->themed:Z

    if-eqz v0, :cond_0

    .line 105
    sget v0, Lcom/amazon/kindle/ea/R$array;->anyactions_blocking_overlay_color:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 106
    sget p2, Lcom/amazon/kindle/ea/R$array;->startactions_text_button_text_color_default:I

    invoke-static {p2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    :cond_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    new-instance p3, Lcom/amazon/ea/ui/helper/BlockingOverlayHelper$BlockingOverlayDialogFragment$1;

    invoke-direct {p3, p0}, Lcom/amazon/ea/ui/helper/BlockingOverlayHelper$BlockingOverlayDialogFragment$1;-><init>(Lcom/amazon/ea/ui/helper/BlockingOverlayHelper$BlockingOverlayDialogFragment;)V

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 133
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 136
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 122
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 123
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method
