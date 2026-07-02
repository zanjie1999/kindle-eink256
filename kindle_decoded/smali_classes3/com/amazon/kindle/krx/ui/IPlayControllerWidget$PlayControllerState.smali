.class public final enum Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;
.super Ljava/lang/Enum;
.source "IPlayControllerWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/ui/IPlayControllerWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayControllerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;

.field public static final enum DOWNLOAD:Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;

.field public static final enum NONE:Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;

.field public static final enum PAUSE:Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;

.field public static final enum PLAY:Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;

.field public static final enum PLAY_DISABLED:Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;

.field public static final enum SPINNER:Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 11
    new-instance v0, Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;

    const/4 v1, 0x0

    const-string v2, "PLAY"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;->PLAY:Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;

    .line 12
    new-instance v0, Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;

    const/4 v2, 0x1

    const-string v3, "PLAY_DISABLED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;->PLAY_DISABLED:Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;

    .line 13
    new-instance v0, Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;

    const/4 v3, 0x2

    const-string v4, "PAUSE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;->PAUSE:Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;

    .line 14
    new-instance v0, Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;

    const/4 v4, 0x3

    const-string v5, "SPINNER"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;->SPINNER:Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;

    .line 15
    new-instance v0, Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;

    const/4 v5, 0x4

    const-string v6, "DOWNLOAD"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;->DOWNLOAD:Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;

    .line 16
    new-instance v0, Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;

    const/4 v6, 0x5

    const-string v7, "NONE"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;->NONE:Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;

    .line 10
    sget-object v8, Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;->PLAY:Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;->PLAY_DISABLED:Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;->PAUSE:Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;->SPINNER:Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;->DOWNLOAD:Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;->$VALUES:[Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;
    .locals 1

    .line 10
    const-class v0, Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;
    .locals 1

    .line 10
    sget-object v0, Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;->$VALUES:[Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/ui/IPlayControllerWidget$PlayControllerState;

    return-object v0
.end method
