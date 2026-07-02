.class public final enum Lcom/amazon/kedu/ftue/events/EventContext$Trigger;
.super Ljava/lang/Enum;
.source "EventContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/ftue/events/EventContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Trigger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kedu/ftue/events/EventContext$Trigger;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kedu/ftue/events/EventContext$Trigger;

.field public static final enum BOOK_OPEN:Lcom/amazon/kedu/ftue/events/EventContext$Trigger;

.field public static final enum CHROME_OPEN:Lcom/amazon/kedu/ftue/events/EventContext$Trigger;

.field public static final enum EVENT:Lcom/amazon/kedu/ftue/events/EventContext$Trigger;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 116
    new-instance v0, Lcom/amazon/kedu/ftue/events/EventContext$Trigger;

    const/4 v1, 0x0

    const-string v2, "BOOK_OPEN"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kedu/ftue/events/EventContext$Trigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kedu/ftue/events/EventContext$Trigger;->BOOK_OPEN:Lcom/amazon/kedu/ftue/events/EventContext$Trigger;

    .line 117
    new-instance v0, Lcom/amazon/kedu/ftue/events/EventContext$Trigger;

    const/4 v2, 0x1

    const-string v3, "CHROME_OPEN"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kedu/ftue/events/EventContext$Trigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kedu/ftue/events/EventContext$Trigger;->CHROME_OPEN:Lcom/amazon/kedu/ftue/events/EventContext$Trigger;

    .line 118
    new-instance v0, Lcom/amazon/kedu/ftue/events/EventContext$Trigger;

    const/4 v3, 0x2

    const-string v4, "EVENT"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kedu/ftue/events/EventContext$Trigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kedu/ftue/events/EventContext$Trigger;->EVENT:Lcom/amazon/kedu/ftue/events/EventContext$Trigger;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kedu/ftue/events/EventContext$Trigger;

    .line 114
    sget-object v5, Lcom/amazon/kedu/ftue/events/EventContext$Trigger;->BOOK_OPEN:Lcom/amazon/kedu/ftue/events/EventContext$Trigger;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kedu/ftue/events/EventContext$Trigger;->CHROME_OPEN:Lcom/amazon/kedu/ftue/events/EventContext$Trigger;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kedu/ftue/events/EventContext$Trigger;->$VALUES:[Lcom/amazon/kedu/ftue/events/EventContext$Trigger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kedu/ftue/events/EventContext$Trigger;
    .locals 1

    .line 114
    const-class v0, Lcom/amazon/kedu/ftue/events/EventContext$Trigger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kedu/ftue/events/EventContext$Trigger;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kedu/ftue/events/EventContext$Trigger;
    .locals 1

    .line 114
    sget-object v0, Lcom/amazon/kedu/ftue/events/EventContext$Trigger;->$VALUES:[Lcom/amazon/kedu/ftue/events/EventContext$Trigger;

    invoke-virtual {v0}, [Lcom/amazon/kedu/ftue/events/EventContext$Trigger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kedu/ftue/events/EventContext$Trigger;

    return-object v0
.end method
