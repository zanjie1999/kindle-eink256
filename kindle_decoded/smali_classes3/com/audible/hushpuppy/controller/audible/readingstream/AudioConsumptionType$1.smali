.class final Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$1;
.super Ljava/util/HashMap;
.source "AudioConsumptionType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Class;",
        "Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 32
    const-class v0, Lcom/audible/hushpuppy/model/write/readerstate/FullPlayerState;

    sget-object v1, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;->LISTENING:Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-class v0, Lcom/audible/hushpuppy/model/write/readerstate/OutsideBookState;

    sget-object v1, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;->LISTENING:Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-class v0, Lcom/audible/hushpuppy/model/write/readerstate/OutsideApplicationState;

    sget-object v1, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;->LISTENING:Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-class v0, Lcom/audible/hushpuppy/model/write/readerstate/LockScreenState;

    sget-object v1, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;->LISTENING:Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-class v0, Lcom/audible/hushpuppy/model/write/readerstate/InsideBookState;

    sget-object v1, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;->IMMERSION_READING:Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
