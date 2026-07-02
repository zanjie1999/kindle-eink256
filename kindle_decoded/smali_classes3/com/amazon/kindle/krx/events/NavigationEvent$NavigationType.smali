.class public final enum Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;
.super Ljava/lang/Enum;
.source "NavigationEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/events/NavigationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NavigationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;

.field public static final enum Close:Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;

.field public static final enum Jump:Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;

.field public static final enum Open:Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;

.field public static final enum PageTurnBackward:Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;

.field public static final enum PageTurnForward:Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 26
    new-instance v0, Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;

    const/4 v1, 0x0

    const-string v2, "Open"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;->Open:Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;

    .line 30
    new-instance v0, Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;

    const/4 v2, 0x1

    const-string v3, "PageTurnForward"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;->PageTurnForward:Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;

    .line 34
    new-instance v0, Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;

    const/4 v3, 0x2

    const-string v4, "PageTurnBackward"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;->PageTurnBackward:Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;

    .line 38
    new-instance v0, Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;

    const/4 v4, 0x3

    const-string v5, "Jump"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;->Jump:Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;

    .line 42
    new-instance v0, Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;

    const/4 v5, 0x4

    const-string v6, "Close"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;->Close:Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;

    .line 19
    sget-object v7, Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;->Open:Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;->PageTurnForward:Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;->PageTurnBackward:Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;->Jump:Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;->$VALUES:[Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;->$VALUES:[Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/events/NavigationEvent$NavigationType;

    return-object v0
.end method
