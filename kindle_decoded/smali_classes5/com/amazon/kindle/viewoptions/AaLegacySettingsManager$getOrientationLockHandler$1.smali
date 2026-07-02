.class final Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getOrientationLockHandler$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AaLegacySettingsManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getOrientationLockHandler()Lkotlin/jvm/functions/Function1;
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

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getOrientationLockHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

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

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getOrientationLockHandler$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 4

    const-string v0, "Menu"

    const/4 v1, -0x1

    if-eqz p1, :cond_4

    .line 820
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getOrientationLockHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Landroid/view/WindowManager;

    .line 821
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    const-string/jumbo v2, "windowManager.defaultDisplay"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 828
    :goto_0
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getOrientationLockHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->access$getOrientationManager$p(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)Lcom/amazon/kcp/reader/ui/OrientationLockSettingManager;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/amazon/kcp/reader/ui/OrientationLockSettingManager;->lockSetting(I)V

    .line 830
    invoke-static {v1}, Lcom/amazon/kcp/util/MetricsUtils;->getActivityOrientationForMetrics(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "MetricsUtils.getActivity\u2026onForMetrics(orientation)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 829
    invoke-static {p1, v0}, Lcom/amazon/kcp/util/fastmetrics/InBookFastMetrics;->reportOrientationLockTap(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 820
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 833
    :cond_4
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getOrientationLockHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->access$getOrientationManager$p(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)Lcom/amazon/kcp/reader/ui/OrientationLockSettingManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/reader/ui/OrientationLockSettingManager;->unlockSetting()V

    .line 835
    invoke-static {v1}, Lcom/amazon/kcp/util/MetricsUtils;->getActivityOrientationForMetrics(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "MetricsUtils.getActivity\u2026_ORIENTATION_UNSPECIFIED)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 834
    invoke-static {p1, v0}, Lcom/amazon/kcp/util/fastmetrics/InBookFastMetrics;->reportOrientationLockTap(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
