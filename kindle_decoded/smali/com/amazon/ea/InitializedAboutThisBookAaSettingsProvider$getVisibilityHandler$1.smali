.class final Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider$getVisibilityHandler$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AboutThisBookAaSettingsProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->getVisibilityHandler()Lkotlin/jvm/functions/Function0;
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
    value = "SMAP\nAboutThisBookAaSettingsProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AboutThisBookAaSettingsProvider.kt\ncom/amazon/ea/InitializedAboutThisBookAaSettingsProvider$getVisibilityHandler$1\n*L\n1#1,247:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;


# direct methods
.method constructor <init>(Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider$getVisibilityHandler$1;->this$0:Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/krx/viewoptions/DisplayState;
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider$getVisibilityHandler$1;->this$0:Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;

    invoke-static {v0}, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->access$getSdk$p(Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    const-string/jumbo v1, "sdk.readerManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "it"

    .line 183
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->CHILDREN:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->ENABLED:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    goto :goto_1

    .line 190
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->isFixedLayout()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 187
    iget-object v1, p0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider$getVisibilityHandler$1;->this$0:Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;

    invoke-static {v1}, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->access$getIgnoredBookFormats$p(Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 188
    iget-object v1, p0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider$getVisibilityHandler$1;->this$0:Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;

    invoke-static {v1}, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->access$getIgnoredContentClasses$p(Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 189
    iget-object v1, p0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider$getVisibilityHandler$1;->this$0:Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;

    invoke-static {v1}, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->access$getIgnoredContentTypes$p(Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 190
    iget-object v1, p0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider$getVisibilityHandler$1;->this$0:Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;

    invoke-static {v1}, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->access$getIgnoredMimeTypes$p(Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 193
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->ENABLED:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    goto :goto_1

    .line 191
    :cond_2
    :goto_0
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->HIDDEN:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    .line 195
    :cond_3
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->HIDDEN:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    :goto_2
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 100
    invoke-virtual {p0}, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider$getVisibilityHandler$1;->invoke()Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    move-result-object v0

    return-object v0
.end method
