.class public final enum Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;
.super Ljava/lang/Enum;
.source "ApplicationForegroundStateChangeEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;

.field public static final enum BACKGROUND:Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;

.field public static final enum FOREGROUND:Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 14
    new-instance v0, Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;

    const/4 v1, 0x0

    const-string v2, "FOREGROUND"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;->FOREGROUND:Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;

    .line 17
    new-instance v0, Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;

    const/4 v2, 0x1

    const-string v3, "BACKGROUND"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;->BACKGROUND:Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;

    .line 11
    sget-object v4, Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;->FOREGROUND:Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;->$VALUES:[Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;
    .locals 1

    .line 11
    const-class v0, Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;
    .locals 1

    .line 11
    sget-object v0, Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;->$VALUES:[Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;

    return-object v0
.end method
