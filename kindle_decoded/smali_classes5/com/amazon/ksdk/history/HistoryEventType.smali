.class public final enum Lcom/amazon/ksdk/history/HistoryEventType;
.super Ljava/lang/Enum;
.source "HistoryEventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ksdk/history/HistoryEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ksdk/history/HistoryEventType;

.field public static final enum ACQUISITION:Lcom/amazon/ksdk/history/HistoryEventType;

.field public static final enum INVALID:Lcom/amazon/ksdk/history/HistoryEventType;

.field public static final enum MARK_AS_READ:Lcom/amazon/ksdk/history/HistoryEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 7
    new-instance v0, Lcom/amazon/ksdk/history/HistoryEventType;

    const/4 v1, 0x0

    const-string v2, "INVALID"

    invoke-direct {v0, v2, v1}, Lcom/amazon/ksdk/history/HistoryEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/history/HistoryEventType;->INVALID:Lcom/amazon/ksdk/history/HistoryEventType;

    .line 8
    new-instance v0, Lcom/amazon/ksdk/history/HistoryEventType;

    const/4 v2, 0x1

    const-string v3, "MARK_AS_READ"

    invoke-direct {v0, v3, v2}, Lcom/amazon/ksdk/history/HistoryEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/history/HistoryEventType;->MARK_AS_READ:Lcom/amazon/ksdk/history/HistoryEventType;

    .line 9
    new-instance v0, Lcom/amazon/ksdk/history/HistoryEventType;

    const/4 v3, 0x2

    const-string v4, "ACQUISITION"

    invoke-direct {v0, v4, v3}, Lcom/amazon/ksdk/history/HistoryEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/history/HistoryEventType;->ACQUISITION:Lcom/amazon/ksdk/history/HistoryEventType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/ksdk/history/HistoryEventType;

    .line 6
    sget-object v5, Lcom/amazon/ksdk/history/HistoryEventType;->INVALID:Lcom/amazon/ksdk/history/HistoryEventType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/ksdk/history/HistoryEventType;->MARK_AS_READ:Lcom/amazon/ksdk/history/HistoryEventType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/ksdk/history/HistoryEventType;->$VALUES:[Lcom/amazon/ksdk/history/HistoryEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ksdk/history/HistoryEventType;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/ksdk/history/HistoryEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ksdk/history/HistoryEventType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ksdk/history/HistoryEventType;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/ksdk/history/HistoryEventType;->$VALUES:[Lcom/amazon/ksdk/history/HistoryEventType;

    invoke-virtual {v0}, [Lcom/amazon/ksdk/history/HistoryEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ksdk/history/HistoryEventType;

    return-object v0
.end method
