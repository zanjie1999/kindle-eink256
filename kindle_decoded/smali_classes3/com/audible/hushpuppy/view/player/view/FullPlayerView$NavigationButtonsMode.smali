.class final enum Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;
.super Ljava/lang/Enum;
.source "FullPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/view/player/view/FullPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NavigationButtonsMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;

.field public static final enum ALL_BUTTONS_CONTROLS:Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;

.field public static final enum CHAPTER_BUTTONS_CONTROLS:Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;

.field public static final enum JUMP_BUTTONS_CONTROLS:Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 73
    new-instance v0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;

    const/4 v1, 0x0

    const-string v2, "ALL_BUTTONS_CONTROLS"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;->ALL_BUTTONS_CONTROLS:Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;

    .line 75
    new-instance v0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;

    const/4 v2, 0x1

    const-string v3, "CHAPTER_BUTTONS_CONTROLS"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;->CHAPTER_BUTTONS_CONTROLS:Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;

    .line 77
    new-instance v0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;

    const/4 v3, 0x2

    const-string v4, "JUMP_BUTTONS_CONTROLS"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;->JUMP_BUTTONS_CONTROLS:Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;

    .line 71
    sget-object v5, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;->ALL_BUTTONS_CONTROLS:Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;

    aput-object v5, v4, v1

    sget-object v1, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;->CHAPTER_BUTTONS_CONTROLS:Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;->$VALUES:[Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;
    .locals 1

    .line 71
    const-class v0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;
    .locals 1

    .line 71
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;->$VALUES:[Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;

    return-object v0
.end method
