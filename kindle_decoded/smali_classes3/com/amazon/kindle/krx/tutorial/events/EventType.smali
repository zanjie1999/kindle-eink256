.class public final enum Lcom/amazon/kindle/krx/tutorial/events/EventType;
.super Ljava/lang/Enum;
.source "EventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/tutorial/events/EventType;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/tutorial/events/EventType;

.field public static final enum BOOK_OPEN:Lcom/amazon/kindle/krx/tutorial/events/EventType;

.field public static final enum CHROME_OPEN:Lcom/amazon/kindle/krx/tutorial/events/EventType;

.field public static final enum DICTIONARY_DOWNLOAD:Lcom/amazon/kindle/krx/tutorial/events/EventType;

.field public static final enum LIB_SORT:Lcom/amazon/kindle/krx/tutorial/events/EventType;

.field public static final enum SHOW_NEW_FEATURE:Lcom/amazon/kindle/krx/tutorial/events/EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 14
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/events/EventType;

    const/4 v1, 0x0

    const-string v2, "BOOK_OPEN"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/tutorial/events/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/tutorial/events/EventType;->BOOK_OPEN:Lcom/amazon/kindle/krx/tutorial/events/EventType;

    .line 16
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/events/EventType;

    const/4 v2, 0x1

    const-string v3, "SHOW_NEW_FEATURE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/tutorial/events/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/tutorial/events/EventType;->SHOW_NEW_FEATURE:Lcom/amazon/kindle/krx/tutorial/events/EventType;

    .line 19
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/events/EventType;

    const/4 v3, 0x2

    const-string v4, "LIB_SORT"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/tutorial/events/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/tutorial/events/EventType;->LIB_SORT:Lcom/amazon/kindle/krx/tutorial/events/EventType;

    .line 21
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/events/EventType;

    const/4 v4, 0x3

    const-string v5, "DICTIONARY_DOWNLOAD"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/tutorial/events/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/tutorial/events/EventType;->DICTIONARY_DOWNLOAD:Lcom/amazon/kindle/krx/tutorial/events/EventType;

    .line 27
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/events/EventType;

    const/4 v5, 0x4

    const-string v6, "CHROME_OPEN"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/krx/tutorial/events/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/tutorial/events/EventType;->CHROME_OPEN:Lcom/amazon/kindle/krx/tutorial/events/EventType;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/kindle/krx/tutorial/events/EventType;

    .line 10
    sget-object v7, Lcom/amazon/kindle/krx/tutorial/events/EventType;->BOOK_OPEN:Lcom/amazon/kindle/krx/tutorial/events/EventType;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/kindle/krx/tutorial/events/EventType;->SHOW_NEW_FEATURE:Lcom/amazon/kindle/krx/tutorial/events/EventType;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kindle/krx/tutorial/events/EventType;->LIB_SORT:Lcom/amazon/kindle/krx/tutorial/events/EventType;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/kindle/krx/tutorial/events/EventType;->DICTIONARY_DOWNLOAD:Lcom/amazon/kindle/krx/tutorial/events/EventType;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/kindle/krx/tutorial/events/EventType;->$VALUES:[Lcom/amazon/kindle/krx/tutorial/events/EventType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/tutorial/events/EventType;
    .locals 1

    .line 10
    const-class v0, Lcom/amazon/kindle/krx/tutorial/events/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/tutorial/events/EventType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/tutorial/events/EventType;
    .locals 1

    .line 10
    sget-object v0, Lcom/amazon/kindle/krx/tutorial/events/EventType;->$VALUES:[Lcom/amazon/kindle/krx/tutorial/events/EventType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/tutorial/events/EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/tutorial/events/EventType;

    return-object v0
.end method
