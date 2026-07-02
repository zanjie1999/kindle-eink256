.class public final Lcom/amazon/falkor/bottomsheet/NoopReaderNavigationListener$DefaultImpls;
.super Ljava/lang/Object;
.source "ReaderBottomSheetController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/falkor/bottomsheet/NoopReaderNavigationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static onAfterNavigation(Lcom/amazon/falkor/bottomsheet/NoopReaderNavigationListener;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    return-void
.end method

.method public static onBeforeNavigation(Lcom/amazon/falkor/bottomsheet/NoopReaderNavigationListener;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    const-string/jumbo p0, "navigationType"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onNavigationFailed(Lcom/amazon/falkor/bottomsheet/NoopReaderNavigationListener;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    return-void
.end method

.method public static onPageChange(Lcom/amazon/falkor/bottomsheet/NoopReaderNavigationListener;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    return-void
.end method

.method public static onPageFlowChanged(Lcom/amazon/falkor/bottomsheet/NoopReaderNavigationListener;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    return-void
.end method

.method public static onPageTurnAborted(Lcom/amazon/falkor/bottomsheet/NoopReaderNavigationListener;Lcom/amazon/kindle/krx/reader/IPageTurnAbortedEventData;)V
    .locals 0

    const-string/jumbo p0, "pageTurnAbortedEventData"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
