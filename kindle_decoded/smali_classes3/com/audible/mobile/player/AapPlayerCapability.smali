.class public final enum Lcom/audible/mobile/player/AapPlayerCapability;
.super Ljava/lang/Enum;
.source "AapPlayerCapability.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/player/AapPlayerCapability;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/player/AapPlayerCapability;

.field public static final enum NARRATION_SPEED:Lcom/audible/mobile/player/AapPlayerCapability;

.field public static final enum VOLUME_BOOST:Lcom/audible/mobile/player/AapPlayerCapability;

.field public static final enum VOLUME_CONTROL:Lcom/audible/mobile/player/AapPlayerCapability;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 8
    new-instance v0, Lcom/audible/mobile/player/AapPlayerCapability;

    const/4 v1, 0x0

    const-string v2, "NARRATION_SPEED"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/player/AapPlayerCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/AapPlayerCapability;->NARRATION_SPEED:Lcom/audible/mobile/player/AapPlayerCapability;

    new-instance v0, Lcom/audible/mobile/player/AapPlayerCapability;

    const/4 v2, 0x1

    const-string v3, "VOLUME_CONTROL"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/player/AapPlayerCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/AapPlayerCapability;->VOLUME_CONTROL:Lcom/audible/mobile/player/AapPlayerCapability;

    new-instance v0, Lcom/audible/mobile/player/AapPlayerCapability;

    const/4 v3, 0x2

    const-string v4, "VOLUME_BOOST"

    invoke-direct {v0, v4, v3}, Lcom/audible/mobile/player/AapPlayerCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/AapPlayerCapability;->VOLUME_BOOST:Lcom/audible/mobile/player/AapPlayerCapability;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/audible/mobile/player/AapPlayerCapability;

    .line 6
    sget-object v5, Lcom/audible/mobile/player/AapPlayerCapability;->NARRATION_SPEED:Lcom/audible/mobile/player/AapPlayerCapability;

    aput-object v5, v4, v1

    sget-object v1, Lcom/audible/mobile/player/AapPlayerCapability;->VOLUME_CONTROL:Lcom/audible/mobile/player/AapPlayerCapability;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/audible/mobile/player/AapPlayerCapability;->$VALUES:[Lcom/audible/mobile/player/AapPlayerCapability;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/player/AapPlayerCapability;
    .locals 1

    .line 6
    const-class v0, Lcom/audible/mobile/player/AapPlayerCapability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/player/AapPlayerCapability;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/player/AapPlayerCapability;
    .locals 1

    .line 6
    sget-object v0, Lcom/audible/mobile/player/AapPlayerCapability;->$VALUES:[Lcom/audible/mobile/player/AapPlayerCapability;

    invoke-virtual {v0}, [Lcom/audible/mobile/player/AapPlayerCapability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/player/AapPlayerCapability;

    return-object v0
.end method
