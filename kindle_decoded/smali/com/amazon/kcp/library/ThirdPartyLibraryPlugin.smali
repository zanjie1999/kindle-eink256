.class public final Lcom/amazon/kcp/library/ThirdPartyLibraryPlugin;
.super Lcom/amazon/kcp/library/LibraryPlugin;
.source "ThirdPartyLibraryPlugin.kt"


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    name = "Library Plugin"
    target = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Target;->StandAlone:Lcom/amazon/kindle/krx/plugin/Plugin$Target;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/LibraryPlugin;->initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 16
    sget-object p1, Lcom/amazon/kcp/debug/LibrarySearchImprovementDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/LibrarySearchImprovementDebugUtils;

    invoke-virtual {p1}, Lcom/amazon/kcp/debug/LibrarySearchImprovementDebugUtils;->initialize()V

    .line 17
    sget-object p1, Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;

    invoke-virtual {p1}, Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;->initialize()V

    .line 18
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isKFABuild()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryPlugin;->initializeLibrarySharedFilter()V

    .line 21
    :cond_0
    sget-object p1, Lcom/amazon/kcp/debug/LibrarySearchSpellCorrectionDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/LibrarySearchSpellCorrectionDebugUtils;

    invoke-virtual {p1}, Lcom/amazon/kcp/debug/LibrarySearchSpellCorrectionDebugUtils;->initialize()V

    return-void
.end method
