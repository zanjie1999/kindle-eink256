.class public final enum Lcom/amazon/ea/metrics/BookActions;
.super Ljava/lang/Enum;
.source "BookActions.java"

# interfaces
.implements Lcom/amazon/ea/metrics/WidgetActions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ea/metrics/BookActions;",
        ">;",
        "Lcom/amazon/ea/metrics/WidgetActions;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ea/metrics/BookActions;

.field public static final enum CLICK_ADD_TO_LIBRARY:Lcom/amazon/ea/metrics/BookActions;

.field public static final enum CLICK_BUY:Lcom/amazon/ea/metrics/BookActions;

.field public static final enum CLICK_DOWNLOAD:Lcom/amazon/ea/metrics/BookActions;

.field public static final enum CLICK_READ_FOR_FREE:Lcom/amazon/ea/metrics/BookActions;

.field public static final enum CLICK_READ_FREE_SAMPLE:Lcom/amazon/ea/metrics/BookActions;

.field public static final enum CLICK_READ_NOW:Lcom/amazon/ea/metrics/BookActions;

.field public static final enum CLICK_READ_SAMPLE:Lcom/amazon/ea/metrics/BookActions;


# instance fields
.field private final action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 7
    new-instance v0, Lcom/amazon/ea/metrics/BookActions;

    const/4 v1, 0x0

    const-string v2, "CLICK_BUY"

    const-string v3, "Click.Buy"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/ea/metrics/BookActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/BookActions;->CLICK_BUY:Lcom/amazon/ea/metrics/BookActions;

    .line 8
    new-instance v0, Lcom/amazon/ea/metrics/BookActions;

    const/4 v2, 0x1

    const-string v3, "CLICK_READ_FOR_FREE"

    const-string v4, "Click.ReadForFree"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/ea/metrics/BookActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/BookActions;->CLICK_READ_FOR_FREE:Lcom/amazon/ea/metrics/BookActions;

    .line 9
    new-instance v0, Lcom/amazon/ea/metrics/BookActions;

    const/4 v3, 0x2

    const-string v4, "CLICK_READ_NOW"

    const-string v5, "Click.ReadNow"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/ea/metrics/BookActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/BookActions;->CLICK_READ_NOW:Lcom/amazon/ea/metrics/BookActions;

    .line 10
    new-instance v0, Lcom/amazon/ea/metrics/BookActions;

    const/4 v4, 0x3

    const-string v5, "CLICK_READ_SAMPLE"

    const-string v6, "Click.ReadSample"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/ea/metrics/BookActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/BookActions;->CLICK_READ_SAMPLE:Lcom/amazon/ea/metrics/BookActions;

    .line 11
    new-instance v0, Lcom/amazon/ea/metrics/BookActions;

    const/4 v5, 0x4

    const-string v6, "CLICK_READ_FREE_SAMPLE"

    const-string v7, "Click.ReadFreeSample"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/ea/metrics/BookActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/BookActions;->CLICK_READ_FREE_SAMPLE:Lcom/amazon/ea/metrics/BookActions;

    .line 12
    new-instance v0, Lcom/amazon/ea/metrics/BookActions;

    const/4 v6, 0x5

    const-string v7, "CLICK_DOWNLOAD"

    const-string v8, "Click.Download"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/ea/metrics/BookActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/BookActions;->CLICK_DOWNLOAD:Lcom/amazon/ea/metrics/BookActions;

    .line 13
    new-instance v0, Lcom/amazon/ea/metrics/BookActions;

    const/4 v7, 0x6

    const-string v8, "CLICK_ADD_TO_LIBRARY"

    const-string v9, "Click.AddToLibrary"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/ea/metrics/BookActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/BookActions;->CLICK_ADD_TO_LIBRARY:Lcom/amazon/ea/metrics/BookActions;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/amazon/ea/metrics/BookActions;

    .line 6
    sget-object v9, Lcom/amazon/ea/metrics/BookActions;->CLICK_BUY:Lcom/amazon/ea/metrics/BookActions;

    aput-object v9, v8, v1

    sget-object v1, Lcom/amazon/ea/metrics/BookActions;->CLICK_READ_FOR_FREE:Lcom/amazon/ea/metrics/BookActions;

    aput-object v1, v8, v2

    sget-object v1, Lcom/amazon/ea/metrics/BookActions;->CLICK_READ_NOW:Lcom/amazon/ea/metrics/BookActions;

    aput-object v1, v8, v3

    sget-object v1, Lcom/amazon/ea/metrics/BookActions;->CLICK_READ_SAMPLE:Lcom/amazon/ea/metrics/BookActions;

    aput-object v1, v8, v4

    sget-object v1, Lcom/amazon/ea/metrics/BookActions;->CLICK_READ_FREE_SAMPLE:Lcom/amazon/ea/metrics/BookActions;

    aput-object v1, v8, v5

    sget-object v1, Lcom/amazon/ea/metrics/BookActions;->CLICK_DOWNLOAD:Lcom/amazon/ea/metrics/BookActions;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/amazon/ea/metrics/BookActions;->$VALUES:[Lcom/amazon/ea/metrics/BookActions;

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

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/amazon/ea/metrics/BookActions;->action:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ea/metrics/BookActions;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/ea/metrics/BookActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ea/metrics/BookActions;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ea/metrics/BookActions;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/ea/metrics/BookActions;->$VALUES:[Lcom/amazon/ea/metrics/BookActions;

    invoke-virtual {v0}, [Lcom/amazon/ea/metrics/BookActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ea/metrics/BookActions;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/ea/metrics/BookActions;->action:Ljava/lang/String;

    return-object v0
.end method
