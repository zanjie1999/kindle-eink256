.class public final enum Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;
.super Ljava/lang/Enum;
.source "IHushpuppyMetric.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;",
        ">;",
        "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;

.field public static final enum EBookRelativePosition_InvalidCurrentEBookPosition:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;

.field public static final enum EBookRelativePosition_InvalidCurrentPageStartPosition:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;

.field public static final enum EBookRelativePosition_InvalidEBookPosition:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;

.field public static final enum EBookRelativePosition_InvalidSeekBarEBookPosition:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;

.field public static final enum EBookRelativePosition_NoSyncData:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;

.field public static final enum PlayButtonClicked_InvalidEBookPosition:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 634
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;

    const/4 v1, 0x0

    const-string v2, "EBookRelativePosition_InvalidEBookPosition"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;->EBookRelativePosition_InvalidEBookPosition:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;

    .line 636
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;

    const/4 v2, 0x1

    const-string v3, "EBookRelativePosition_InvalidCurrentPageStartPosition"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;->EBookRelativePosition_InvalidCurrentPageStartPosition:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;

    .line 638
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;

    const/4 v3, 0x2

    const-string v4, "EBookRelativePosition_InvalidCurrentEBookPosition"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;->EBookRelativePosition_InvalidCurrentEBookPosition:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;

    .line 640
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;

    const/4 v4, 0x3

    const-string v5, "EBookRelativePosition_InvalidSeekBarEBookPosition"

    invoke-direct {v0, v5, v4}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;->EBookRelativePosition_InvalidSeekBarEBookPosition:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;

    .line 642
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;

    const/4 v5, 0x4

    const-string v6, "EBookRelativePosition_NoSyncData"

    invoke-direct {v0, v6, v5}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;->EBookRelativePosition_NoSyncData:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;

    .line 644
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;

    const/4 v6, 0x5

    const-string v7, "PlayButtonClicked_InvalidEBookPosition"

    invoke-direct {v0, v7, v6}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;->PlayButtonClicked_InvalidEBookPosition:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;

    .line 632
    sget-object v8, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;->EBookRelativePosition_InvalidEBookPosition:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;

    aput-object v8, v7, v1

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;->EBookRelativePosition_InvalidCurrentPageStartPosition:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;

    aput-object v1, v7, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;->EBookRelativePosition_InvalidCurrentEBookPosition:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;

    aput-object v1, v7, v3

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;->EBookRelativePosition_InvalidSeekBarEBookPosition:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;

    aput-object v1, v7, v4

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;->EBookRelativePosition_NoSyncData:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;->$VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 632
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;
    .locals 1

    .line 632
    const-class v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;
    .locals 1

    .line 632
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;->$VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;

    return-object v0
.end method
