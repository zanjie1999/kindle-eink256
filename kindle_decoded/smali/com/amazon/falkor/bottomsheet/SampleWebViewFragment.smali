.class public final Lcom/amazon/falkor/bottomsheet/SampleWebViewFragment;
.super Lcom/amazon/falkor/bottomsheet/CachedWebViewFragment;
.source "SampleEpisodeController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/falkor/bottomsheet/SampleWebViewFragment$CreateDelegate;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 463
    sget-object v0, Lcom/amazon/falkor/BottomSheetID;->SAMPLE_EPISODE_BOTTOM_SHEET_ID:Lcom/amazon/falkor/BottomSheetID;

    invoke-virtual {v0}, Lcom/amazon/falkor/BottomSheetID;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/falkor/bottomsheet/CachedWebViewFragment;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getRefreshEvent()Lcom/amazon/falkor/event/SampleEpisodeBottomSheetRefreshEvent;
    .locals 2

    .line 466
    new-instance v0, Lcom/amazon/falkor/event/SampleEpisodeBottomSheetRefreshEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/falkor/event/SampleEpisodeBottomSheetRefreshEvent;-><init>(Z)V

    return-object v0
.end method

.method public bridge synthetic getRefreshEvent()Lcom/amazon/kindle/krx/events/IEvent;
    .locals 1

    .line 463
    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/SampleWebViewFragment;->getRefreshEvent()Lcom/amazon/falkor/event/SampleEpisodeBottomSheetRefreshEvent;

    move-result-object v0

    return-object v0
.end method

.method public final onUnlockEpisodeClickEvent(Lcom/amazon/falkor/event/UnlockEpisodeClickEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    invoke-virtual {p0}, Lcom/amazon/falkor/BaseRefreshableFragment;->markForRefreshOnResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    invoke-super {p0, p1, p2}, Lcom/amazon/falkor/BaseWebViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 484
    sget-object p1, Lcom/amazon/falkor/webview/WebViewCacheManager;->Companion:Lcom/amazon/falkor/webview/WebViewCacheManager$Companion;

    invoke-virtual {p1}, Lcom/amazon/falkor/webview/WebViewCacheManager$Companion;->getInstance()Lcom/amazon/falkor/webview/WebViewCacheManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/falkor/KindleReaderSDKReference;->INSTANCE:Lcom/amazon/falkor/KindleReaderSDKReference;

    invoke-virtual {p2}, Lcom/amazon/falkor/KindleReaderSDKReference;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/falkor/webview/WebViewCacheManager;->cleanUpDiscards(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-void
.end method

.method protected shouldShowHandle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
