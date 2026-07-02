.class public final enum Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;
.super Ljava/lang/Enum;
.source "LocalyticsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocalyticsStopZoomSessionOrigin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;

.field public static final enum MOVE_TO_OTHER_ARTICLE:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;

.field public static final enum PINCH_OUT:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;

.field public static final enum RESET_BUTTON:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;


# instance fields
.field public final mString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 176
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;

    const/4 v1, 0x0

    const-string v2, "PINCH_OUT"

    const-string v3, "Pinch Out"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;->PINCH_OUT:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;

    .line 180
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;

    const/4 v2, 0x1

    const-string v3, "MOVE_TO_OTHER_ARTICLE"

    const-string v4, "Move to other article"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;->MOVE_TO_OTHER_ARTICLE:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;

    .line 184
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;

    const/4 v3, 0x2

    const-string v4, "RESET_BUTTON"

    const-string v5, "Reset Button"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;->RESET_BUTTON:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;

    .line 172
    sget-object v5, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;->PINCH_OUT:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;->MOVE_TO_OTHER_ARTICLE:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;->$VALUES:[Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 195
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 196
    iput-object p3, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;->mString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;
    .locals 1

    .line 172
    const-class v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;

    return-object p0
.end method

.method public static values()[Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;
    .locals 1

    .line 172
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;->$VALUES:[Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;

    invoke-virtual {v0}, [Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;->mString:Ljava/lang/String;

    return-object v0
.end method
