.class public final Lcom/amazon/phl/EmptyPopularHighlightsAaSettingsProvider;
.super Ljava/lang/Object;
.source "PopularHighlightsAaSettingsProvider.kt"

# interfaces
.implements Lcom/amazon/phl/IPopularHighlightsAaSettingsProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteAaTheme(I)V
    .locals 0

    .line 71
    invoke-static {p0, p1}, Lcom/amazon/phl/IPopularHighlightsAaSettingsProvider$DefaultImpls;->deleteAaTheme(Lcom/amazon/phl/IPopularHighlightsAaSettingsProvider;I)V

    return-void
.end method

.method public deleteAaTheme(ILandroid/content/Context;)V
    .locals 0

    const-string p1, "context"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getSettings(Lcom/amazon/kindle/krx/viewoptions/AaTabType;Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/viewoptions/AaTabType;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/viewoptions/AaSetting;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "context"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public loadSettingsFromAaTheme(I)V
    .locals 0

    .line 71
    invoke-static {p0, p1}, Lcom/amazon/phl/IPopularHighlightsAaSettingsProvider$DefaultImpls;->loadSettingsFromAaTheme(Lcom/amazon/phl/IPopularHighlightsAaSettingsProvider;I)V

    return-void
.end method

.method public loadSettingsFromAaTheme(ILandroid/content/Context;)V
    .locals 0

    const-string p1, "context"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public saveSettingsToAaTheme(I)V
    .locals 0

    .line 71
    invoke-static {p0, p1}, Lcom/amazon/phl/IPopularHighlightsAaSettingsProvider$DefaultImpls;->saveSettingsToAaTheme(Lcom/amazon/phl/IPopularHighlightsAaSettingsProvider;I)V

    return-void
.end method

.method public saveSettingsToAaTheme(ILandroid/content/Context;)V
    .locals 0

    const-string p1, "context"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
