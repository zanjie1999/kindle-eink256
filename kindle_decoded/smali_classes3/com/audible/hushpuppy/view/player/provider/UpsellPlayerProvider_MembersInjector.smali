.class public final Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider_MembersInjector;
.super Ljava/lang/Object;
.source "UpsellPlayerProvider_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;",
        ">;"
    }
.end annotation


# instance fields
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

.field private final kindleReaderSdkProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;"
        }
    .end annotation
.end field

.field private final playerViewManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;",
            ">;"
        }
    .end annotation
.end field

.field private final restrictionHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final upsellControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ActionBarUpsellController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static injectEventBus(Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;Lde/greenrobot/event/EventBus;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method

.method public static injectHushpuppyModel(Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    return-void
.end method

.method public static injectKindleReaderSdk(Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method public static injectPlayerViewManager(Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->playerViewManager:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;

    return-void
.end method

.method public static injectRestrictionHandler(Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->restrictionHandler:Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    return-void
.end method

.method public static injectUpsellController(Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;Lcom/audible/hushpuppy/controller/ActionBarUpsellController;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->upsellController:Lcom/audible/hushpuppy/controller/ActionBarUpsellController;

    return-void
.end method
