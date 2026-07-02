.class public final Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType;
.super Ljava/lang/Object;
.source "AudioConsumptionType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final READER_STATE_TO_CONSUMPTION_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 30
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$1;

    invoke-direct {v0}, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$1;-><init>()V

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType;->READER_STATE_TO_CONSUMPTION_TYPE_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioConsumptionType(Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;)Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;
    .locals 4

    const-string v0, "reader state can\'t be null."

    .line 90
    invoke-static {p0, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 94
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType;->READER_STATE_TO_CONSUMPTION_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType;->READER_STATE_TO_CONSUMPTION_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;

    .line 96
    sget-object v1, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;->getConsumptionTypeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Consumption type for %s is %s"

    invoke-interface {v1, v3, p0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 99
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Reader state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", so returning consumption type as "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;->UNKNOWN:Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;

    .line 100
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;->getConsumptionTypeName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 99
    invoke-interface {v0, p0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 101
    sget-object p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;->UNKNOWN:Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;

    return-object p0
.end method
