.class public Lcom/audible/hushpuppy/model/write/UpsellModelFactory;
.super Ljava/lang/Object;
.source "UpsellModelFactory.java"

# interfaces
.implements Lcom/audible/mobile/framework/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/mobile/framework/Factory<",
        "Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private audibleDebugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private upsellModel:Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/model/write/UpsellModelFactory;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/model/write/UpsellModelFactory;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;Lde/greenrobot/event/EventBus;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/UpsellModelFactory;->audibleDebugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    .line 45
    iput-object p2, p0, Lcom/audible/hushpuppy/model/write/UpsellModelFactory;->eventBus:Lde/greenrobot/event/EventBus;

    .line 46
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isUpsellCanceledEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 47
    sget-object p1, Lcom/audible/hushpuppy/model/write/UpsellModelFactory;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "UpsellCancelFlow is enabled, return UpsellModelManager"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 48
    new-instance p1, Lcom/audible/hushpuppy/model/write/UpsellModelManager;

    invoke-direct {p1, p2}, Lcom/audible/hushpuppy/model/write/UpsellModelManager;-><init>(Lde/greenrobot/event/EventBus;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/UpsellModelFactory;->upsellModel:Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    goto :goto_0

    .line 50
    :cond_0
    sget-object p1, Lcom/audible/hushpuppy/model/write/UpsellModelFactory;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "UpsellCancelFlow is not enabled, return legacy UpsellModel"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 51
    new-instance p1, Lcom/audible/hushpuppy/model/write/UpsellModel;

    invoke-direct {p1, p2}, Lcom/audible/hushpuppy/model/write/UpsellModel;-><init>(Lde/greenrobot/event/EventBus;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/UpsellModelFactory;->upsellModel:Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    :goto_0
    return-void
.end method


# virtual methods
.method public final get()Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/UpsellModelFactory;->upsellModel:Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/audible/hushpuppy/model/write/UpsellModelFactory;->get()Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    move-result-object v0

    return-object v0
.end method
