.class public final Lcom/audible/hushpuppy/model/write/UserModel;
.super Lcom/audible/hushpuppy/model/write/AbstractModel;
.source "UserModel.java"

# interfaces
.implements Lcom/audible/hushpuppy/model/read/IUserModel;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private toaOfferStatus:Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/model/write/UserModel;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/model/write/UserModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lde/greenrobot/event/EventBus;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/model/write/AbstractModel;-><init>(Lde/greenrobot/event/EventBus;)V

    .line 25
    sget-object p1, Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;->UNKNOWN:Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/UserModel;->toaOfferStatus:Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

    return-void
.end method


# virtual methods
.method public getToaOfferStatus()Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/UserModel;->toaOfferStatus:Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

    return-object v0
.end method

.method public isToaOfferEligible()Z
    .locals 2

    .line 62
    sget-object v0, Lcom/audible/hushpuppy/model/write/UserModel$1;->$SwitchMap$com$audible$hushpuppy$model$read$IUserModel$ToaStatus:[I

    iget-object v1, p0, Lcom/audible/hushpuppy/model/write/UserModel;->toaOfferStatus:Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public reset()V
    .locals 2

    .line 43
    sget-object v0, Lcom/audible/hushpuppy/model/write/UserModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "UserModel reset"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;->UNKNOWN:Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

    iput-object v0, p0, Lcom/audible/hushpuppy/model/write/UserModel;->toaOfferStatus:Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

    return-void
.end method

.method public setToaOfferStatus(Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;)V
    .locals 1

    const-string v0, "TOA status cannot be null!"

    .line 82
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/UserModel;->toaOfferStatus:Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

    return-void
.end method
