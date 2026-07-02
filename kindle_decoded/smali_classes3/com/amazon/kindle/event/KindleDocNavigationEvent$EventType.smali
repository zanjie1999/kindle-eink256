.class public final enum Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;
.super Ljava/lang/Enum;
.source "KindleDocNavigationEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/event/KindleDocNavigationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

.field public static final enum LAYOUT_COMPLETE:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

.field public static final enum PAGE_CHANGE:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

.field public static final enum POSITION_RANGE_CHANGED:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

.field public static final enum POST_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

.field public static final enum PRE_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 92
    new-instance v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    const/4 v1, 0x0

    const-string v2, "PRE_NAVIGATION"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->PRE_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    .line 97
    new-instance v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    const/4 v2, 0x1

    const-string v3, "POST_NAVIGATION"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->POST_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    .line 106
    new-instance v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    const/4 v3, 0x2

    const-string v4, "PAGE_CHANGE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->PAGE_CHANGE:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    .line 112
    new-instance v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    const/4 v4, 0x3

    const-string v5, "LAYOUT_COMPLETE"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->LAYOUT_COMPLETE:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    .line 125
    new-instance v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    const/4 v5, 0x4

    const-string v6, "POSITION_RANGE_CHANGED"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->POSITION_RANGE_CHANGED:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    .line 88
    sget-object v7, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->PRE_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->POST_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->PAGE_CHANGE:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->LAYOUT_COMPLETE:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->$VALUES:[Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;
    .locals 1

    .line 88
    const-class v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;
    .locals 1

    .line 88
    sget-object v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->$VALUES:[Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    return-object v0
.end method
