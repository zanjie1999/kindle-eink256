.class public Lcom/amazon/kindle/ffs/view/settings/RationaleFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "RationaleFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRationaleFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RationaleFragment.kt\ncom/amazon/kindle/ffs/view/settings/RationaleFragment\n*L\n1#1,59:1\n*E\n"
.end annotation


# instance fields
.field private final metrics$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 27
    sget-object v0, Lcom/amazon/kindle/ffs/view/settings/RationaleFragment$metrics$2;->INSTANCE:Lcom/amazon/kindle/ffs/view/settings/RationaleFragment$metrics$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/settings/RationaleFragment;->metrics$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getMetrics$p(Lcom/amazon/kindle/ffs/view/settings/RationaleFragment;)Lcom/amazon/kindle/ffs/metrics/MetricsManager;
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/settings/RationaleFragment;->getMetrics()Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    move-result-object p0

    return-object p0
.end method

.method private final getMetrics()Lcom/amazon/kindle/ffs/metrics/MetricsManager;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/settings/RationaleFragment;->metrics$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 30
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "activity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ffs/R$layout;->device_setup_over_bluetooth_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 32
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 33
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    .line 34
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 36
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 37
    sget v1, Lcom/amazon/kindle/ffs/R$id;->accept:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/amazon/kindle/ffs/view/settings/RationaleFragment$onCreateDialog$1;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kindle/ffs/view/settings/RationaleFragment$onCreateDialog$1;-><init>(Lcom/amazon/kindle/ffs/view/settings/RationaleFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    sget v1, Lcom/amazon/kindle/ffs/R$id;->cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/amazon/kindle/ffs/view/settings/RationaleFragment$onCreateDialog$2;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kindle/ffs/view/settings/RationaleFragment$onCreateDialog$2;-><init>(Lcom/amazon/kindle/ffs/view/settings/RationaleFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    sget v1, Lcom/amazon/kindle/ffs/R$id;->rationale_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 49
    new-instance v1, Lcom/amazon/kindle/ffs/view/settings/RationaleFragment$onCreateDialog$3;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/ffs/view/settings/RationaleFragment$onCreateDialog$3;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    const-string v0, "dialog"

    .line 53
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
