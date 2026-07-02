.class public final enum Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;
.super Ljava/lang/Enum;
.source "BellCountEvent.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;

.field public static final enum BELL_COUNT_CHANGED:Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;

.field public static final enum BELL_COUNT_UPDATE:Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;

    const/4 v2, 0x0

    const-string v3, "BELL_COUNT_UPDATE"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;->BELL_COUNT_UPDATE:Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;

    const/4 v2, 0x1

    const-string v3, "BELL_COUNT_CHANGED"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;->BELL_COUNT_CHANGED:Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;->$VALUES:[Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;
    .locals 1

    const-class v0, Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;->$VALUES:[Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;

    return-object v0
.end method
