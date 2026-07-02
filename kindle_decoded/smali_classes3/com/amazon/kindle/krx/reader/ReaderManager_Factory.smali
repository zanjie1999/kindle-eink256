.class public final Lcom/amazon/kindle/krx/reader/ReaderManager_Factory;
.super Ljava/lang/Object;
.source "ReaderManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/krx/reader/ReaderManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final annotationItemManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/annotations/items/NotesMarksManager;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final keyEventControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/KeyEventController;",
            ">;"
        }
    .end annotation
.end field

.field private final libraryServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/content/ILibraryService;",
            ">;"
        }
    .end annotation
.end field

.field private final positionChangedEventHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/PositionChangedEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final readerActivityLifecycleEventHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final readerControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/IReaderController;",
            ">;"
        }
    .end annotation
.end field

.field private final readerSettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/ReaderSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final restrictionHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final timeToReadManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/ttr/TimeToReadManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/IReaderController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/content/ILibraryService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/KeyEventController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/PositionChangedEventHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/ReaderSettings;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/annotations/items/NotesMarksManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/ttr/TimeToReadManager;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/ReaderManager_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p2, p0, Lcom/amazon/kindle/krx/reader/ReaderManager_Factory;->readerControllerProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p3, p0, Lcom/amazon/kindle/krx/reader/ReaderManager_Factory;->libraryServiceProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p4, p0, Lcom/amazon/kindle/krx/reader/ReaderManager_Factory;->keyEventControllerProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p5, p0, Lcom/amazon/kindle/krx/reader/ReaderManager_Factory;->readerActivityLifecycleEventHandlerProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p6, p0, Lcom/amazon/kindle/krx/reader/ReaderManager_Factory;->positionChangedEventHandlerProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p7, p0, Lcom/amazon/kindle/krx/reader/ReaderManager_Factory;->readerSettingsProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p8, p0, Lcom/amazon/kindle/krx/reader/ReaderManager_Factory;->restrictionHandlerProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p9, p0, Lcom/amazon/kindle/krx/reader/ReaderManager_Factory;->annotationItemManagerProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p10, p0, Lcom/amazon/kindle/krx/reader/ReaderManager_Factory;->timeToReadManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/reader/ReaderManager_Factory;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/IReaderController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/content/ILibraryService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/KeyEventController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/PositionChangedEventHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/ReaderSettings;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/annotations/items/NotesMarksManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/ttr/TimeToReadManager;",
            ">;)",
            "Lcom/amazon/kindle/krx/reader/ReaderManager_Factory;"
        }
    .end annotation

    .line 111
    new-instance v11, Lcom/amazon/kindle/krx/reader/ReaderManager_Factory;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/amazon/kindle/krx/reader/ReaderManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v11
.end method

.method public static newReaderManager(Landroid/content/Context;Lcom/amazon/kcp/reader/IReaderController;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/reader/KeyEventController;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)Lcom/amazon/kindle/krx/reader/ReaderManager;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/kcp/reader/IReaderController;",
            "Lcom/amazon/kindle/content/ILibraryService;",
            "Lcom/amazon/kcp/reader/KeyEventController;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/reader/PositionChangedEventHandler;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/reader/ReaderSettings;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/annotations/items/NotesMarksManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/reader/ttr/TimeToReadManager;",
            ">;)",
            "Lcom/amazon/kindle/krx/reader/ReaderManager;"
        }
    .end annotation

    .line 135
    new-instance v11, Lcom/amazon/kindle/krx/reader/ReaderManager;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/amazon/kindle/krx/reader/ReaderManager;-><init>(Landroid/content/Context;Lcom/amazon/kcp/reader/IReaderController;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/reader/KeyEventController;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V

    return-object v11
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/reader/ReaderManager;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/IReaderController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/content/ILibraryService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/KeyEventController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/PositionChangedEventHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/ReaderSettings;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/annotations/items/NotesMarksManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/ttr/TimeToReadManager;",
            ">;)",
            "Lcom/amazon/kindle/krx/reader/ReaderManager;"
        }
    .end annotation

    .line 87
    new-instance v11, Lcom/amazon/kindle/krx/reader/ReaderManager;

    .line 88
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    .line 89
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/amazon/kcp/reader/IReaderController;

    .line 90
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/amazon/kindle/content/ILibraryService;

    .line 91
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/amazon/kcp/reader/KeyEventController;

    .line 92
    invoke-static/range {p4 .. p4}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v5

    .line 93
    invoke-static/range {p5 .. p5}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v6

    .line 94
    invoke-static/range {p6 .. p6}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v7

    .line 95
    invoke-static/range {p7 .. p7}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v8

    .line 96
    invoke-static/range {p8 .. p8}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v9

    .line 97
    invoke-static/range {p9 .. p9}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v10

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/amazon/kindle/krx/reader/ReaderManager;-><init>(Landroid/content/Context;Lcom/amazon/kcp/reader/IReaderController;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/reader/KeyEventController;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V

    return-object v11
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/krx/reader/ReaderManager;
    .locals 10

    .line 63
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/amazon/kindle/krx/reader/ReaderManager_Factory;->readerControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/amazon/kindle/krx/reader/ReaderManager_Factory;->libraryServiceProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/amazon/kindle/krx/reader/ReaderManager_Factory;->keyEventControllerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/amazon/kindle/krx/reader/ReaderManager_Factory;->readerActivityLifecycleEventHandlerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/amazon/kindle/krx/reader/ReaderManager_Factory;->positionChangedEventHandlerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/amazon/kindle/krx/reader/ReaderManager_Factory;->readerSettingsProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/amazon/kindle/krx/reader/ReaderManager_Factory;->restrictionHandlerProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/amazon/kindle/krx/reader/ReaderManager_Factory;->annotationItemManagerProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/amazon/kindle/krx/reader/ReaderManager_Factory;->timeToReadManagerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v9}, Lcom/amazon/kindle/krx/reader/ReaderManager_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/reader/ReaderManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/reader/ReaderManager_Factory;->get()Lcom/amazon/kindle/krx/reader/ReaderManager;

    move-result-object v0

    return-object v0
.end method
