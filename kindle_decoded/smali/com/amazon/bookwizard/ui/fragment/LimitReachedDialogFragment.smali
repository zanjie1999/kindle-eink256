.class public Lcom/amazon/bookwizard/ui/fragment/LimitReachedDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "LimitReachedDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/ui/fragment/LimitReachedDialogFragment$LimitReachedDialogListener;
    }
.end annotation


# static fields
.field private static final KEY_PRIME:Ljava/lang/String; = "is_prime"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Z)Lcom/amazon/bookwizard/ui/fragment/LimitReachedDialogFragment;
    .locals 3

    .line 47
    new-instance v0, Lcom/amazon/bookwizard/ui/fragment/LimitReachedDialogFragment;

    invoke-direct {v0}, Lcom/amazon/bookwizard/ui/fragment/LimitReachedDialogFragment;-><init>()V

    .line 48
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "is_prime"

    .line 49
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "is_prime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 60
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    sget p1, Lcom/amazon/bookwizard/R$string;->bookwizard_prime_limit_reached:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/amazon/bookwizard/R$string;->bookwizard_ku_books_selection_error_body:I

    .line 61
    :goto_0
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/amazon/bookwizard/R$string;->bookwizard_ku_books_selection_error_exit:I

    new-instance v1, Lcom/amazon/bookwizard/ui/fragment/LimitReachedDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/amazon/bookwizard/ui/fragment/LimitReachedDialogFragment$2;-><init>(Lcom/amazon/bookwizard/ui/fragment/LimitReachedDialogFragment;)V

    .line 62
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/amazon/bookwizard/ui/fragment/LimitReachedDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/amazon/bookwizard/ui/fragment/LimitReachedDialogFragment$1;-><init>(Lcom/amazon/bookwizard/ui/fragment/LimitReachedDialogFragment;)V

    .line 72
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 80
    new-instance v0, Lcom/amazon/bookwizard/ui/fragment/LimitReachedDialogFragment$3;

    invoke-direct {v0, p0, p1}, Lcom/amazon/bookwizard/ui/fragment/LimitReachedDialogFragment$3;-><init>(Lcom/amazon/bookwizard/ui/fragment/LimitReachedDialogFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method
