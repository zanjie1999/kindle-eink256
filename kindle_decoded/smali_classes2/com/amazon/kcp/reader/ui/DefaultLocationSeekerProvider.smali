.class public Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerProvider;
.super Ljava/lang/Object;
.source "DefaultLocationSeekerProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/ISortableProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
        "Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

.field private kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private locationSeekerDecoration:Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;

.field private seekerBarMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerProvider;->seekerBarMap:Ljava/util/Map;

    .line 43
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerProvider;->context:Landroid/content/Context;

    .line 44
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerProvider;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    .line 45
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz p1, :cond_0

    .line 48
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createLocationSeekerDecoration(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;
    .locals 3

    .line 106
    invoke-static {p1}, Lcom/amazon/android/util/BookTypeUtil;->isLavaMagazine(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 107
    new-instance p1, Lcom/amazon/kcp/reader/ui/LavaMagazineLocationSeekerDecoration;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerProvider;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerProvider;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {p1, v0, v1, v2}, Lcom/amazon/kcp/reader/ui/LavaMagazineLocationSeekerDecoration;-><init>(Landroid/content/Context;Lcom/amazon/kcp/application/IKindleObjectFactory;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-object p1

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerProvider;->supportsNln()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerProvider;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerProvider;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {p1, v0, v1, v2}, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;-><init>(Landroid/content/Context;Lcom/amazon/kcp/application/IKindleObjectFactory;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerProvider;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerProvider;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {p1, v0, v1, v2}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;-><init>(Landroid/content/Context;Lcom/amazon/kcp/application/IKindleObjectFactory;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    :goto_0
    return-object p1
.end method

.method public get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;
    .locals 2

    .line 95
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerProvider;->seekerBarMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerProvider;->locationSeekerDecoration:Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;

    if-nez v1, :cond_0

    .line 98
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerProvider;->createLocationSeekerDecoration(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerProvider;->locationSeekerDecoration:Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;

    .line 99
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerProvider;->seekerBarMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerProvider;->locationSeekerDecoration:Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerProvider;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IBook;)I
    .locals 0

    const/16 p1, -0x63

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 35
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerProvider;->getPriority(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result p1

    return p1
.end method

.method public onReaderControllerEvent(Lcom/amazon/kcp/reader/ReaderControllerEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 54
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderControllerEvent;->getType()Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;->BOOK_LIFECYCLE_CLOSED:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    if-ne v0, v1, :cond_1

    .line 55
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderControllerEvent;->getBook()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerProvider;->seekerBarMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public onReaderLayoutEvent(Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 65
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent;->getEventType()Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;->CHROME_UPDATED:Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    if-ne p1, v0, :cond_1

    .line 66
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerProvider;->seekerBarMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public onReaderModeChangeEvent(Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 76
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;->getReaderMode()Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->AUDIBLE_PLAYER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-eq v0, v1, :cond_0

    .line 77
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;->getReaderMode()Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-ne p1, v0, :cond_2

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerProvider;->supportsNln()Z

    move-result p1

    if-nez p1, :cond_2

    .line 84
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerProvider;->seekerBarMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method protected supportsNln()Z
    .locals 1

    .line 126
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    .line 127
    invoke-static {v0}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    return v0
.end method
