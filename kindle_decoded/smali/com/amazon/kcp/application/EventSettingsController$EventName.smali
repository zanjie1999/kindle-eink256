.class public final enum Lcom/amazon/kcp/application/EventSettingsController$EventName;
.super Ljava/lang/Enum;
.source "EventSettingsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/EventSettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/application/EventSettingsController$EventName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/application/EventSettingsController$EventName;

.field public static final enum FIRST_HIGHLIGHT_CREATED_EVENT_AFTER_TUTORIAL:Lcom/amazon/kcp/application/EventSettingsController$EventName;

.field public static final enum FIRST_NOTEBOOK_OPEN_EVENT_AFTER_JIT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

.field public static final enum HAS_RECORDED_TIME_BETWEEN_TUTORIAL_AND_QUICK_HIGHLIGHT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

.field public static final enum LAST_HIGHLIGHT_CREATED_EVENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

.field public static final enum LAST_NOTEBOOK_OPEN_EVENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

.field public static final enum LAST_NOTE_CREATED_EVENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

.field public static final enum LAST_SEARCH_IN_BOOK_EVENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

.field public static final enum NOTEBOOK_JIT_SHOWN_EVENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

.field public static final enum NOTEBOOK_WEBLAB_METRIC_SENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

.field public static final enum QUICK_HIGHLIGHT_TUTORIAL_SHOWN_EVENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

.field public static final enum QUICK_HIGHLIGHT_WEBLAB_METRIC_SENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 23
    new-instance v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;

    const/4 v1, 0x0

    const-string v2, "LAST_HIGHLIGHT_CREATED_EVENT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/application/EventSettingsController$EventName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;->LAST_HIGHLIGHT_CREATED_EVENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    .line 24
    new-instance v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;

    const/4 v2, 0x1

    const-string v3, "LAST_NOTE_CREATED_EVENT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/application/EventSettingsController$EventName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;->LAST_NOTE_CREATED_EVENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    .line 25
    new-instance v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;

    const/4 v3, 0x2

    const-string v4, "LAST_SEARCH_IN_BOOK_EVENT"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/application/EventSettingsController$EventName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;->LAST_SEARCH_IN_BOOK_EVENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    .line 26
    new-instance v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;

    const/4 v4, 0x3

    const-string v5, "LAST_NOTEBOOK_OPEN_EVENT"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kcp/application/EventSettingsController$EventName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;->LAST_NOTEBOOK_OPEN_EVENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    .line 27
    new-instance v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;

    const/4 v5, 0x4

    const-string v6, "FIRST_NOTEBOOK_OPEN_EVENT_AFTER_JIT"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kcp/application/EventSettingsController$EventName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;->FIRST_NOTEBOOK_OPEN_EVENT_AFTER_JIT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    .line 28
    new-instance v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;

    const/4 v6, 0x5

    const-string v7, "NOTEBOOK_JIT_SHOWN_EVENT"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kcp/application/EventSettingsController$EventName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;->NOTEBOOK_JIT_SHOWN_EVENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    .line 29
    new-instance v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;

    const/4 v7, 0x6

    const-string v8, "QUICK_HIGHLIGHT_TUTORIAL_SHOWN_EVENT"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kcp/application/EventSettingsController$EventName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;->QUICK_HIGHLIGHT_TUTORIAL_SHOWN_EVENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    .line 30
    new-instance v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;

    const/4 v8, 0x7

    const-string v9, "FIRST_HIGHLIGHT_CREATED_EVENT_AFTER_TUTORIAL"

    invoke-direct {v0, v9, v8}, Lcom/amazon/kcp/application/EventSettingsController$EventName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;->FIRST_HIGHLIGHT_CREATED_EVENT_AFTER_TUTORIAL:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    .line 31
    new-instance v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;

    const/16 v9, 0x8

    const-string v10, "HAS_RECORDED_TIME_BETWEEN_TUTORIAL_AND_QUICK_HIGHLIGHT"

    invoke-direct {v0, v10, v9}, Lcom/amazon/kcp/application/EventSettingsController$EventName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;->HAS_RECORDED_TIME_BETWEEN_TUTORIAL_AND_QUICK_HIGHLIGHT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    .line 32
    new-instance v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;

    const/16 v10, 0x9

    const-string v11, "QUICK_HIGHLIGHT_WEBLAB_METRIC_SENT"

    invoke-direct {v0, v11, v10}, Lcom/amazon/kcp/application/EventSettingsController$EventName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;->QUICK_HIGHLIGHT_WEBLAB_METRIC_SENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    .line 33
    new-instance v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;

    const/16 v11, 0xa

    const-string v12, "NOTEBOOK_WEBLAB_METRIC_SENT"

    invoke-direct {v0, v12, v11}, Lcom/amazon/kcp/application/EventSettingsController$EventName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;->NOTEBOOK_WEBLAB_METRIC_SENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    const/16 v12, 0xb

    new-array v12, v12, [Lcom/amazon/kcp/application/EventSettingsController$EventName;

    .line 22
    sget-object v13, Lcom/amazon/kcp/application/EventSettingsController$EventName;->LAST_HIGHLIGHT_CREATED_EVENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    aput-object v13, v12, v1

    sget-object v1, Lcom/amazon/kcp/application/EventSettingsController$EventName;->LAST_NOTE_CREATED_EVENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/kcp/application/EventSettingsController$EventName;->LAST_SEARCH_IN_BOOK_EVENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    aput-object v1, v12, v3

    sget-object v1, Lcom/amazon/kcp/application/EventSettingsController$EventName;->LAST_NOTEBOOK_OPEN_EVENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    aput-object v1, v12, v4

    sget-object v1, Lcom/amazon/kcp/application/EventSettingsController$EventName;->FIRST_NOTEBOOK_OPEN_EVENT_AFTER_JIT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    aput-object v1, v12, v5

    sget-object v1, Lcom/amazon/kcp/application/EventSettingsController$EventName;->NOTEBOOK_JIT_SHOWN_EVENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    aput-object v1, v12, v6

    sget-object v1, Lcom/amazon/kcp/application/EventSettingsController$EventName;->QUICK_HIGHLIGHT_TUTORIAL_SHOWN_EVENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    aput-object v1, v12, v7

    sget-object v1, Lcom/amazon/kcp/application/EventSettingsController$EventName;->FIRST_HIGHLIGHT_CREATED_EVENT_AFTER_TUTORIAL:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    aput-object v1, v12, v8

    sget-object v1, Lcom/amazon/kcp/application/EventSettingsController$EventName;->HAS_RECORDED_TIME_BETWEEN_TUTORIAL_AND_QUICK_HIGHLIGHT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    aput-object v1, v12, v9

    sget-object v1, Lcom/amazon/kcp/application/EventSettingsController$EventName;->QUICK_HIGHLIGHT_WEBLAB_METRIC_SENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    aput-object v1, v12, v10

    aput-object v0, v12, v11

    sput-object v12, Lcom/amazon/kcp/application/EventSettingsController$EventName;->$VALUES:[Lcom/amazon/kcp/application/EventSettingsController$EventName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/application/EventSettingsController$EventName;
    .locals 1

    .line 22
    const-class v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/EventSettingsController$EventName;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/application/EventSettingsController$EventName;
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/kcp/application/EventSettingsController$EventName;->$VALUES:[Lcom/amazon/kcp/application/EventSettingsController$EventName;

    invoke-virtual {v0}, [Lcom/amazon/kcp/application/EventSettingsController$EventName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/application/EventSettingsController$EventName;

    return-object v0
.end method
