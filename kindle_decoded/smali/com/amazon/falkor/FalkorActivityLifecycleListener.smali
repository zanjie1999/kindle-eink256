.class public final Lcom/amazon/falkor/FalkorActivityLifecycleListener;
.super Ljava/lang/Object;
.source "FalkorAndroidPlugin.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;


# instance fields
.field private final eOEController:Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;

.field private final faveEController:Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;

.field private final sampleEController:Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;


# direct methods
.method public constructor <init>(Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;)V
    .locals 1

    const-string v0, "eOEController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sampleEController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "faveEController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/falkor/FalkorActivityLifecycleListener;->eOEController:Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;

    iput-object p2, p0, Lcom/amazon/falkor/FalkorActivityLifecycleListener;->sampleEController:Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;

    iput-object p3, p0, Lcom/amazon/falkor/FalkorActivityLifecycleListener;->faveEController:Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;

    return-void
.end method


# virtual methods
.method public onActionBarVisibilityChange(Z)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onOverlayVisibilityChange(Z)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/amazon/falkor/FalkorActivityLifecycleListener;->eOEController:Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;

    invoke-virtual {v0, p1}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;->onOverlayVisibilityChange(Z)V

    .line 142
    iget-object v0, p0, Lcom/amazon/falkor/FalkorActivityLifecycleListener;->sampleEController:Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;

    invoke-virtual {v0, p1}, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->onOverlayVisibilityChange(Z)V

    .line 143
    iget-object v0, p0, Lcom/amazon/falkor/FalkorActivityLifecycleListener;->faveEController:Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;

    invoke-virtual {v0, p1}, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;->onOverlayVisibilityChange(Z)V

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onSettingsChange()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
