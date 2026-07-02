.class public final enum Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;
.super Ljava/lang/Enum;
.source "HushpuppyStateChangeEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

.field public static final enum DISABLED:Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

.field public static final enum ENABLED:Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 19
    new-instance v0, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

    const/4 v1, 0x0

    const-string v2, "ENABLED"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;->ENABLED:Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

    .line 21
    new-instance v0, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

    const/4 v2, 0x1

    const-string v3, "DISABLED"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;->DISABLED:Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

    .line 17
    sget-object v4, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;->ENABLED:Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;->$VALUES:[Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;
    .locals 1

    .line 17
    const-class v0, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;
    .locals 1

    .line 17
    sget-object v0, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;->$VALUES:[Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

    return-object v0
.end method
