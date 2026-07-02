.class public Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "RedirectToSettingsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRedirectToSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RedirectToSettingsFragment.kt\ncom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment\n*L\n1#1,57:1\n*E\n"
.end annotation


# instance fields
.field private final metrics$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 25
    sget-object v0, Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment$metrics$2;->INSTANCE:Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment$metrics$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment;->metrics$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getMetrics$p(Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment;)Lcom/amazon/kindle/ffs/metrics/MetricsManager;
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment;->getMetrics()Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    move-result-object p0

    return-object p0
.end method

.method private final getMetrics()Lcom/amazon/kindle/ffs/metrics/MetricsManager;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment;->metrics$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 28
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 30
    sget v0, Lcom/amazon/kindle/ffs/R$string;->ffs_device_setup_over_bluetooth_simple_setup_title:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 31
    sget v0, Lcom/amazon/kindle/ffs/R$string;->ffs_device_setup_over_bluetooth_dialog_permissions_denied:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v0, 0x1

    .line 32
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 33
    sget v0, Lcom/amazon/kindle/ffs/R$string;->ffs_device_setup_over_bluetooth_go_to_settings:I

    new-instance v1, Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment$onCreateDialog$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment$onCreateDialog$1;-><init>(Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 41
    sget v0, Lcom/amazon/kindle/ffs/R$string;->ffs_device_setup_over_bluetooth_cancel:I

    new-instance v1, Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment$onCreateDialog$2;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment$onCreateDialog$2;-><init>(Lcom/amazon/kindle/ffs/view/settings/RedirectToSettingsFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 45
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const-string v0, "builder.create()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
