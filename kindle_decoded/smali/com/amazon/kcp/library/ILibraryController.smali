.class public interface abstract Lcom/amazon/kcp/library/ILibraryController;
.super Ljava/lang/Object;
.source "ILibraryController.java"


# virtual methods
.method public abstract cancelDownload(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V
.end method

.method public abstract cancelDownload(Ljava/lang/String;)V
.end method

.method public abstract cancelDownloads(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract checkForErrorAndDownloadBook(Ljava/lang/String;Landroid/view/View;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z
.end method

.method public abstract checkForErrorAndDownloadItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z
.end method

.method public abstract createShowLibraryViewIntent(Lcom/amazon/kindle/krx/library/LibraryView;)Landroid/content/Intent;
.end method

.method public abstract deleteBook(Ljava/lang/String;)V
.end method

.method public abstract deleteBookWithMetricReport(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract deleteBookWithMetricReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract deleteBooks(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteItems(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/library/ILibraryItemId;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteRemoteItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/library/ILibraryItemId;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract downloadBook(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z
.end method

.method public abstract downloadBook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z
.end method

.method public abstract errorIntentForFailure(Ljava/lang/String;ZLcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;)Landroid/content/Intent;
.end method

.method public abstract failureDetailsForBook(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;
.end method

.method public abstract getBookFromAsin(Ljava/lang/String;Z)Lcom/amazon/kindle/model/content/ILocalBookItem;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getBookFromBookId(Ljava/lang/String;)Lcom/amazon/kindle/model/content/ILocalBookItem;
.end method

.method public abstract getCurrentLibraryView()Lcom/amazon/kindle/krx/library/LibraryView;
.end method

.method public abstract getHelpAndFeedbackActivityIntent()Landroid/content/Intent;
.end method

.method public abstract getHomeLibraryIntent()Landroid/content/Intent;
.end method

.method public abstract getKrxBook(Lcom/amazon/kindle/content/ContentMetadata;)Lcom/amazon/kindle/krx/content/IBook;
.end method

.method public abstract getLibraryMode()Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;
.end method

.method public abstract getLibraryTabId()Ljava/lang/String;
.end method

.method public abstract initializeLibrary(Z)V
.end method

.method public abstract launchAppSettings()V
.end method

.method public abstract launchLibrarySettings()V
.end method

.method public abstract launchReadingSettings()V
.end method

.method public abstract newLibraryScreenletIntent(Landroid/os/Bundle;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;
.end method

.method public abstract newLibrarySettingsIntent()Landroid/content/Intent;
.end method

.method public abstract openItemByIntent(Lcom/amazon/kcp/reader/IReaderController;Landroid/app/Activity;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/content/Intent;)V
.end method

.method public abstract openItemByIntent(Lcom/amazon/kcp/reader/IReaderController;Landroid/app/Activity;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/content/Intent;I)V
.end method

.method public abstract revokeOwnership(Ljava/lang/String;Z)V
.end method

.method public abstract setBookKeptStatus(Ljava/lang/String;Z)V
.end method

.method public abstract setCurrentLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V
.end method

.method public abstract showLandingPage()V
.end method

.method public abstract showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V
.end method

.method public abstract showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;)V
.end method

.method public abstract showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;Z)V
.end method

.method public abstract signaledOpenItem(Lcom/amazon/kcp/reader/IReaderController;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/app/Activity;)Landroid/content/Intent;
.end method
