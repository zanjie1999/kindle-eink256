.class public Lcom/amazon/kcp/store/StoreUnavailableDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "StoreUnavailableDialogFragment.java"


# static fields
.field private static final FINISH_ACTIVITY_WHEN_CANCEL_KEY:Ljava/lang/String; = "FINISH_ACTIVITY_WHEN_CANCEL_KEY"


# instance fields
.field private shouldFinishActivityWhenCancel:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/amazon/kcp/store/StoreUnavailableDialogFragment;->shouldFinishActivityWhenCancel:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/store/StoreUnavailableDialogFragment;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreUnavailableDialogFragment;->finishActivityIfNecessary()V

    return-void
.end method

.method private finishActivityIfNecessary()V
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/amazon/kcp/store/StoreUnavailableDialogFragment;->shouldFinishActivityWhenCancel:Z

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public static newInstance(Z)Lcom/amazon/kcp/store/StoreUnavailableDialogFragment;
    .locals 3

    .line 38
    new-instance v0, Lcom/amazon/kcp/store/StoreUnavailableDialogFragment;

    invoke-direct {v0}, Lcom/amazon/kcp/store/StoreUnavailableDialogFragment;-><init>()V

    .line 39
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "FINISH_ACTIVITY_WHEN_CANCEL_KEY"

    .line 40
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected addPositiveButton(Landroidx/appcompat/app/AlertDialog$Builder;)V
    .locals 2

    .line 82
    sget v0, Lcom/amazon/kindle/krl/R$string;->store_unavailable_open_in_browser:I

    new-instance v1, Lcom/amazon/kcp/store/StoreUnavailableDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/store/StoreUnavailableDialogFragment$2;-><init>(Lcom/amazon/kcp/store/StoreUnavailableDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, "FINISH_ACTIVITY_WHEN_CANCEL_KEY"

    .line 49
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kcp/store/StoreUnavailableDialogFragment;->shouldFinishActivityWhenCancel:Z

    .line 51
    :cond_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 53
    const-class v1, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    invoke-static {v1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 54
    invoke-interface {v1}, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;->shouldUsePaymentFlows()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 57
    sget v0, Lcom/amazon/kindle/krl/R$string;->store_unavailable_title:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 58
    sget v0, Lcom/amazon/kindle/krl/R$string;->store_unavailable_message:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 60
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/store/StoreUnavailableDialogFragment;->addPositiveButton(Landroidx/appcompat/app/AlertDialog$Builder;)V

    goto :goto_1

    .line 62
    :cond_2
    sget v0, Lcom/amazon/kindle/krl/R$string;->store_discover_unavailable_title:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 63
    sget v0, Lcom/amazon/kindle/krl/R$string;->store_discover_unavailable_message:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 66
    :goto_1
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 67
    sget v0, Lcom/amazon/kindle/krl/R$string;->ok:I

    new-instance v1, Lcom/amazon/kcp/store/StoreUnavailableDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/store/StoreUnavailableDialogFragment$1;-><init>(Lcom/amazon/kcp/store/StoreUnavailableDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->should_show_icon_of_alert_dialog:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x1080027

    .line 75
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 78
    :cond_3
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
