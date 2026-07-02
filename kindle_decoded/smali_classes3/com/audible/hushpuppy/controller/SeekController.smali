.class public final Lcom/audible/hushpuppy/controller/SeekController;
.super Ljava/lang/Object;
.source "SeekController.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

.field private final model:Lcom/audible/hushpuppy/model/write/HushpuppyModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/SeekController;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/SeekController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    check-cast p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/SeekController;->model:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    .line 44
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/SeekController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    return-void
.end method


# virtual methods
.method public seekTo(I)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, p1, v0}, Lcom/audible/hushpuppy/controller/SeekController;->seekTo(IZ)V

    return-void
.end method

.method public seekTo(IZ)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/SeekController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0, p1, p2}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->seekTo(IZ)V

    return-void
.end method
