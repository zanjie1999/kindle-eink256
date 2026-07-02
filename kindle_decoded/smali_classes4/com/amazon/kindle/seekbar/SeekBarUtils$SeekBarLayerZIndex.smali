.class public final enum Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;
.super Ljava/lang/Enum;
.source "SeekBarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/seekbar/SeekBarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SeekBarLayerZIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

.field public static final enum BACKGROUND_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

.field public static final enum CONTRAST_BACKGROUND_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

.field public static final enum KNOB_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

.field public static final enum MIN_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

.field public static final enum PROGRESS_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

.field public static final enum SECONDARY_PROGRESS_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

.field public static final enum THUMB_SNAP_EFFECT_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

.field public static final enum WAYPOINT_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;


# instance fields
.field private value:F


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 32
    new-instance v0, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    const/4 v1, 0x0

    const-string v2, "MIN_LAYER_INDEX"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->MIN_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    new-instance v0, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    const/4 v2, 0x1

    const-string v3, "THUMB_SNAP_EFFECT_LAYER_INDEX"

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->THUMB_SNAP_EFFECT_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    new-instance v0, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    const/4 v3, 0x2

    const-string v4, "CONTRAST_BACKGROUND_LAYER_INDEX"

    const/high16 v5, 0x41000000    # 8.0f

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->CONTRAST_BACKGROUND_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    new-instance v0, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    const/4 v4, 0x3

    const-string v5, "BACKGROUND_LAYER_INDEX"

    const/high16 v6, 0x41200000    # 10.0f

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->BACKGROUND_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    .line 33
    new-instance v0, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    const/4 v5, 0x4

    const-string v6, "SECONDARY_PROGRESS_LAYER_INDEX"

    const/high16 v7, 0x41700000    # 15.0f

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->SECONDARY_PROGRESS_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    new-instance v0, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    const/4 v6, 0x5

    const-string v7, "PROGRESS_LAYER_INDEX"

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->PROGRESS_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    new-instance v0, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    const/4 v7, 0x6

    const-string v8, "WAYPOINT_LAYER_INDEX"

    const/high16 v9, 0x42b40000    # 90.0f

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->WAYPOINT_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    new-instance v0, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    const/4 v8, 0x7

    const-string v9, "KNOB_LAYER_INDEX"

    const/high16 v10, 0x447a0000    # 1000.0f

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->KNOB_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    .line 31
    sget-object v10, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->MIN_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    aput-object v10, v9, v1

    sget-object v1, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->THUMB_SNAP_EFFECT_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    aput-object v1, v9, v2

    sget-object v1, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->CONTRAST_BACKGROUND_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    aput-object v1, v9, v3

    sget-object v1, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->BACKGROUND_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    aput-object v1, v9, v4

    sget-object v1, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->SECONDARY_PROGRESS_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    aput-object v1, v9, v5

    sget-object v1, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->PROGRESS_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    aput-object v1, v9, v6

    sget-object v1, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->WAYPOINT_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->$VALUES:[Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->value:F

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;)F
    .locals 0

    .line 31
    iget p0, p0, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->value:F

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;
    .locals 1

    .line 31
    const-class v0, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;
    .locals 1

    .line 31
    sget-object v0, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->$VALUES:[Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    invoke-virtual {v0}, [Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    return-object v0
.end method


# virtual methods
.method public getValue()F
    .locals 1

    .line 46
    iget v0, p0, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->value:F

    return v0
.end method
