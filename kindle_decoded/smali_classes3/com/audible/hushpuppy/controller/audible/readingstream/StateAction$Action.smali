.class public final enum Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;
.super Ljava/lang/Enum;
.source "StateAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

.field public static final enum ERROR:Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

.field public static final enum MODE:Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

.field public static final enum PAUSE:Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

.field public static final enum PLAY:Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

.field public static final enum UNKOWN:Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;


# instance fields
.field private actionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 32
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    const/4 v1, 0x0

    const-string v2, "PLAY"

    const-string v3, "Play"

    invoke-direct {v0, v2, v1, v3}, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;->PLAY:Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    .line 36
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    const/4 v2, 0x1

    const-string v3, "PAUSE"

    const-string v4, "Pause"

    invoke-direct {v0, v3, v2, v4}, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;->PAUSE:Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    .line 40
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    const/4 v3, 0x2

    const-string v4, "ERROR"

    const-string v5, "PlaybackError"

    invoke-direct {v0, v4, v3, v5}, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;->ERROR:Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    .line 44
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    const/4 v4, 0x3

    const-string v5, "MODE"

    const-string v6, "ChangeListeningMode"

    invoke-direct {v0, v5, v4, v6}, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;->MODE:Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    .line 49
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    const/4 v5, 0x4

    const-string v6, "UNKOWN"

    const-string v7, "Unknown"

    invoke-direct {v0, v6, v5, v7}, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;->UNKOWN:Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    .line 28
    sget-object v7, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;->PLAY:Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    aput-object v7, v6, v1

    sget-object v1, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;->PAUSE:Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    aput-object v1, v6, v2

    sget-object v1, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;->ERROR:Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    aput-object v1, v6, v3

    sget-object v1, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;->MODE:Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;->$VALUES:[Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;->actionName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;
    .locals 1

    .line 28
    const-class v0, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;
    .locals 1

    .line 28
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;->$VALUES:[Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    return-object v0
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;->actionName:Ljava/lang/String;

    return-object v0
.end method
