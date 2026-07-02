.class public final enum Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;
.super Ljava/lang/Enum;
.source "IMetricsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/metrics/IMetricsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMetricsStopZoomSessionOrigin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;

.field public static final enum MOVE_TO_OTHER_ARTICLE:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;

.field public static final enum PINCH_OUT:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;

.field public static final enum RESET_BUTTON:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 72
    new-instance v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;

    const/4 v1, 0x0

    const-string v2, "PINCH_OUT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;->PINCH_OUT:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;

    .line 76
    new-instance v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;

    const/4 v2, 0x1

    const-string v3, "MOVE_TO_OTHER_ARTICLE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;->MOVE_TO_OTHER_ARTICLE:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;

    .line 80
    new-instance v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;

    const/4 v3, 0x2

    const-string v4, "RESET_BUTTON"

    invoke-direct {v0, v4, v3}, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;->RESET_BUTTON:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;

    .line 68
    sget-object v5, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;->PINCH_OUT:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;->MOVE_TO_OTHER_ARTICLE:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;->$VALUES:[Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;
    .locals 1

    .line 68
    const-class v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;

    return-object p0
.end method

.method public static values()[Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;
    .locals 1

    .line 68
    sget-object v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;->$VALUES:[Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;

    invoke-virtual {v0}, [Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;

    return-object v0
.end method
