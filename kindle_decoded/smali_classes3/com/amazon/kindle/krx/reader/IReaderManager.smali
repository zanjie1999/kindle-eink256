.class public interface abstract Lcom/amazon/kindle/krx/reader/IReaderManager;
.super Ljava/lang/Object;
.source "IReaderManager.java"


# virtual methods
.method public abstract bindActivityToCurrentBook(Landroid/app/Activity;)V
.end method

.method public abstract clearActivitiesOverReaderActivity()V
.end method

.method public abstract createWordTokenIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;
.end method

.method public abstract getAccessibilityProviders()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/accessibility/IAccessibilityProvider;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAnnotationItemManager()Lcom/amazon/kindle/krx/annotations/items/IAnnotationItemManager;
.end method

.method public abstract getAnnotationManager(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/reader/IAnnotationManager;
.end method

.method public abstract getAppExpanClient()Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;
.end method

.method public abstract getContentProperty(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getContentProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;
.end method

.method public abstract getCurrentBookAnnotationManager()Lcom/amazon/kindle/krx/reader/IAnnotationManager;
.end method

.method public abstract getCurrentBookBackStack()Lcom/amazon/kindle/krx/reader/IBookBackStack;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCurrentBookContent()Lcom/amazon/kindle/krx/content/IBookContent;
.end method

.method public abstract getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;
.end method

.method public abstract getCurrentBookPageNumberManager()Lcom/amazon/kindle/krx/reader/IPageNumberManager;
.end method

.method public abstract getCurrentBookSelection()Lcom/amazon/kindle/krx/content/IContentSelection;
.end method

.method public abstract getReaderSettings()Lcom/amazon/kindle/krx/reader/IReaderSettings;
.end method

.method public abstract getReadingMode()Lcom/amazon/kindle/krx/reader/ReadingMode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;
.end method

.method public abstract getStartPageProvider()Lcom/amazon/kindle/krx/reader/IStartPageProvider;
.end method

.method public abstract getTimeToReadManager()Lcom/amazon/kindle/krx/reader/ttr/ITimeToReadManager;
.end method

.method public abstract inDemoMode()Z
.end method

.method public abstract openBook(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;)Z
.end method

.method public abstract openBook(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;Landroid/os/Bundle;)Z
.end method

.method public abstract openBook(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;Landroid/os/Bundle;Landroid/app/Activity;)Z
.end method

.method public abstract registerAccessibilityProvider(Lcom/amazon/kindle/krx/accessibility/IAccessibilityProvider;)V
.end method

.method public abstract registerActivityLifecycleListener(Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;)V
.end method

.method public abstract registerContentPropertyProvider(Lcom/amazon/kindle/krx/reader/IContentPropertyProvider;)V
.end method

.method public abstract registerKeyEventListener(Lcom/amazon/kindle/krx/reader/IKeyEventListener;)V
.end method

.method public abstract registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V
.end method

.method public abstract registerStartPageProvider(Lcom/amazon/kindle/krx/reader/IStartPageProvider;)V
.end method

.method public abstract registerTOCLoadedListener(Lcom/amazon/kindle/krx/reader/IReaderTOCLoadedListener;)V
.end method

.method public abstract unBindActivityFromCurrentBook(Landroid/app/Activity;)V
.end method

.method public abstract unregisterKeyEventListener(Lcom/amazon/kindle/krx/reader/IKeyEventListener;)V
.end method
