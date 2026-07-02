.class public final Lcom/amazon/kindle/krx/KindleReaderSDK_Factory;
.super Ljava/lang/Object;
.source "KindleReaderSDK_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/krx/KindleReaderSDK;",
        ">;"
    }
.end annotation


# instance fields
.field private final bubbleManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/IBubbleManager;",
            ">;"
        }
    .end annotation
.end field

.field private final contentUpdateManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/update/IContentUpdateManager;",
            ">;"
        }
    .end annotation
.end field

.field private final extensionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;",
            ">;"
        }
    .end annotation
.end field

.field private final fProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IKindleObjectFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final libraryUIManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/ui/ILibraryUIManager;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/logging/ILogger;",
            ">;"
        }
    .end annotation
.end field

.field private final pubSubMessageServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/events/IPubSubEventsManager;",
            ">;"
        }
    .end annotation
.end field

.field private final readerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/ReaderManager;",
            ">;"
        }
    .end annotation
.end field

.field private final readerModeHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/IReaderModeHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final readerSearchManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/search/IReaderSearchManager;",
            ">;"
        }
    .end annotation
.end field

.field private final readerUIManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/ui/ReaderUIManager;",
            ">;"
        }
    .end annotation
.end field

.field private final syncManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/sync/ISyncManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IKindleObjectFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/ReaderManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/ui/ReaderUIManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/events/IPubSubEventsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/search/IReaderSearchManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/IReaderModeHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/ui/ILibraryUIManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/logging/ILogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/sync/ISyncManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/IBubbleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/update/IContentUpdateManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/amazon/kindle/krx/KindleReaderSDK_Factory;->fProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p2, p0, Lcom/amazon/kindle/krx/KindleReaderSDK_Factory;->readerManagerProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p3, p0, Lcom/amazon/kindle/krx/KindleReaderSDK_Factory;->readerUIManagerProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p4, p0, Lcom/amazon/kindle/krx/KindleReaderSDK_Factory;->pubSubMessageServiceProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p5, p0, Lcom/amazon/kindle/krx/KindleReaderSDK_Factory;->readerSearchManagerProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p6, p0, Lcom/amazon/kindle/krx/KindleReaderSDK_Factory;->readerModeHandlerProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p7, p0, Lcom/amazon/kindle/krx/KindleReaderSDK_Factory;->libraryUIManagerProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p8, p0, Lcom/amazon/kindle/krx/KindleReaderSDK_Factory;->loggerProvider:Ljavax/inject/Provider;

    .line 67
    iput-object p9, p0, Lcom/amazon/kindle/krx/KindleReaderSDK_Factory;->syncManagerProvider:Ljavax/inject/Provider;

    .line 68
    iput-object p10, p0, Lcom/amazon/kindle/krx/KindleReaderSDK_Factory;->bubbleManagerProvider:Ljavax/inject/Provider;

    .line 69
    iput-object p11, p0, Lcom/amazon/kindle/krx/KindleReaderSDK_Factory;->contentUpdateManagerProvider:Ljavax/inject/Provider;

    .line 70
    iput-object p12, p0, Lcom/amazon/kindle/krx/KindleReaderSDK_Factory;->extensionManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/KindleReaderSDK_Factory;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IKindleObjectFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/ReaderManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/ui/ReaderUIManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/events/IPubSubEventsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/search/IReaderSearchManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/IReaderModeHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/ui/ILibraryUIManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/logging/ILogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/sync/ISyncManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/IBubbleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/update/IContentUpdateManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;",
            ">;)",
            "Lcom/amazon/kindle/krx/KindleReaderSDK_Factory;"
        }
    .end annotation

    .line 131
    new-instance v13, Lcom/amazon/kindle/krx/KindleReaderSDK_Factory;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/amazon/kindle/krx/KindleReaderSDK_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v13
.end method

.method public static newKindleReaderSDK(Lcom/amazon/kcp/application/IKindleObjectFactory;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)Lcom/amazon/kindle/krx/KindleReaderSDK;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/application/IKindleObjectFactory;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/reader/ReaderManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/ui/ReaderUIManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/events/IPubSubEventsManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/search/IReaderSearchManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/reader/IReaderModeHandler;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/ui/ILibraryUIManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/logging/ILogger;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/sync/ISyncManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/reader/IBubbleManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/update/IContentUpdateManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;",
            ">;)",
            "Lcom/amazon/kindle/krx/KindleReaderSDK;"
        }
    .end annotation

    .line 159
    new-instance v13, Lcom/amazon/kindle/krx/KindleReaderSDK;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/amazon/kindle/krx/KindleReaderSDK;-><init>(Lcom/amazon/kcp/application/IKindleObjectFactory;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V

    return-object v13
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/KindleReaderSDK;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IKindleObjectFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/ReaderManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/ui/ReaderUIManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/events/IPubSubEventsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/search/IReaderSearchManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/IReaderModeHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/ui/ILibraryUIManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/logging/ILogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/sync/ISyncManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/IBubbleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/update/IContentUpdateManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;",
            ">;)",
            "Lcom/amazon/kindle/krx/KindleReaderSDK;"
        }
    .end annotation

    .line 103
    new-instance v13, Lcom/amazon/kindle/krx/KindleReaderSDK;

    .line 104
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/amazon/kcp/application/IKindleObjectFactory;

    .line 105
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v2

    .line 106
    invoke-static/range {p2 .. p2}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v3

    .line 107
    invoke-static/range {p3 .. p3}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v4

    .line 108
    invoke-static/range {p4 .. p4}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v5

    .line 109
    invoke-static/range {p5 .. p5}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v6

    .line 110
    invoke-static/range {p6 .. p6}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v7

    .line 111
    invoke-static/range {p7 .. p7}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v8

    .line 112
    invoke-static/range {p8 .. p8}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v9

    .line 113
    invoke-static/range {p9 .. p9}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v10

    .line 114
    invoke-static/range {p10 .. p10}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v11

    .line 115
    invoke-static/range {p11 .. p11}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v12

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/amazon/kindle/krx/KindleReaderSDK;-><init>(Lcom/amazon/kcp/application/IKindleObjectFactory;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V

    return-object v13
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/krx/KindleReaderSDK;
    .locals 12

    .line 75
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK_Factory;->fProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/amazon/kindle/krx/KindleReaderSDK_Factory;->readerManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/amazon/kindle/krx/KindleReaderSDK_Factory;->readerUIManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/amazon/kindle/krx/KindleReaderSDK_Factory;->pubSubMessageServiceProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/amazon/kindle/krx/KindleReaderSDK_Factory;->readerSearchManagerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/amazon/kindle/krx/KindleReaderSDK_Factory;->readerModeHandlerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/amazon/kindle/krx/KindleReaderSDK_Factory;->libraryUIManagerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/amazon/kindle/krx/KindleReaderSDK_Factory;->loggerProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/amazon/kindle/krx/KindleReaderSDK_Factory;->syncManagerProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/amazon/kindle/krx/KindleReaderSDK_Factory;->bubbleManagerProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/amazon/kindle/krx/KindleReaderSDK_Factory;->contentUpdateManagerProvider:Ljavax/inject/Provider;

    iget-object v11, p0, Lcom/amazon/kindle/krx/KindleReaderSDK_Factory;->extensionManagerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v11}, Lcom/amazon/kindle/krx/KindleReaderSDK_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/KindleReaderSDK;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/KindleReaderSDK_Factory;->get()Lcom/amazon/kindle/krx/KindleReaderSDK;

    move-result-object v0

    return-object v0
.end method
