.class public final Lcom/audible/hushpuppy/controller/ContentUpdateHandler_Factory;
.super Ljava/lang/Object;
.source "ContentUpdateHandler_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/controller/ContentUpdateHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final audibleServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;"
        }
    .end annotation
.end field

.field private final audioDownloadedFileManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;",
            ">;"
        }
    .end annotation
.end field

.field private final debugHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final eventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private final hushpuppyModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;"
        }
    .end annotation
.end field

.field private final kindleReaderSDKProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;"
        }
    .end annotation
.end field

.field private final legacyContentUpdateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ILegacyContentUpdateHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final libraryControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ILibraryController;",
            ">;"
        }
    .end annotation
.end field

.field private final mobileWeblabHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final relationshipManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IDBScalingRelationshipManager;",
            ">;"
        }
    .end annotation
.end field

.field private final syncFileManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/ISyncFileManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ILibraryController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IDBScalingRelationshipManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/ISyncFileManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ILegacyContentUpdateHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler_Factory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler_Factory;->libraryControllerProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler_Factory;->relationshipManagerProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler_Factory;->hushpuppyModelProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p5, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler_Factory;->audibleServiceProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p6, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler_Factory;->eventBusProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p7, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler_Factory;->syncFileManagerProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p8, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler_Factory;->audioDownloadedFileManagerProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p9, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler_Factory;->legacyContentUpdateControllerProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p10, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler_Factory;->mobileWeblabHandlerProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p11, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler_Factory;->debugHelperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/ContentUpdateHandler_Factory;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ILibraryController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IDBScalingRelationshipManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/ISyncFileManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ILegacyContentUpdateHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ">;)",
            "Lcom/audible/hushpuppy/controller/ContentUpdateHandler_Factory;"
        }
    .end annotation

    .line 117
    new-instance v12, Lcom/audible/hushpuppy/controller/ContentUpdateHandler_Factory;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/audible/hushpuppy/controller/ContentUpdateHandler_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v12
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/ContentUpdateHandler;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ILibraryController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IDBScalingRelationshipManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/ISyncFileManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ILegacyContentUpdateHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ">;)",
            "Lcom/audible/hushpuppy/controller/ContentUpdateHandler;"
        }
    .end annotation

    .line 91
    new-instance v12, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;

    .line 92
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 93
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/audible/hushpuppy/controller/ILibraryController;

    .line 94
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/audible/relationship/controller/IDBScalingRelationshipManager;

    .line 95
    invoke-interface/range {p3 .. p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 96
    invoke-interface/range {p4 .. p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 97
    invoke-interface/range {p5 .. p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lde/greenrobot/event/EventBus;

    .line 98
    invoke-interface/range {p6 .. p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/audible/relationship/controller/ISyncFileManager;

    .line 99
    invoke-interface/range {p7 .. p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;

    .line 100
    invoke-interface/range {p8 .. p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/audible/hushpuppy/controller/ILegacyContentUpdateHelper;

    .line 101
    invoke-interface/range {p9 .. p9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

    .line 102
    invoke-interface/range {p10 .. p10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/controller/ILibraryController;Lcom/audible/relationship/controller/IDBScalingRelationshipManager;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lde/greenrobot/event/EventBus;Lcom/audible/relationship/controller/ISyncFileManager;Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;Lcom/audible/hushpuppy/controller/ILegacyContentUpdateHelper;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V

    return-object v12
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/controller/ContentUpdateHandler;
    .locals 11

    .line 65
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler_Factory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler_Factory;->libraryControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler_Factory;->relationshipManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler_Factory;->hushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler_Factory;->audibleServiceProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler_Factory;->eventBusProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler_Factory;->syncFileManagerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler_Factory;->audioDownloadedFileManagerProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler_Factory;->legacyContentUpdateControllerProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler_Factory;->mobileWeblabHandlerProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler_Factory;->debugHelperProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v10}, Lcom/audible/hushpuppy/controller/ContentUpdateHandler_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/ContentUpdateHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/ContentUpdateHandler_Factory;->get()Lcom/audible/hushpuppy/controller/ContentUpdateHandler;

    move-result-object v0

    return-object v0
.end method
