.class public final enum Lcom/amazon/kindle/event/PageTurnEvent$EventType;
.super Ljava/lang/Enum;
.source "PageTurnEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/event/PageTurnEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/event/PageTurnEvent$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/event/PageTurnEvent$EventType;

.field public static final enum PAGETURN_BEGIN:Lcom/amazon/kindle/event/PageTurnEvent$EventType;

.field public static final enum PAGETURN_END:Lcom/amazon/kindle/event/PageTurnEvent$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kindle/event/PageTurnEvent$EventType;

    new-instance v1, Lcom/amazon/kindle/event/PageTurnEvent$EventType;

    const/4 v2, 0x0

    const-string v3, "PAGETURN_BEGIN"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/event/PageTurnEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/event/PageTurnEvent$EventType;->PAGETURN_BEGIN:Lcom/amazon/kindle/event/PageTurnEvent$EventType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/event/PageTurnEvent$EventType;

    const/4 v2, 0x1

    const-string v3, "PAGETURN_END"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/event/PageTurnEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/event/PageTurnEvent$EventType;->PAGETURN_END:Lcom/amazon/kindle/event/PageTurnEvent$EventType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/event/PageTurnEvent$EventType;->$VALUES:[Lcom/amazon/kindle/event/PageTurnEvent$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/event/PageTurnEvent$EventType;
    .locals 1

    const-class v0, Lcom/amazon/kindle/event/PageTurnEvent$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/event/PageTurnEvent$EventType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/event/PageTurnEvent$EventType;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/event/PageTurnEvent$EventType;->$VALUES:[Lcom/amazon/kindle/event/PageTurnEvent$EventType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/event/PageTurnEvent$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/event/PageTurnEvent$EventType;

    return-object v0
.end method
