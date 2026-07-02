.class final enum Lcom/facebook/AppEventsLogger$FlushReason;
.super Ljava/lang/Enum;
.source "AppEventsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AppEventsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FlushReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/AppEventsLogger$FlushReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/AppEventsLogger$FlushReason;

.field public static final enum EAGER_FLUSHING_EVENT:Lcom/facebook/AppEventsLogger$FlushReason;

.field public static final enum EVENT_THRESHOLD:Lcom/facebook/AppEventsLogger$FlushReason;

.field public static final enum EXPLICIT:Lcom/facebook/AppEventsLogger$FlushReason;

.field public static final enum PERSISTED_EVENTS:Lcom/facebook/AppEventsLogger$FlushReason;

.field public static final enum SESSION_CHANGE:Lcom/facebook/AppEventsLogger$FlushReason;

.field public static final enum TIMER:Lcom/facebook/AppEventsLogger$FlushReason;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 582
    new-instance v0, Lcom/facebook/AppEventsLogger$FlushReason;

    const/4 v1, 0x0

    const-string v2, "EXPLICIT"

    invoke-direct {v0, v2, v1}, Lcom/facebook/AppEventsLogger$FlushReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/AppEventsLogger$FlushReason;->EXPLICIT:Lcom/facebook/AppEventsLogger$FlushReason;

    .line 583
    new-instance v0, Lcom/facebook/AppEventsLogger$FlushReason;

    const/4 v2, 0x1

    const-string v3, "TIMER"

    invoke-direct {v0, v3, v2}, Lcom/facebook/AppEventsLogger$FlushReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/AppEventsLogger$FlushReason;->TIMER:Lcom/facebook/AppEventsLogger$FlushReason;

    .line 584
    new-instance v0, Lcom/facebook/AppEventsLogger$FlushReason;

    const/4 v3, 0x2

    const-string v4, "SESSION_CHANGE"

    invoke-direct {v0, v4, v3}, Lcom/facebook/AppEventsLogger$FlushReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/AppEventsLogger$FlushReason;->SESSION_CHANGE:Lcom/facebook/AppEventsLogger$FlushReason;

    .line 585
    new-instance v0, Lcom/facebook/AppEventsLogger$FlushReason;

    const/4 v4, 0x3

    const-string v5, "PERSISTED_EVENTS"

    invoke-direct {v0, v5, v4}, Lcom/facebook/AppEventsLogger$FlushReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/AppEventsLogger$FlushReason;->PERSISTED_EVENTS:Lcom/facebook/AppEventsLogger$FlushReason;

    .line 586
    new-instance v0, Lcom/facebook/AppEventsLogger$FlushReason;

    const/4 v5, 0x4

    const-string v6, "EVENT_THRESHOLD"

    invoke-direct {v0, v6, v5}, Lcom/facebook/AppEventsLogger$FlushReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/AppEventsLogger$FlushReason;->EVENT_THRESHOLD:Lcom/facebook/AppEventsLogger$FlushReason;

    .line 587
    new-instance v0, Lcom/facebook/AppEventsLogger$FlushReason;

    const/4 v6, 0x5

    const-string v7, "EAGER_FLUSHING_EVENT"

    invoke-direct {v0, v7, v6}, Lcom/facebook/AppEventsLogger$FlushReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/AppEventsLogger$FlushReason;->EAGER_FLUSHING_EVENT:Lcom/facebook/AppEventsLogger$FlushReason;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/facebook/AppEventsLogger$FlushReason;

    .line 580
    sget-object v8, Lcom/facebook/AppEventsLogger$FlushReason;->EXPLICIT:Lcom/facebook/AppEventsLogger$FlushReason;

    aput-object v8, v7, v1

    sget-object v1, Lcom/facebook/AppEventsLogger$FlushReason;->TIMER:Lcom/facebook/AppEventsLogger$FlushReason;

    aput-object v1, v7, v2

    sget-object v1, Lcom/facebook/AppEventsLogger$FlushReason;->SESSION_CHANGE:Lcom/facebook/AppEventsLogger$FlushReason;

    aput-object v1, v7, v3

    sget-object v1, Lcom/facebook/AppEventsLogger$FlushReason;->PERSISTED_EVENTS:Lcom/facebook/AppEventsLogger$FlushReason;

    aput-object v1, v7, v4

    sget-object v1, Lcom/facebook/AppEventsLogger$FlushReason;->EVENT_THRESHOLD:Lcom/facebook/AppEventsLogger$FlushReason;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/facebook/AppEventsLogger$FlushReason;->$VALUES:[Lcom/facebook/AppEventsLogger$FlushReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 581
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/AppEventsLogger$FlushReason;
    .locals 1

    .line 580
    const-class v0, Lcom/facebook/AppEventsLogger$FlushReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/AppEventsLogger$FlushReason;

    return-object p0
.end method

.method public static values()[Lcom/facebook/AppEventsLogger$FlushReason;
    .locals 1

    .line 580
    sget-object v0, Lcom/facebook/AppEventsLogger$FlushReason;->$VALUES:[Lcom/facebook/AppEventsLogger$FlushReason;

    invoke-virtual {v0}, [Lcom/facebook/AppEventsLogger$FlushReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/AppEventsLogger$FlushReason;

    return-object v0
.end method
