.class public final enum Lcom/amazon/ea/metrics/GoodreadsStatusActions;
.super Ljava/lang/Enum;
.source "GoodreadsStatusActions.java"

# interfaces
.implements Lcom/amazon/ea/metrics/WidgetActions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ea/metrics/GoodreadsStatusActions;",
        ">;",
        "Lcom/amazon/ea/metrics/WidgetActions;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ea/metrics/GoodreadsStatusActions;

.field public static final enum CLICK_SHELF:Lcom/amazon/ea/metrics/GoodreadsStatusActions;

.field public static final enum CLICK_SHELF_CURRENTLY_READING:Lcom/amazon/ea/metrics/GoodreadsStatusActions;

.field public static final enum CLICK_SHELF_READ:Lcom/amazon/ea/metrics/GoodreadsStatusActions;

.field public static final enum CLICK_SHELF_REMOVE:Lcom/amazon/ea/metrics/GoodreadsStatusActions;

.field public static final enum CLICK_SHELF_WANT_TO_READ:Lcom/amazon/ea/metrics/GoodreadsStatusActions;


# instance fields
.field private final action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 11
    new-instance v0, Lcom/amazon/ea/metrics/GoodreadsStatusActions;

    const/4 v1, 0x0

    const-string v2, "CLICK_SHELF"

    const-string v3, "Click.Shelf"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/ea/metrics/GoodreadsStatusActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/GoodreadsStatusActions;->CLICK_SHELF:Lcom/amazon/ea/metrics/GoodreadsStatusActions;

    .line 12
    new-instance v0, Lcom/amazon/ea/metrics/GoodreadsStatusActions;

    const/4 v2, 0x1

    const-string v3, "CLICK_SHELF_WANT_TO_READ"

    const-string v4, "Click.Shelf.WantToRead"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/ea/metrics/GoodreadsStatusActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/GoodreadsStatusActions;->CLICK_SHELF_WANT_TO_READ:Lcom/amazon/ea/metrics/GoodreadsStatusActions;

    .line 13
    new-instance v0, Lcom/amazon/ea/metrics/GoodreadsStatusActions;

    const/4 v3, 0x2

    const-string v4, "CLICK_SHELF_CURRENTLY_READING"

    const-string v5, "Click.Shelf.CurrentlyReading"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/ea/metrics/GoodreadsStatusActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/GoodreadsStatusActions;->CLICK_SHELF_CURRENTLY_READING:Lcom/amazon/ea/metrics/GoodreadsStatusActions;

    .line 14
    new-instance v0, Lcom/amazon/ea/metrics/GoodreadsStatusActions;

    const/4 v4, 0x3

    const-string v5, "CLICK_SHELF_READ"

    const-string v6, "Click.Shelf.Read"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/ea/metrics/GoodreadsStatusActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/GoodreadsStatusActions;->CLICK_SHELF_READ:Lcom/amazon/ea/metrics/GoodreadsStatusActions;

    .line 15
    new-instance v0, Lcom/amazon/ea/metrics/GoodreadsStatusActions;

    const/4 v5, 0x4

    const-string v6, "CLICK_SHELF_REMOVE"

    const-string v7, "Click.Shelf.Remove"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/ea/metrics/GoodreadsStatusActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/GoodreadsStatusActions;->CLICK_SHELF_REMOVE:Lcom/amazon/ea/metrics/GoodreadsStatusActions;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/ea/metrics/GoodreadsStatusActions;

    .line 10
    sget-object v7, Lcom/amazon/ea/metrics/GoodreadsStatusActions;->CLICK_SHELF:Lcom/amazon/ea/metrics/GoodreadsStatusActions;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/ea/metrics/GoodreadsStatusActions;->CLICK_SHELF_WANT_TO_READ:Lcom/amazon/ea/metrics/GoodreadsStatusActions;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/ea/metrics/GoodreadsStatusActions;->CLICK_SHELF_CURRENTLY_READING:Lcom/amazon/ea/metrics/GoodreadsStatusActions;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/ea/metrics/GoodreadsStatusActions;->CLICK_SHELF_READ:Lcom/amazon/ea/metrics/GoodreadsStatusActions;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/ea/metrics/GoodreadsStatusActions;->$VALUES:[Lcom/amazon/ea/metrics/GoodreadsStatusActions;

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

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/amazon/ea/metrics/GoodreadsStatusActions;->action:Ljava/lang/String;

    return-void
.end method

.method public static shelfActionToAction(Ljava/lang/String;)Lcom/amazon/ea/metrics/WidgetActions;
    .locals 4

    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "currently-reading"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "read"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "to-read"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_4

    if-eq p0, v3, :cond_3

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    .line 39
    sget-object p0, Lcom/amazon/ea/metrics/GeneralWidgetActions;->CLICK_EMPTY:Lcom/amazon/ea/metrics/GeneralWidgetActions;

    return-object p0

    .line 37
    :cond_1
    sget-object p0, Lcom/amazon/ea/metrics/GoodreadsStatusActions;->CLICK_SHELF_REMOVE:Lcom/amazon/ea/metrics/GoodreadsStatusActions;

    return-object p0

    .line 35
    :cond_2
    sget-object p0, Lcom/amazon/ea/metrics/GoodreadsStatusActions;->CLICK_SHELF_READ:Lcom/amazon/ea/metrics/GoodreadsStatusActions;

    return-object p0

    .line 33
    :cond_3
    sget-object p0, Lcom/amazon/ea/metrics/GoodreadsStatusActions;->CLICK_SHELF_CURRENTLY_READING:Lcom/amazon/ea/metrics/GoodreadsStatusActions;

    return-object p0

    .line 31
    :cond_4
    sget-object p0, Lcom/amazon/ea/metrics/GoodreadsStatusActions;->CLICK_SHELF_WANT_TO_READ:Lcom/amazon/ea/metrics/GoodreadsStatusActions;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x4793be58 -> :sswitch_3
        0x33af38 -> :sswitch_2
        0x355996 -> :sswitch_1
        0x67cadc85 -> :sswitch_0
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ea/metrics/GoodreadsStatusActions;
    .locals 1

    .line 10
    const-class v0, Lcom/amazon/ea/metrics/GoodreadsStatusActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ea/metrics/GoodreadsStatusActions;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ea/metrics/GoodreadsStatusActions;
    .locals 1

    .line 10
    sget-object v0, Lcom/amazon/ea/metrics/GoodreadsStatusActions;->$VALUES:[Lcom/amazon/ea/metrics/GoodreadsStatusActions;

    invoke-virtual {v0}, [Lcom/amazon/ea/metrics/GoodreadsStatusActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ea/metrics/GoodreadsStatusActions;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/ea/metrics/GoodreadsStatusActions;->action:Ljava/lang/String;

    return-object v0
.end method
