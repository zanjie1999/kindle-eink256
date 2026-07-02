.class public final enum Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;
.super Ljava/lang/Enum;
.source "HomeWidgetListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/home/card/LibraryCardEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;

.field public static final enum ITEM_CLICKED:Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;

.field public static final enum ITEM_LONG_CLICKED:Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;

.field public static final enum ITEM_LONG_CLICKED_OVERFLOW:Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;

.field public static final enum ITEM_LONG_CLICKED_SHOVELER:Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;

    new-instance v1, Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;

    const/4 v2, 0x0

    const-string v3, "ITEM_CLICKED"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;->ITEM_CLICKED:Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;

    const/4 v2, 0x1

    const-string v3, "ITEM_LONG_CLICKED"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;->ITEM_LONG_CLICKED:Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;

    const/4 v2, 0x2

    const-string v3, "ITEM_LONG_CLICKED_SHOVELER"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;->ITEM_LONG_CLICKED_SHOVELER:Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;

    const/4 v2, 0x3

    const-string v3, "ITEM_LONG_CLICKED_OVERFLOW"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;->ITEM_LONG_CLICKED_OVERFLOW:Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;->$VALUES:[Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;
    .locals 1

    const-class v0, Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;->$VALUES:[Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;

    return-object v0
.end method
