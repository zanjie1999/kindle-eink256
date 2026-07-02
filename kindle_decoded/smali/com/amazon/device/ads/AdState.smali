.class final enum Lcom/amazon/device/ads/AdState;
.super Ljava/lang/Enum;
.source "AdState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/device/ads/AdState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/ads/AdState;

.field public static final enum DESTROYED:Lcom/amazon/device/ads/AdState;

.field public static final enum DRAWING:Lcom/amazon/device/ads/AdState;

.field public static final enum EXPANDED:Lcom/amazon/device/ads/AdState;

.field public static final enum HIDDEN:Lcom/amazon/device/ads/AdState;

.field public static final enum INVALID:Lcom/amazon/device/ads/AdState;

.field public static final enum LOADED:Lcom/amazon/device/ads/AdState;

.field public static final enum LOADING:Lcom/amazon/device/ads/AdState;

.field public static final enum READY_TO_LOAD:Lcom/amazon/device/ads/AdState;

.field public static final enum RENDERED:Lcom/amazon/device/ads/AdState;

.field public static final enum RENDERING:Lcom/amazon/device/ads/AdState;

.field public static final enum SHOWING:Lcom/amazon/device/ads/AdState;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 17
    new-instance v0, Lcom/amazon/device/ads/AdState;

    const/4 v1, 0x0

    const-string v2, "READY_TO_LOAD"

    invoke-direct {v0, v2, v1}, Lcom/amazon/device/ads/AdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/AdState;->READY_TO_LOAD:Lcom/amazon/device/ads/AdState;

    .line 21
    new-instance v0, Lcom/amazon/device/ads/AdState;

    const/4 v2, 0x1

    const-string v3, "LOADING"

    invoke-direct {v0, v3, v2}, Lcom/amazon/device/ads/AdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/AdState;->LOADING:Lcom/amazon/device/ads/AdState;

    .line 25
    new-instance v0, Lcom/amazon/device/ads/AdState;

    const/4 v3, 0x2

    const-string v4, "LOADED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/device/ads/AdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/AdState;->LOADED:Lcom/amazon/device/ads/AdState;

    .line 29
    new-instance v0, Lcom/amazon/device/ads/AdState;

    const/4 v4, 0x3

    const-string v5, "RENDERING"

    invoke-direct {v0, v5, v4}, Lcom/amazon/device/ads/AdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/AdState;->RENDERING:Lcom/amazon/device/ads/AdState;

    .line 33
    new-instance v0, Lcom/amazon/device/ads/AdState;

    const/4 v5, 0x4

    const-string v6, "RENDERED"

    invoke-direct {v0, v6, v5}, Lcom/amazon/device/ads/AdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/AdState;->RENDERED:Lcom/amazon/device/ads/AdState;

    .line 37
    new-instance v0, Lcom/amazon/device/ads/AdState;

    const/4 v6, 0x5

    const-string v7, "DRAWING"

    invoke-direct {v0, v7, v6}, Lcom/amazon/device/ads/AdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/AdState;->DRAWING:Lcom/amazon/device/ads/AdState;

    .line 41
    new-instance v0, Lcom/amazon/device/ads/AdState;

    const/4 v7, 0x6

    const-string v8, "SHOWING"

    invoke-direct {v0, v8, v7}, Lcom/amazon/device/ads/AdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/AdState;->SHOWING:Lcom/amazon/device/ads/AdState;

    .line 45
    new-instance v0, Lcom/amazon/device/ads/AdState;

    const/4 v8, 0x7

    const-string v9, "EXPANDED"

    invoke-direct {v0, v9, v8}, Lcom/amazon/device/ads/AdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/AdState;->EXPANDED:Lcom/amazon/device/ads/AdState;

    .line 49
    new-instance v0, Lcom/amazon/device/ads/AdState;

    const/16 v9, 0x8

    const-string v10, "HIDDEN"

    invoke-direct {v0, v10, v9}, Lcom/amazon/device/ads/AdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/AdState;->HIDDEN:Lcom/amazon/device/ads/AdState;

    .line 53
    new-instance v0, Lcom/amazon/device/ads/AdState;

    const/16 v10, 0x9

    const-string v11, "INVALID"

    invoke-direct {v0, v11, v10}, Lcom/amazon/device/ads/AdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/AdState;->INVALID:Lcom/amazon/device/ads/AdState;

    .line 57
    new-instance v0, Lcom/amazon/device/ads/AdState;

    const/16 v11, 0xa

    const-string v12, "DESTROYED"

    invoke-direct {v0, v12, v11}, Lcom/amazon/device/ads/AdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/AdState;->DESTROYED:Lcom/amazon/device/ads/AdState;

    const/16 v12, 0xb

    new-array v12, v12, [Lcom/amazon/device/ads/AdState;

    .line 11
    sget-object v13, Lcom/amazon/device/ads/AdState;->READY_TO_LOAD:Lcom/amazon/device/ads/AdState;

    aput-object v13, v12, v1

    sget-object v1, Lcom/amazon/device/ads/AdState;->LOADING:Lcom/amazon/device/ads/AdState;

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/device/ads/AdState;->LOADED:Lcom/amazon/device/ads/AdState;

    aput-object v1, v12, v3

    sget-object v1, Lcom/amazon/device/ads/AdState;->RENDERING:Lcom/amazon/device/ads/AdState;

    aput-object v1, v12, v4

    sget-object v1, Lcom/amazon/device/ads/AdState;->RENDERED:Lcom/amazon/device/ads/AdState;

    aput-object v1, v12, v5

    sget-object v1, Lcom/amazon/device/ads/AdState;->DRAWING:Lcom/amazon/device/ads/AdState;

    aput-object v1, v12, v6

    sget-object v1, Lcom/amazon/device/ads/AdState;->SHOWING:Lcom/amazon/device/ads/AdState;

    aput-object v1, v12, v7

    sget-object v1, Lcom/amazon/device/ads/AdState;->EXPANDED:Lcom/amazon/device/ads/AdState;

    aput-object v1, v12, v8

    sget-object v1, Lcom/amazon/device/ads/AdState;->HIDDEN:Lcom/amazon/device/ads/AdState;

    aput-object v1, v12, v9

    sget-object v1, Lcom/amazon/device/ads/AdState;->INVALID:Lcom/amazon/device/ads/AdState;

    aput-object v1, v12, v10

    aput-object v0, v12, v11

    sput-object v12, Lcom/amazon/device/ads/AdState;->$VALUES:[Lcom/amazon/device/ads/AdState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/ads/AdState;
    .locals 1

    .line 11
    const-class v0, Lcom/amazon/device/ads/AdState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/device/ads/AdState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/device/ads/AdState;
    .locals 1

    .line 11
    sget-object v0, Lcom/amazon/device/ads/AdState;->$VALUES:[Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0}, [Lcom/amazon/device/ads/AdState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/ads/AdState;

    return-object v0
.end method
