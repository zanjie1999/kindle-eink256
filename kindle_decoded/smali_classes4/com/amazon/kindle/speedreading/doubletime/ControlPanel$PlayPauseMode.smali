.class public final enum Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;
.super Ljava/lang/Enum;
.source "ControlPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayPauseMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

.field public static final enum HOLDING:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

.field public static final enum PAUSE:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

.field public static final enum PLAY:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 86
    new-instance v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

    const/4 v1, 0x0

    const-string v2, "PLAY"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;->PLAY:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

    .line 92
    new-instance v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

    const/4 v2, 0x1

    const-string v3, "PAUSE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;->PAUSE:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

    .line 97
    new-instance v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

    const/4 v3, 0x2

    const-string v4, "HOLDING"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;->HOLDING:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

    .line 82
    sget-object v5, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;->PLAY:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;->PAUSE:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;->$VALUES:[Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;
    .locals 1

    .line 82
    const-class v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;
    .locals 1

    .line 82
    sget-object v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;->$VALUES:[Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

    invoke-virtual {v0}, [Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

    return-object v0
.end method
