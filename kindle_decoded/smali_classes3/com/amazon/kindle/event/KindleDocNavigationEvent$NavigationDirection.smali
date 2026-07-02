.class public final enum Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;
.super Ljava/lang/Enum;
.source "KindleDocNavigationEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/event/KindleDocNavigationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NavigationDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

.field public static final enum NEXT:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

.field public static final enum PREVIOUS:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

.field public static final enum UNKNOWN:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 74
    new-instance v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    const/4 v1, 0x0

    const-string v2, "PREVIOUS"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->PREVIOUS:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    .line 79
    new-instance v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    const/4 v2, 0x1

    const-string v3, "NEXT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->NEXT:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    .line 85
    new-instance v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    const/4 v3, 0x2

    const-string v4, "UNKNOWN"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->UNKNOWN:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    .line 70
    sget-object v5, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->PREVIOUS:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->NEXT:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->$VALUES:[Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;
    .locals 1

    .line 70
    const-class v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;
    .locals 1

    .line 70
    sget-object v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->$VALUES:[Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    invoke-virtual {v0}, [Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    return-object v0
.end method
