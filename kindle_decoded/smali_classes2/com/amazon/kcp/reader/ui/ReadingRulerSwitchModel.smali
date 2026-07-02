.class public final Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;
.super Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureViewModel;
.source "ReadingRulerSwitchModel.kt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureViewModel;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;->updateState()V

    return-void
.end method

.method public static final synthetic access$updateState(Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;Z)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;->updateState(Z)V

    return-void
.end method

.method private final updateState(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureViewModel;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/readingruler/R$string;->kre_aamenu_readingruler_on:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.stri\u2026e_aamenu_readingruler_on)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureViewModel;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/readingruler/R$string;->kre_aamenu_readingruler_off:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.stri\u2026_aamenu_readingruler_off)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    :goto_0
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureViewModel;->setState(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getReadingRulerSwitchHandler()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1;-><init>(Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;)V

    return-object v0
.end method

.method public final getStateInBoolean()Z
    .locals 2

    .line 57
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    const-string v1, "Utils.getFactory().userSettingsController"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getReadingRulerEnabled()Z

    move-result v0

    return v0
.end method

.method public final updateState()V
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;->getStateInBoolean()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;->updateState(Z)V

    return-void
.end method
