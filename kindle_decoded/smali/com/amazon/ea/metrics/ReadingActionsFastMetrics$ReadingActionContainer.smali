.class public final enum Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;
.super Ljava/lang/Enum;
.source "ReadingActionsFastMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReadingActionContainer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;

.field public static final enum ABOUT_THIS_BOOK:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;

.field public static final enum ABOUT_THIS_BOOK_BSE:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;

.field public static final enum BEFORE_YOU_GO:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;

.field public static final enum BEFORE_YOU_GO_BSE:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 45
    new-instance v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;

    const/4 v1, 0x0

    const-string v2, "ABOUT_THIS_BOOK"

    const-string v3, "About this book"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;->ABOUT_THIS_BOOK:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;

    .line 46
    new-instance v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;

    const/4 v2, 0x1

    const-string v3, "ABOUT_THIS_BOOK_BSE"

    const-string v4, "About this book BSE"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;->ABOUT_THIS_BOOK_BSE:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;

    .line 47
    new-instance v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;

    const/4 v3, 0x2

    const-string v4, "BEFORE_YOU_GO"

    const-string v5, "Before you go"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;->BEFORE_YOU_GO:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;

    .line 48
    new-instance v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;

    const/4 v4, 0x3

    const-string v5, "BEFORE_YOU_GO_BSE"

    const-string v6, "Before you go BSE"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;->BEFORE_YOU_GO_BSE:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;

    .line 44
    sget-object v6, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;->ABOUT_THIS_BOOK:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;->ABOUT_THIS_BOOK_BSE:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;->BEFORE_YOU_GO:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;->$VALUES:[Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;

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

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput-object p3, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;->text:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;
    .locals 1

    .line 44
    const-class v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;
    .locals 1

    .line 44
    sget-object v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;->$VALUES:[Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;

    invoke-virtual {v0}, [Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;->text:Ljava/lang/String;

    return-object v0
.end method
