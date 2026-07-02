.class public final enum Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;
.super Ljava/lang/Enum;
.source "MotionTrackingEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/nln/MotionTrackingEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrackAxis"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;

.field public static final enum TRACK_X:Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;

.field public static final enum TRACK_Y:Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 14
    new-instance v0, Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;

    const/4 v1, 0x0

    const-string v2, "TRACK_X"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;->TRACK_X:Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;

    .line 15
    new-instance v0, Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;

    const/4 v2, 0x1

    const-string v3, "TRACK_Y"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;->TRACK_Y:Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;

    .line 13
    sget-object v4, Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;->TRACK_X:Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;->$VALUES:[Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;
    .locals 1

    .line 13
    sget-object v0, Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;->$VALUES:[Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;

    invoke-virtual {v0}, [Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;

    return-object v0
.end method
