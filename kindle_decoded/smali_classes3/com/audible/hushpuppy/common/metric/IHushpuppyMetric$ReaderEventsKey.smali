.class public final enum Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;
.super Ljava/lang/Enum;
.source "IHushpuppyMetric.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;",
        ">;",
        "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;

.field public static final enum FosDeviceManualSync:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;

.field public static final enum LibraryManualSync:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;

.field public static final enum NewBookContentAdded:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;

.field public static final enum PartialCompanionMappingAferToDo:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;

.field public static final enum UserDeregistration:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;

.field public static final enum UserRegistration:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 246
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;

    const/4 v1, 0x0

    const-string v2, "UserRegistration"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;->UserRegistration:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;

    .line 248
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;

    const/4 v2, 0x1

    const-string v3, "UserDeregistration"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;->UserDeregistration:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;

    .line 250
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;

    const/4 v3, 0x2

    const-string v4, "LibraryManualSync"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;->LibraryManualSync:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;

    .line 252
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;

    const/4 v4, 0x3

    const-string v5, "FosDeviceManualSync"

    invoke-direct {v0, v5, v4}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;->FosDeviceManualSync:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;

    .line 254
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;

    const/4 v5, 0x4

    const-string v6, "NewBookContentAdded"

    invoke-direct {v0, v6, v5}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;->NewBookContentAdded:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;

    .line 256
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;

    const/4 v6, 0x5

    const-string v7, "PartialCompanionMappingAferToDo"

    invoke-direct {v0, v7, v6}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;->PartialCompanionMappingAferToDo:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;

    .line 244
    sget-object v8, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;->UserRegistration:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;

    aput-object v8, v7, v1

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;->UserDeregistration:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;

    aput-object v1, v7, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;->LibraryManualSync:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;

    aput-object v1, v7, v3

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;->FosDeviceManualSync:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;

    aput-object v1, v7, v4

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;->NewBookContentAdded:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;->$VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 244
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;
    .locals 1

    .line 244
    const-class v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;
    .locals 1

    .line 244
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;->$VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;

    return-object v0
.end method
