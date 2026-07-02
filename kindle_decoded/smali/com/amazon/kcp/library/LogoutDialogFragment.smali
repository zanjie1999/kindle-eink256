.class public Lcom/amazon/kcp/library/LogoutDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "LogoutDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/LogoutDialogFragment$DeregisterHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private deregisterHandler:Lcom/amazon/kcp/library/LogoutDialogFragment$DeregisterHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/kcp/library/LogoutDialogFragment;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/LogoutDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/amazon/kcp/library/LogoutDialogFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/LogoutDialogFragment;)Lcom/amazon/kcp/library/LogoutDialogFragment$DeregisterHandler;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/kcp/library/LogoutDialogFragment;->deregisterHandler:Lcom/amazon/kcp/library/LogoutDialogFragment$DeregisterHandler;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 45
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 47
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->logout_confirmation:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 48
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->logout_confirmation_message:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 49
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->logout:I

    new-instance v1, Lcom/amazon/kcp/library/LogoutDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/LogoutDialogFragment$1;-><init>(Lcom/amazon/kcp/library/LogoutDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 58
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->cancel:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 60
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public setDeregisterClickHandler(Lcom/amazon/kcp/library/LogoutDialogFragment$DeregisterHandler;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/amazon/kcp/library/LogoutDialogFragment;->deregisterHandler:Lcom/amazon/kcp/library/LogoutDialogFragment$DeregisterHandler;

    return-void
.end method
