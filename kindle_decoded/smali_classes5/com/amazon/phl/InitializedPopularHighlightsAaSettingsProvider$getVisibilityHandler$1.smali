.class final Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider$getVisibilityHandler$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PopularHighlightsAaSettingsProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;->getVisibilityHandler()Lkotlin/jvm/functions/Function0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/krx/viewoptions/DisplayState;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPopularHighlightsAaSettingsProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PopularHighlightsAaSettingsProvider.kt\ncom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider$getVisibilityHandler$1\n*L\n1#1,195:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;


# direct methods
.method constructor <init>(Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider$getVisibilityHandler$1;->this$0:Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/krx/viewoptions/DisplayState;
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider$getVisibilityHandler$1;->this$0:Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;

    invoke-static {v0}, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;->access$getSdk$p(Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    const-string/jumbo v1, "sdk.readerManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v1, p0, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider$getVisibilityHandler$1;->this$0:Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;

    invoke-static {v1}, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;->access$getPhlManager$p(Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;)Lcom/amazon/phl/PopularHighlightsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/phl/PopularHighlightsManager;->hasPopularHighlights(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->HIDDEN:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    goto :goto_0

    .line 169
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->ENABLED:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 171
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->HIDDEN:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    :goto_1
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider$getVisibilityHandler$1;->invoke()Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    move-result-object v0

    return-object v0
.end method
