.class public final enum Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;
.super Ljava/lang/Enum;
.source "WebServiceModelEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/foundation/internal/WebServiceModelEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;

.field public static final enum CHANGE:Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;

.field public static final enum FINISHED:Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;

    const/4 v1, 0x0

    const-string v2, "CHANGE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;->CHANGE:Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;

    .line 11
    new-instance v0, Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;

    const/4 v2, 0x1

    const-string v3, "FINISHED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;->FINISHED:Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;

    .line 9
    sget-object v4, Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;->CHANGE:Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;->$VALUES:[Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;
    .locals 1

    .line 9
    const-class v0, Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;
    .locals 1

    .line 9
    sget-object v0, Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;->$VALUES:[Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;

    invoke-virtual {v0}, [Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;

    return-object v0
.end method
