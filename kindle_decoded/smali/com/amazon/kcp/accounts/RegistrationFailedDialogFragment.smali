.class public Lcom/amazon/kcp/accounts/RegistrationFailedDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "RegistrationFailedDialogFragment.java"


# static fields
.field private static final BACKGROUND_OPACITY:F = 1.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 24
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/amazon/kindle/krl/R$string;->error:I

    .line 25
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v0, Lcom/amazon/kindle/krl/R$string;->error_login_default:I

    .line 26
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v0, Lcom/amazon/kindle/krl/R$string;->ok:I

    new-instance v1, Lcom/amazon/kcp/accounts/RegistrationFailedDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/accounts/RegistrationFailedDialogFragment$1;-><init>(Lcom/amazon/kcp/accounts/RegistrationFailedDialogFragment;)V

    .line 27
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 36
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onStart()V
    .locals 3

    .line 41
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 49
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v1, 0x2

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method
