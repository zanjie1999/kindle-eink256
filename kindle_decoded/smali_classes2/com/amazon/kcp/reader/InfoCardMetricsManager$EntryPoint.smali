.class public final enum Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;
.super Ljava/lang/Enum;
.source "InfoCardMetricsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/InfoCardMetricsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EntryPoint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;

.field public static final enum HIGHLIGHT:Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;

.field public static final enum SELECTION_BUTTONS:Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;

.field public static final enum SWIPE:Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 23
    new-instance v0, Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;

    const/4 v1, 0x0

    const-string v2, "HIGHLIGHT"

    const-string v3, "Highlight"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;->HIGHLIGHT:Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;

    .line 24
    new-instance v0, Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;

    const/4 v2, 0x1

    const-string v3, "SELECTION_BUTTONS"

    const-string v4, "SelectionButtons"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;->SELECTION_BUTTONS:Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;

    .line 25
    new-instance v0, Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;

    const/4 v3, 0x2

    const-string v4, "SWIPE"

    const-string v5, "Swipe"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;->SWIPE:Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;

    .line 22
    sget-object v5, Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;->HIGHLIGHT:Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;->SELECTION_BUTTONS:Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;->$VALUES:[Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;

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

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;->id:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;
    .locals 1

    .line 22
    const-class v0, Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;->$VALUES:[Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;

    return-object v0
.end method


# virtual methods
.method getId()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;->id:Ljava/lang/String;

    return-object v0
.end method
