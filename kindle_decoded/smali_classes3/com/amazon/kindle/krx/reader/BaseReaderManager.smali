.class public Lcom/amazon/kindle/krx/reader/BaseReaderManager;
.super Ljava/lang/Object;
.source "BaseReaderManager.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IReaderManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindActivityToCurrentBook(Landroid/app/Activity;)V
    .locals 0

    .line 112
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clearActivitiesOverReaderActivity()V
    .locals 1

    .line 237
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public createWordTokenIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccessibilityProviders()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/accessibility/IAccessibilityProvider;",
            ">;"
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAnnotationItemManager()Lcom/amazon/kindle/krx/annotations/items/IAnnotationItemManager;
    .locals 1

    .line 125
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAnnotationManager(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/reader/IAnnotationManager;
    .locals 0

    .line 75
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getAppExpanClient()Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentProperty(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 156
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getContentProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 162
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    .line 38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCurrentBookAnnotationManager()Lcom/amazon/kindle/krx/reader/IAnnotationManager;
    .locals 1

    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCurrentBookBackStack()Lcom/amazon/kindle/krx/reader/IBookBackStack;
    .locals 1

    .line 81
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCurrentBookContent()Lcom/amazon/kindle/krx/content/IBookContent;
    .locals 1

    .line 51
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;
    .locals 1

    .line 45
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCurrentBookPageNumberManager()Lcom/amazon/kindle/krx/reader/IPageNumberManager;
    .locals 1

    .line 63
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCurrentBookSelection()Lcom/amazon/kindle/krx/content/IContentSelection;
    .locals 1

    .line 57
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getReaderSettings()Lcom/amazon/kindle/krx/reader/IReaderSettings;
    .locals 1

    .line 88
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getReadingMode()Lcom/amazon/kindle/krx/reader/ReadingMode;
    .locals 1

    .line 150
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;
    .locals 1

    .line 200
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getStartPageProvider()Lcom/amazon/kindle/krx/reader/IStartPageProvider;
    .locals 1

    .line 225
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getTimeToReadManager()Lcom/amazon/kindle/krx/reader/ttr/ITimeToReadManager;
    .locals 1

    .line 207
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public inDemoMode()Z
    .locals 1

    .line 213
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public openBook(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;)Z
    .locals 0

    .line 131
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public openBook(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;Landroid/os/Bundle;)Z
    .locals 0

    .line 137
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public openBook(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;Landroid/os/Bundle;Landroid/app/Activity;)Z
    .locals 0

    .line 143
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerAccessibilityProvider(Lcom/amazon/kindle/krx/accessibility/IAccessibilityProvider;)V
    .locals 0

    .line 168
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerActivityLifecycleListener(Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;)V
    .locals 0

    .line 100
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerContentPropertyProvider(Lcom/amazon/kindle/krx/reader/IContentPropertyProvider;)V
    .locals 0

    .line 181
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerKeyEventListener(Lcom/amazon/kindle/krx/reader/IKeyEventListener;)V
    .locals 0

    .line 187
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V
    .locals 0

    .line 94
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerStartPageProvider(Lcom/amazon/kindle/krx/reader/IStartPageProvider;)V
    .locals 0

    .line 219
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerTOCLoadedListener(Lcom/amazon/kindle/krx/reader/IReaderTOCLoadedListener;)V
    .locals 0

    .line 106
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public unBindActivityFromCurrentBook(Landroid/app/Activity;)V
    .locals 0

    .line 118
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public unregisterKeyEventListener(Lcom/amazon/kindle/krx/reader/IKeyEventListener;)V
    .locals 0

    .line 193
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
