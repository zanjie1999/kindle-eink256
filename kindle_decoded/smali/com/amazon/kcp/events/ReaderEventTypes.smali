.class public final enum Lcom/amazon/kcp/events/ReaderEventTypes;
.super Ljava/lang/Enum;
.source "ReaderEventTypes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/events/ReaderEventTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/events/ReaderEventTypes;

.field public static final enum ADJACENT_PAGES_PRERENDERED_EVENT:Lcom/amazon/kcp/events/ReaderEventTypes;

.field public static final enum DOCVIEWER_POSITION_CHANGED_EVENT:Lcom/amazon/kcp/events/ReaderEventTypes;

.field public static final enum FPR_DIALOG_GOTO_EVENT:Lcom/amazon/kcp/events/ReaderEventTypes;

.field public static final enum HIGHLIGHT_SELECTION_EVENT:Lcom/amazon/kcp/events/ReaderEventTypes;

.field public static final enum INITIALIZING_GESTURE_HANDLERS_EVENT:Lcom/amazon/kcp/events/ReaderEventTypes;

.field public static final enum LOGICAL_POSITION_NAVIGATION_EVENT:Lcom/amazon/kcp/events/ReaderEventTypes;

.field public static final enum PAGETURN_ABORTED_EVENT:Lcom/amazon/kcp/events/ReaderEventTypes;

.field public static final enum PAGETURN_REGULAR_EVENT:Lcom/amazon/kcp/events/ReaderEventTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 16
    new-instance v0, Lcom/amazon/kcp/events/ReaderEventTypes;

    const/4 v1, 0x0

    const-string v2, "PAGETURN_ABORTED_EVENT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/events/ReaderEventTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/events/ReaderEventTypes;->PAGETURN_ABORTED_EVENT:Lcom/amazon/kcp/events/ReaderEventTypes;

    .line 21
    new-instance v0, Lcom/amazon/kcp/events/ReaderEventTypes;

    const/4 v2, 0x1

    const-string v3, "PAGETURN_REGULAR_EVENT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/events/ReaderEventTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/events/ReaderEventTypes;->PAGETURN_REGULAR_EVENT:Lcom/amazon/kcp/events/ReaderEventTypes;

    .line 27
    new-instance v0, Lcom/amazon/kcp/events/ReaderEventTypes;

    const/4 v3, 0x2

    const-string v4, "ADJACENT_PAGES_PRERENDERED_EVENT"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/events/ReaderEventTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/events/ReaderEventTypes;->ADJACENT_PAGES_PRERENDERED_EVENT:Lcom/amazon/kcp/events/ReaderEventTypes;

    .line 32
    new-instance v0, Lcom/amazon/kcp/events/ReaderEventTypes;

    const/4 v4, 0x3

    const-string v5, "DOCVIEWER_POSITION_CHANGED_EVENT"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kcp/events/ReaderEventTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/events/ReaderEventTypes;->DOCVIEWER_POSITION_CHANGED_EVENT:Lcom/amazon/kcp/events/ReaderEventTypes;

    .line 37
    new-instance v0, Lcom/amazon/kcp/events/ReaderEventTypes;

    const/4 v5, 0x4

    const-string v6, "LOGICAL_POSITION_NAVIGATION_EVENT"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kcp/events/ReaderEventTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/events/ReaderEventTypes;->LOGICAL_POSITION_NAVIGATION_EVENT:Lcom/amazon/kcp/events/ReaderEventTypes;

    .line 42
    new-instance v0, Lcom/amazon/kcp/events/ReaderEventTypes;

    const/4 v6, 0x5

    const-string v7, "HIGHLIGHT_SELECTION_EVENT"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kcp/events/ReaderEventTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/events/ReaderEventTypes;->HIGHLIGHT_SELECTION_EVENT:Lcom/amazon/kcp/events/ReaderEventTypes;

    .line 47
    new-instance v0, Lcom/amazon/kcp/events/ReaderEventTypes;

    const/4 v7, 0x6

    const-string v8, "INITIALIZING_GESTURE_HANDLERS_EVENT"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kcp/events/ReaderEventTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/events/ReaderEventTypes;->INITIALIZING_GESTURE_HANDLERS_EVENT:Lcom/amazon/kcp/events/ReaderEventTypes;

    .line 52
    new-instance v0, Lcom/amazon/kcp/events/ReaderEventTypes;

    const/4 v8, 0x7

    const-string v9, "FPR_DIALOG_GOTO_EVENT"

    invoke-direct {v0, v9, v8}, Lcom/amazon/kcp/events/ReaderEventTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/events/ReaderEventTypes;->FPR_DIALOG_GOTO_EVENT:Lcom/amazon/kcp/events/ReaderEventTypes;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/amazon/kcp/events/ReaderEventTypes;

    .line 10
    sget-object v10, Lcom/amazon/kcp/events/ReaderEventTypes;->PAGETURN_ABORTED_EVENT:Lcom/amazon/kcp/events/ReaderEventTypes;

    aput-object v10, v9, v1

    sget-object v1, Lcom/amazon/kcp/events/ReaderEventTypes;->PAGETURN_REGULAR_EVENT:Lcom/amazon/kcp/events/ReaderEventTypes;

    aput-object v1, v9, v2

    sget-object v1, Lcom/amazon/kcp/events/ReaderEventTypes;->ADJACENT_PAGES_PRERENDERED_EVENT:Lcom/amazon/kcp/events/ReaderEventTypes;

    aput-object v1, v9, v3

    sget-object v1, Lcom/amazon/kcp/events/ReaderEventTypes;->DOCVIEWER_POSITION_CHANGED_EVENT:Lcom/amazon/kcp/events/ReaderEventTypes;

    aput-object v1, v9, v4

    sget-object v1, Lcom/amazon/kcp/events/ReaderEventTypes;->LOGICAL_POSITION_NAVIGATION_EVENT:Lcom/amazon/kcp/events/ReaderEventTypes;

    aput-object v1, v9, v5

    sget-object v1, Lcom/amazon/kcp/events/ReaderEventTypes;->HIGHLIGHT_SELECTION_EVENT:Lcom/amazon/kcp/events/ReaderEventTypes;

    aput-object v1, v9, v6

    sget-object v1, Lcom/amazon/kcp/events/ReaderEventTypes;->INITIALIZING_GESTURE_HANDLERS_EVENT:Lcom/amazon/kcp/events/ReaderEventTypes;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/amazon/kcp/events/ReaderEventTypes;->$VALUES:[Lcom/amazon/kcp/events/ReaderEventTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/events/ReaderEventTypes;
    .locals 1

    .line 10
    const-class v0, Lcom/amazon/kcp/events/ReaderEventTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/events/ReaderEventTypes;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/events/ReaderEventTypes;
    .locals 1

    .line 10
    sget-object v0, Lcom/amazon/kcp/events/ReaderEventTypes;->$VALUES:[Lcom/amazon/kcp/events/ReaderEventTypes;

    invoke-virtual {v0}, [Lcom/amazon/kcp/events/ReaderEventTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/events/ReaderEventTypes;

    return-object v0
.end method


# virtual methods
.method public getEventType()Lcom/amazon/kindle/event/EventType;
    .locals 3

    .line 59
    new-instance v0, Lcom/amazon/kindle/event/EventType;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/event/EventType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
