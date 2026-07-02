.class public final enum Lcom/amazon/startactions/metrics/XRayActions;
.super Ljava/lang/Enum;
.source "XRayActions.java"

# interfaces
.implements Lcom/amazon/ea/metrics/WidgetActions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/startactions/metrics/XRayActions;",
        ">;",
        "Lcom/amazon/ea/metrics/WidgetActions;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/startactions/metrics/XRayActions;

.field public static final enum CLICK_SEE_CONTENT:Lcom/amazon/startactions/metrics/XRayActions;

.field public static final enum RENDER_ENTITIES_WIDGET:Lcom/amazon/startactions/metrics/XRayActions;


# instance fields
.field private final action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 9
    new-instance v0, Lcom/amazon/startactions/metrics/XRayActions;

    const/4 v1, 0x0

    const-string v2, "RENDER_ENTITIES_WIDGET"

    const-string v3, "Render.EntitiesWidget"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/startactions/metrics/XRayActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/startactions/metrics/XRayActions;->RENDER_ENTITIES_WIDGET:Lcom/amazon/startactions/metrics/XRayActions;

    .line 10
    new-instance v0, Lcom/amazon/startactions/metrics/XRayActions;

    const/4 v2, 0x1

    const-string v3, "CLICK_SEE_CONTENT"

    const-string v4, "Click.SeeContent"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/startactions/metrics/XRayActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/startactions/metrics/XRayActions;->CLICK_SEE_CONTENT:Lcom/amazon/startactions/metrics/XRayActions;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/startactions/metrics/XRayActions;

    .line 8
    sget-object v4, Lcom/amazon/startactions/metrics/XRayActions;->RENDER_ENTITIES_WIDGET:Lcom/amazon/startactions/metrics/XRayActions;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/startactions/metrics/XRayActions;->$VALUES:[Lcom/amazon/startactions/metrics/XRayActions;

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

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/amazon/startactions/metrics/XRayActions;->action:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/startactions/metrics/XRayActions;
    .locals 1

    .line 8
    const-class v0, Lcom/amazon/startactions/metrics/XRayActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/startactions/metrics/XRayActions;

    return-object p0
.end method

.method public static values()[Lcom/amazon/startactions/metrics/XRayActions;
    .locals 1

    .line 8
    sget-object v0, Lcom/amazon/startactions/metrics/XRayActions;->$VALUES:[Lcom/amazon/startactions/metrics/XRayActions;

    invoke-virtual {v0}, [Lcom/amazon/startactions/metrics/XRayActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/startactions/metrics/XRayActions;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/startactions/metrics/XRayActions;->action:Ljava/lang/String;

    return-object v0
.end method
