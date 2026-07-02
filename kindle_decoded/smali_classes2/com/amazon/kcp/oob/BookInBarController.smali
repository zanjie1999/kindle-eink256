.class public Lcom/amazon/kcp/oob/BookInBarController;
.super Ljava/lang/Object;
.source "BookInBarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/oob/BookInBarController$UpdateBibAsyncTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final clientId:Ljava/lang/String; = "bottomBar"


# instance fields
.field private final activity:Lcom/amazon/kcp/redding/ReddingActivity;

.field private final appSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;

.field private final authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

.field private final bibPadding:Landroid/view/View;

.field private final bibView:Landroid/widget/ImageView;

.field private final bookOpenAndCloseAnimationHelper:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

.field private final coverImageService:Lcom/amazon/kindle/cover/ICoverImageService;

.field private lastReadBook:Lcom/amazon/kindle/content/ContentMetadata;

.field private final libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private final readerController:Lcom/amazon/kcp/reader/IReaderController;

.field private final restrictionHandler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

.field private shouldStartBookCloseAnimation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-class v0, Lcom/amazon/kcp/oob/BookInBarController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/oob/BookInBarController;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/amazon/kcp/redding/ReddingActivity;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/ViewGroup;Lcom/amazon/kcp/application/IKindleObjectFactory;)V
    .locals 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/oob/BookInBarController;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/oob/BookInBarController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 103
    iput-object p1, p0, Lcom/amazon/kcp/oob/BookInBarController;->activity:Lcom/amazon/kcp/redding/ReddingActivity;

    .line 104
    iput-object p2, p0, Lcom/amazon/kcp/oob/BookInBarController;->bibView:Landroid/widget/ImageView;

    .line 105
    iput-object p3, p0, Lcom/amazon/kcp/oob/BookInBarController;->bibPadding:Landroid/view/View;

    .line 106
    invoke-interface {p5}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/oob/BookInBarController;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    .line 107
    invoke-interface {p5}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/oob/BookInBarController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 108
    invoke-interface {p5}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationSettings()Lcom/amazon/system/io/IPersistentSettingsHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/oob/BookInBarController;->appSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;

    .line 109
    invoke-interface {p5}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverManager()Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/oob/BookInBarController;->coverImageService:Lcom/amazon/kindle/cover/ICoverImageService;

    .line 110
    invoke-interface {p5}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/oob/BookInBarController;->restrictionHandler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    .line 111
    invoke-interface {p5}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/oob/BookInBarController;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    .line 112
    new-instance p2, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    invoke-direct {p2, p1, p4, p5}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/amazon/kcp/application/IKindleObjectFactory;)V

    iput-object p2, p0, Lcom/amazon/kcp/oob/BookInBarController;->bookOpenAndCloseAnimationHelper:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/oob/BookInBarController;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/amazon/kcp/oob/BookInBarController;->lastReadBook:Lcom/amazon/kindle/content/ContentMetadata;

    return-object p0
.end method

.method static synthetic access$002(Lcom/amazon/kcp/oob/BookInBarController;Lcom/amazon/kindle/content/ContentMetadata;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/amazon/kcp/oob/BookInBarController;->lastReadBook:Lcom/amazon/kindle/content/ContentMetadata;

    return-object p1
.end method

.method static synthetic access$100(Lcom/amazon/kcp/oob/BookInBarController;)Lcom/amazon/kcp/reader/IReaderController;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/amazon/kcp/oob/BookInBarController;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/oob/BookInBarController;)Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/amazon/kcp/oob/BookInBarController;->bookOpenAndCloseAnimationHelper:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/oob/BookInBarController;Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/amazon/kcp/oob/BookInBarController;->reportBookOpenedPerformanceForQA(Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    return-void
.end method

.method private createBibLayoutChangeListener(Landroid/widget/ImageView;)Landroid/view/View$OnLayoutChangeListener;
    .locals 1

    .line 181
    new-instance v0, Lcom/amazon/kcp/oob/BookInBarController$3;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/oob/BookInBarController$3;-><init>(Lcom/amazon/kcp/oob/BookInBarController;Landroid/widget/ImageView;)V

    return-object v0
.end method

.method private createBibOnClickListener(Landroid/widget/ImageView;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 145
    new-instance v0, Lcom/amazon/kcp/oob/BookInBarController$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/oob/BookInBarController$2;-><init>(Lcom/amazon/kcp/oob/BookInBarController;Landroid/widget/ImageView;)V

    return-object v0
.end method

.method private reportBookOpenedPerformanceForQA(Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 2

    .line 201
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object p1

    .line 202
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-static {v0}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->createStartEvent(Lcom/amazon/kindle/performance/KindlePerformanceConstants;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    move-result-object v0

    const-string v1, "asin"

    .line 203
    invoke-virtual {v0, v1, p1}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    const/4 p1, 0x1

    .line 204
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "isOpenedFromBiBB"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    .line 205
    invoke-virtual {v0}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->buildAndSend()V

    return-void
.end method


# virtual methods
.method destroy()V
    .locals 1

    .line 373
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p2, 0x3039

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 256
    iput-boolean p1, p0, Lcom/amazon/kcp/oob/BookInBarController;->shouldStartBookCloseAnimation:Z

    :cond_0
    return-void
.end method

.method public onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 231
    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 235
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/oob/BookInBarController;->bibView:Landroid/widget/ImageView;

    new-instance v0, Lcom/amazon/kcp/oob/BookInBarController$5;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/oob/BookInBarController$5;-><init>(Lcom/amazon/kcp/oob/BookInBarController;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onConfigurationChanged()V
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/amazon/kcp/oob/BookInBarController;->bibPadding:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 138
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 139
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ge v2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    .line 140
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 120
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 121
    invoke-virtual {p0}, Lcom/amazon/kcp/oob/BookInBarController;->updateBibView()V

    .line 122
    iget-object v0, p0, Lcom/amazon/kcp/oob/BookInBarController;->bibView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/oob/BookInBarController;->createBibLayoutChangeListener(Landroid/widget/ImageView;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 123
    iget-object v0, p0, Lcom/amazon/kcp/oob/BookInBarController;->bibView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/oob/BookInBarController;->createBibOnClickListener(Landroid/widget/ImageView;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/oob/BookInBarController$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/oob/BookInBarController$1;-><init>(Lcom/amazon/kcp/oob/BookInBarController;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->execute(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public onLastReadBookEvent(Lcom/amazon/kcp/reader/LastReadBookEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/amazon/kcp/oob/BookInBarController;->bibView:Landroid/widget/ImageView;

    new-instance v1, Lcom/amazon/kcp/oob/BookInBarController$4;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/oob/BookInBarController$4;-><init>(Lcom/amazon/kcp/oob/BookInBarController;Lcom/amazon/kcp/reader/LastReadBookEvent;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method onResume()V
    .locals 3

    .line 355
    iget-object v0, p0, Lcom/amazon/kcp/oob/BookInBarController;->lastReadBook:Lcom/amazon/kindle/content/ContentMetadata;

    if-nez v0, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/amazon/kcp/oob/BookInBarController;->updateBibView()V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/oob/BookInBarController;->bookOpenAndCloseAnimationHelper:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->cancelAnimationIfAny()V

    .line 359
    iget-boolean v0, p0, Lcom/amazon/kcp/oob/BookInBarController;->shouldStartBookCloseAnimation:Z

    if-eqz v0, :cond_2

    .line 360
    iget-object v0, p0, Lcom/amazon/kcp/oob/BookInBarController;->bibView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 362
    iget-object v1, p0, Lcom/amazon/kcp/oob/BookInBarController;->bookOpenAndCloseAnimationHelper:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    iget-object v2, p0, Lcom/amazon/kcp/oob/BookInBarController;->bibView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->startBookCloseAnimation(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 363
    iget-object v0, p0, Lcom/amazon/kcp/oob/BookInBarController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kindle/event/BiBBVisibleEvent;

    invoke-direct {v1}, Lcom/amazon/kindle/event/BiBBVisibleEvent;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_1
    const/4 v0, 0x0

    .line 365
    iput-boolean v0, p0, Lcom/amazon/kcp/oob/BookInBarController;->shouldStartBookCloseAnimation:Z

    :cond_2
    return-void
.end method

.method protected updateBibView()V
    .locals 9

    .line 246
    iget-object v0, p0, Lcom/amazon/kcp/oob/BookInBarController;->bibView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/amazon/kcp/oob/BookInBarController;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/amazon/kcp/oob/BookInBarController;->bibView:Landroid/widget/ImageView;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 249
    new-instance v0, Lcom/amazon/kcp/oob/BookInBarController$UpdateBibAsyncTask;

    iget-object v2, p0, Lcom/amazon/kcp/oob/BookInBarController;->activity:Lcom/amazon/kcp/redding/ReddingActivity;

    iget-object v4, p0, Lcom/amazon/kcp/oob/BookInBarController;->coverImageService:Lcom/amazon/kindle/cover/ICoverImageService;

    iget-object v5, p0, Lcom/amazon/kcp/oob/BookInBarController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    iget-object v6, p0, Lcom/amazon/kcp/oob/BookInBarController;->appSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;

    iget-object v7, p0, Lcom/amazon/kcp/oob/BookInBarController;->bookOpenAndCloseAnimationHelper:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    iget-object v8, p0, Lcom/amazon/kcp/oob/BookInBarController;->restrictionHandler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/amazon/kcp/oob/BookInBarController$UpdateBibAsyncTask;-><init>(Lcom/amazon/kcp/redding/ReddingActivity;Ljava/lang/ref/WeakReference;Lcom/amazon/kindle/cover/ICoverImageService;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/system/io/IPersistentSettingsHelper;Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/amazon/kindle/content/ContentMetadata;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amazon/kcp/oob/BookInBarController;->lastReadBook:Lcom/amazon/kindle/content/ContentMetadata;

    aput-object v3, v1, v2

    .line 250
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
