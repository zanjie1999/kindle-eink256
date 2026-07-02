.class public final enum Lcom/audible/hushpuppy/plugin/ForceUpdate;
.super Ljava/lang/Enum;
.source "ForceUpdate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/plugin/ForceUpdate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/plugin/ForceUpdate;

.field public static final enum FORCED:Lcom/audible/hushpuppy/plugin/ForceUpdate;

.field public static final enum NOT_FORCED:Lcom/audible/hushpuppy/plugin/ForceUpdate;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lcom/audible/hushpuppy/plugin/ForceUpdate;

    const/4 v1, 0x0

    const-string v2, "FORCED"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/plugin/ForceUpdate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/plugin/ForceUpdate;->FORCED:Lcom/audible/hushpuppy/plugin/ForceUpdate;

    .line 17
    new-instance v0, Lcom/audible/hushpuppy/plugin/ForceUpdate;

    const/4 v2, 0x1

    const-string v3, "NOT_FORCED"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/plugin/ForceUpdate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/plugin/ForceUpdate;->NOT_FORCED:Lcom/audible/hushpuppy/plugin/ForceUpdate;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/audible/hushpuppy/plugin/ForceUpdate;

    .line 9
    sget-object v4, Lcom/audible/hushpuppy/plugin/ForceUpdate;->FORCED:Lcom/audible/hushpuppy/plugin/ForceUpdate;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/audible/hushpuppy/plugin/ForceUpdate;->$VALUES:[Lcom/audible/hushpuppy/plugin/ForceUpdate;

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

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/plugin/ForceUpdate;
    .locals 1

    .line 9
    const-class v0, Lcom/audible/hushpuppy/plugin/ForceUpdate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/plugin/ForceUpdate;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/plugin/ForceUpdate;
    .locals 1

    .line 9
    sget-object v0, Lcom/audible/hushpuppy/plugin/ForceUpdate;->$VALUES:[Lcom/audible/hushpuppy/plugin/ForceUpdate;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/plugin/ForceUpdate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/plugin/ForceUpdate;

    return-object v0
.end method
