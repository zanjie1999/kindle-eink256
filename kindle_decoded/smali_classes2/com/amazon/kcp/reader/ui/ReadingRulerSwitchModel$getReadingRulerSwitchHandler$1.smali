.class final Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ReadingRulerSwitchModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;->getReadingRulerSwitchHandler()Lkotlin/jvm/functions/Function1;
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
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1;->this$0:Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 5

    .line 24
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "factory"

    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    .line 26
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    const-string v2, "factory.readerController"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    const-string v2, "settings"

    if-eqz p1, :cond_1

    .line 27
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->getContinuousScrollReflowableEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getContinuousScrollEnabled()Z

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    .line 29
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    const-string v0, "AndroidApplicationController.getInstance()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    const-string v0, "activity"

    .line 30
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 31
    new-instance v2, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;

    sget-object v3, Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;->BASIC:Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;

    invoke-direct {v2, p1, v3}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;-><init>(Landroid/content/Context;Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;)V

    .line 32
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1;->this$0:Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;

    invoke-virtual {v3}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureViewModel;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/readingruler/R$string;->kre_aamenu_readingruler_JIT_EnableCS_Header:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "context.getString(R.stri\u2026uler_JIT_EnableCS_Header)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->title(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;

    .line 33
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1;->this$0:Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;

    invoke-virtual {v3}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureViewModel;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/readingruler/R$string;->kre_aamenu_readingruler_JIT_EnableCSInBook_Text:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "context.getString(R.stri\u2026_JIT_EnableCSInBook_Text)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->message(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;

    .line 34
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1;->this$0:Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;

    invoke-virtual {v3}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureViewModel;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/readingruler/R$string;->yes:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "context.getString(R.string.yes)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->positiveButtonText(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;

    .line 35
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1;->this$0:Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;

    invoke-virtual {v3}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureViewModel;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/readingruler/R$string;->no:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "context.getString(R.string.no)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->negativeButtonText(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;

    .line 36
    new-instance v3, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1$fragment$1;

    invoke-direct {v3, p0, v1}, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1$fragment$1;-><init>(Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1;Lcom/amazon/kcp/application/UserSettingsController;)V

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->positiveButtonAction(Lkotlin/jvm/functions/Function0;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;

    .line 41
    new-instance v3, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1$fragment$2;

    invoke-direct {v3, p0, v1, p1}, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1$fragment$2;-><init>(Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1;Lcom/amazon/kcp/application/UserSettingsController;Lcom/amazon/kcp/reader/ReaderActivity;)V

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->negativeButtonAction(Lkotlin/jvm/functions/Function0;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;

    .line 47
    invoke-virtual {v2}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->build()Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_1
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setReadingRulerEnabled(Z)V

    .line 51
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1;->this$0:Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;

    invoke-static {v0, p1}, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;->access$updateState(Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;Z)V

    :goto_0
    return-void
.end method
