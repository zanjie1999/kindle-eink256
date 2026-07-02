.class public final Lcom/amazon/falkor/widgets/AboutThisStoryWidgetItemProvider;
.super Ljava/lang/Object;
.source "AboutThisStoryWidgetItemProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/IProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/IProvider<",
        "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAboutThisStoryWidgetItemProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AboutThisStoryWidgetItemProvider.kt\ncom/amazon/falkor/widgets/AboutThisStoryWidgetItemProvider\n*L\n1#1,53:1\n*E\n"
.end annotation


# instance fields
.field private final currentEpisodeInfoManager:Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentEpisodeInfoManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/falkor/widgets/AboutThisStoryWidgetItemProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p2, p0, Lcom/amazon/falkor/widgets/AboutThisStoryWidgetItemProvider;->currentEpisodeInfoManager:Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ")",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 21
    new-instance p1, Lcom/amazon/falkor/widgets/AboutThisStoryWidgetItem;

    iget-object v0, p0, Lcom/amazon/falkor/widgets/AboutThisStoryWidgetItemProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v1, p0, Lcom/amazon/falkor/widgets/AboutThisStoryWidgetItemProvider;->currentEpisodeInfoManager:Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

    invoke-direct {p1, v0, v1}, Lcom/amazon/falkor/widgets/AboutThisStoryWidgetItem;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/falkor/widgets/AboutThisStoryWidgetItemProvider;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    move-result-object p1

    return-object p1
.end method
