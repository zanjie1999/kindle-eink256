.class public final enum Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;
.super Ljava/lang/Enum;
.source "IAssetProgressCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProgressStateEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

.field public static final enum COMPLETE:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

.field public static final enum DOWNLOADING:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

.field public static final enum ERROR:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

.field public static final enum WAITING:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 10
    new-instance v0, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    const/4 v1, 0x0

    const-string v2, "WAITING"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;->WAITING:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    .line 11
    new-instance v0, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    const/4 v2, 0x1

    const-string v3, "DOWNLOADING"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;->DOWNLOADING:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    .line 12
    new-instance v0, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    const/4 v3, 0x2

    const-string v4, "ERROR"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;->ERROR:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    .line 13
    new-instance v0, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    const/4 v4, 0x3

    const-string v5, "COMPLETE"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;->COMPLETE:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    .line 9
    sget-object v6, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;->WAITING:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;->DOWNLOADING:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;->ERROR:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;->$VALUES:[Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;
    .locals 1

    .line 9
    const-class v0, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;
    .locals 1

    .line 9
    sget-object v0, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;->$VALUES:[Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    invoke-virtual {v0}, [Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    return-object v0
.end method
