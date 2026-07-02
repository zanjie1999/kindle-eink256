.class public final enum Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;
.super Ljava/lang/Enum;
.source "PanelEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/events/PanelEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PanelAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;

.field public static final enum CLOSE:Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;

.field public static final enum OPEN:Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;

.field public static final enum PEEK:Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 25
    new-instance v0, Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;

    const/4 v1, 0x0

    const-string v2, "OPEN"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;->OPEN:Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;

    new-instance v0, Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;

    const/4 v2, 0x1

    const-string v3, "CLOSE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;->CLOSE:Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;

    new-instance v0, Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;

    const/4 v3, 0x2

    const-string v4, "PEEK"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;->PEEK:Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;

    .line 23
    sget-object v5, Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;->OPEN:Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;->CLOSE:Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;->$VALUES:[Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;->$VALUES:[Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;

    return-object v0
.end method
