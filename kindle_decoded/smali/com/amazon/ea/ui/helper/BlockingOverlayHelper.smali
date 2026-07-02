.class public Lcom/amazon/ea/ui/helper/BlockingOverlayHelper;
.super Ljava/lang/Object;
.source "BlockingOverlayHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ea/ui/helper/BlockingOverlayHelper$BlockingOverlayDialogFragment;
    }
.end annotation


# static fields
.field private static final BLOCKING_OVERLAY_FRAGMENT_TAG:Ljava/lang/String; = "com.amazon.ea.ui.helper.BlockingOverlayHelper.BlockingOverlayDialogFragment"

.field private static final IS_DIALOG_THEMED_KEY:Ljava/lang/String; = "com.amazon.ea.ui.helper.BlockingOverlayHelper.IS_DIALOG_THEMED_KEY"


# direct methods
.method public static isBlockingOverlayShowing(Landroid/app/Activity;)Z
    .locals 1

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "com.amazon.ea.ui.helper.BlockingOverlayHelper.BlockingOverlayDialogFragment"

    .line 71
    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static toggleBlockingOverlay(Landroid/app/Activity;ZZ)V
    .locals 3

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "com.amazon.ea.ui.helper.BlockingOverlayHelper.BlockingOverlayDialogFragment"

    if-eqz p2, :cond_0

    .line 46
    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p2

    if-nez p2, :cond_1

    .line 47
    new-instance p2, Lcom/amazon/ea/ui/helper/BlockingOverlayHelper$BlockingOverlayDialogFragment;

    invoke-direct {p2}, Lcom/amazon/ea/ui/helper/BlockingOverlayHelper$BlockingOverlayDialogFragment;-><init>()V

    .line 48
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "com.amazon.ea.ui.helper.BlockingOverlayHelper.IS_DIALOG_THEMED_KEY"

    .line 49
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    invoke-virtual {p2, v1}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p2, p0, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 56
    instance-of p1, p0, Lcom/amazon/ea/ui/helper/BlockingOverlayHelper$BlockingOverlayDialogFragment;

    if-eqz p1, :cond_1

    .line 57
    check-cast p0, Lcom/amazon/ea/ui/helper/BlockingOverlayHelper$BlockingOverlayDialogFragment;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    :goto_0
    return-void
.end method
