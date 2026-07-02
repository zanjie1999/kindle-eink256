.class public final enum Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;
.super Ljava/lang/Enum;
.source "KindleDocNavigationEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/event/KindleDocNavigationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NavigationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

.field public static final enum ADJACENT:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

.field public static final enum BACK:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum GOTO:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 52
    new-instance v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    const/4 v1, 0x0

    const-string v2, "ADJACENT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;->ADJACENT:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    .line 57
    new-instance v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    const/4 v2, 0x1

    const-string v3, "GOTO"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;->GOTO:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    .line 66
    new-instance v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    const/4 v3, 0x2

    const-string v4, "BACK"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;->BACK:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    .line 48
    sget-object v5, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;->ADJACENT:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;->GOTO:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;->$VALUES:[Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;
    .locals 1

    .line 48
    const-class v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;
    .locals 1

    .line 48
    sget-object v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;->$VALUES:[Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    return-object v0
.end method
