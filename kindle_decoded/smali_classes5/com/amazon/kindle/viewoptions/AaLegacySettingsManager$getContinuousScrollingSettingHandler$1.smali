.class final Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getContinuousScrollingSettingHandler$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AaLegacySettingsManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getContinuousScrollingSettingHandler()Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getContinuousScrollingSettingHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getContinuousScrollingSettingHandler$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 3

    if-nez p1, :cond_1

    .line 682
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getContinuousScrollingSettingHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->access$getSettings$p(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getReadingRulerEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 683
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getContinuousScrollingSettingHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/amazon/kcp/reader/ReaderActivity;

    .line 684
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 685
    new-instance v1, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;

    sget-object v2, Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;->BASIC:Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;

    invoke-direct {v1, p1, v2}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;-><init>(Landroid/content/Context;Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;)V

    .line 686
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getContinuousScrollingSettingHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/amazon/kindle/krl/R$string;->kre_aamenu_readingruler_JIT_DisableRR_Header:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "context.getString(R.stri\u2026ler_JIT_DisableRR_Header)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->title(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;

    .line 687
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getContinuousScrollingSettingHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/amazon/kindle/krl/R$string;->kre_aamenu_readingruler_JIT_DisableRR_Text:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "context.getString(R.stri\u2026ruler_JIT_DisableRR_Text)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->message(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;

    .line 688
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getContinuousScrollingSettingHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/amazon/kindle/krl/R$string;->yes:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "context.getString(R.string.yes)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->positiveButtonText(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;

    .line 689
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getContinuousScrollingSettingHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/amazon/kindle/krl/R$string;->no:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "context.getString(R.string.no)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->negativeButtonText(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;

    .line 690
    new-instance p1, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getContinuousScrollingSettingHandler$1$fragment$1;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getContinuousScrollingSettingHandler$1$fragment$1;-><init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getContinuousScrollingSettingHandler$1;)V

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->positiveButtonAction(Lkotlin/jvm/functions/Function0;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;

    .line 694
    new-instance p1, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getContinuousScrollingSettingHandler$1$fragment$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getContinuousScrollingSettingHandler$1$fragment$2;-><init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getContinuousScrollingSettingHandler$1;)V

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->negativeButtonAction(Lkotlin/jvm/functions/Function0;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;

    .line 699
    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->build()Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;

    move-result-object p1

    .line 700
    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 683
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.amazon.kcp.reader.ReaderActivity"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getContinuousScrollingSettingHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->access$getSettings$p(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setContinuousScrollReflowableEnabled(Z)V

    :goto_0
    return-void
.end method
