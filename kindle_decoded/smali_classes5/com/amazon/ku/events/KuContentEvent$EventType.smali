.class public final enum Lcom/amazon/ku/events/KuContentEvent$EventType;
.super Ljava/lang/Enum;
.source "KuContentEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ku/events/KuContentEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ku/events/KuContentEvent$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ku/events/KuContentEvent$EventType;

.field public static final enum EXPIRED_CONTENT_CAPTURED:Lcom/amazon/ku/events/KuContentEvent$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/amazon/ku/events/KuContentEvent$EventType;

    const/4 v1, 0x0

    const-string v2, "EXPIRED_CONTENT_CAPTURED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/ku/events/KuContentEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ku/events/KuContentEvent$EventType;->EXPIRED_CONTENT_CAPTURED:Lcom/amazon/ku/events/KuContentEvent$EventType;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/ku/events/KuContentEvent$EventType;

    aput-object v0, v2, v1

    .line 11
    sput-object v2, Lcom/amazon/ku/events/KuContentEvent$EventType;->$VALUES:[Lcom/amazon/ku/events/KuContentEvent$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ku/events/KuContentEvent$EventType;
    .locals 1

    .line 11
    const-class v0, Lcom/amazon/ku/events/KuContentEvent$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ku/events/KuContentEvent$EventType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ku/events/KuContentEvent$EventType;
    .locals 1

    .line 11
    sget-object v0, Lcom/amazon/ku/events/KuContentEvent$EventType;->$VALUES:[Lcom/amazon/ku/events/KuContentEvent$EventType;

    invoke-virtual {v0}, [Lcom/amazon/ku/events/KuContentEvent$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ku/events/KuContentEvent$EventType;

    return-object v0
.end method
