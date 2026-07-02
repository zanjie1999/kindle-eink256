.class public interface abstract Lcom/amazon/kindle/krx/ui/ILibraryUIManager;
.super Ljava/lang/Object;
.source "ILibraryUIManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;,
        Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;
    }
.end annotation


# virtual methods
.method public abstract getActionButtonProviderRegistry()Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Void;",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getActionButtonProviderRegistry(Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;)Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;",
            ")",
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Void;",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAudioBookMetadataProvider()Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;
.end method

.method public abstract getAudioDownloadHandler()Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler;
.end method

.method public abstract getCollectionsClient(Lcom/amazon/kindle/krx/collections/CollectionFilter;)Lcom/amazon/kindle/krx/collections/ICollectionsClient;
.end method

.method public abstract getContextualActionButtonProviderRegistry()Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;>;"
        }
    .end annotation
.end method

.method public abstract getLandingScreenActions(Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
            "Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getLibraryDecorationProviderRegistry()Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Landroid/view/View;",
            "Lcom/amazon/kindle/krx/ui/DecorationPosition;",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Landroid/view/View;",
            "Lcom/amazon/kindle/krx/ui/DecorationPosition;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLibraryDecorationProviderRegistryForSpecificView()Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Landroid/view/View;",
            "Lcom/amazon/kindle/krx/ui/LibraryDecorationKey;",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Landroid/view/View;",
            "Lcom/amazon/kindle/krx/ui/LibraryDecorationKey;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getLibraryLeftNavProvidersByPriority()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLibraryLeftNavProvidersByPriorityV2()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReadingListRecommendationProvidersByPriority()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider;",
            ">;"
        }
    .end annotation
.end method

.method public abstract launchAppSettings()V
.end method

.method public abstract launchHelpAndFeedbackView(Landroid/content/Context;)V
.end method

.method public abstract launchHelpAndFeedbackView(Landroid/content/Context;Landroid/os/Bundle;)V
.end method

.method public abstract launchLibrary()V
.end method

.method public abstract launchLibrarySettings()V
.end method

.method public abstract launchLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V
.end method

.method public abstract launchLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;)V
.end method

.method public abstract launchReadingSettings()V
.end method

.method public abstract refreshLandingScreenAction(Lcom/amazon/kindle/krx/providers/ILandingScreenActionProvider;)V
.end method

.method public abstract refreshLibraryActionBar()V
.end method

.method public abstract refreshLibraryCovers()V
.end method

.method public abstract refreshLibraryDecoration(Lcom/amazon/kindle/krx/ui/DecorationPosition;)V
.end method

.method public abstract refreshLibraryLeftNav()V
.end method

.method public abstract registerActionButtonProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract registerActionButtonProvider(Lcom/amazon/kindle/krx/providers/IProvider;Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;",
            ")V"
        }
    .end annotation
.end method

.method public abstract registerAudioBookMetadataProvider(Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;)V
.end method

.method public abstract registerAudioDownloadHandler(Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler;)V
.end method

.method public abstract registerCollectionsClient(Lcom/amazon/kindle/krx/collections/ICollectionsClient;)V
.end method

.method public abstract registerContextualActionButtonProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract registerLandingScreenActionProvider(Lcom/amazon/kindle/krx/providers/ILandingScreenActionProvider;)V
.end method

.method public abstract registerLibraryActionBarRefresher(Lcom/amazon/kindle/krx/ui/ILibraryActionBarRefresher;)V
.end method

.method public abstract registerLibraryCoversRefresher(Lcom/amazon/kindle/krx/ui/ILibraryCoversRefresher;)V
.end method

.method public abstract registerLibraryDecorationProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Landroid/view/View;",
            "Lcom/amazon/kindle/krx/ui/DecorationPosition;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract registerLibraryDecorationProviderForSpecificView(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Landroid/view/View;",
            "Lcom/amazon/kindle/krx/ui/LibraryDecorationKey;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerLibraryLeftNavProvider(Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract registerLibraryLeftNavProvider(Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2;)V
.end method

.method public abstract registerLibraryLeftNavRefresher(Lcom/amazon/kindle/krx/ui/ILibraryLeftNavRefresher;)V
.end method

.method public abstract registerReadingListRecommendationProvider(Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider;)V
.end method
