.class public final enum Lcom/amazon/kindle/home/card/HomeCardState;
.super Ljava/lang/Enum;
.source "HomeCard.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/home/card/HomeCardState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/home/card/HomeCardState;

.field public static final enum FAILED:Lcom/amazon/kindle/home/card/HomeCardState;

.field public static final enum LOADING:Lcom/amazon/kindle/home/card/HomeCardState;

.field public static final enum READY:Lcom/amazon/kindle/home/card/HomeCardState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kindle/home/card/HomeCardState;

    new-instance v1, Lcom/amazon/kindle/home/card/HomeCardState;

    const/4 v2, 0x0

    const-string v3, "LOADING"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/home/card/HomeCardState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/home/card/HomeCardState;->LOADING:Lcom/amazon/kindle/home/card/HomeCardState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/home/card/HomeCardState;

    const/4 v2, 0x1

    const-string v3, "READY"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/home/card/HomeCardState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/home/card/HomeCardState;->READY:Lcom/amazon/kindle/home/card/HomeCardState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/home/card/HomeCardState;

    const/4 v2, 0x2

    const-string v3, "FAILED"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/home/card/HomeCardState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/home/card/HomeCardState;->FAILED:Lcom/amazon/kindle/home/card/HomeCardState;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/home/card/HomeCardState;->$VALUES:[Lcom/amazon/kindle/home/card/HomeCardState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/home/card/HomeCardState;
    .locals 1

    const-class v0, Lcom/amazon/kindle/home/card/HomeCardState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/home/card/HomeCardState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/home/card/HomeCardState;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/home/card/HomeCardState;->$VALUES:[Lcom/amazon/kindle/home/card/HomeCardState;

    invoke-virtual {v0}, [Lcom/amazon/kindle/home/card/HomeCardState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/home/card/HomeCardState;

    return-object v0
.end method
