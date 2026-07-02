.class public final enum Lcom/amazon/kindle/dualreadingmode/ReadingMode;
.super Ljava/lang/Enum;
.source "ReadingMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/dualreadingmode/ReadingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/dualreadingmode/ReadingMode;

.field public static final enum BOOK_DEFAULT:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

.field public static final enum FIXED:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

.field public static final enum RECAPS:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

.field public static final enum REFLOWABLE:Lcom/amazon/kindle/dualreadingmode/ReadingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 8
    new-instance v0, Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    const/4 v1, 0x0

    const-string v2, "BOOK_DEFAULT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/dualreadingmode/ReadingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->BOOK_DEFAULT:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    .line 9
    new-instance v0, Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    const/4 v2, 0x1

    const-string v3, "REFLOWABLE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/dualreadingmode/ReadingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->REFLOWABLE:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    .line 10
    new-instance v0, Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    const/4 v3, 0x2

    const-string v4, "FIXED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/dualreadingmode/ReadingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->FIXED:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    .line 11
    new-instance v0, Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    const/4 v4, 0x3

    const-string v5, "RECAPS"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/dualreadingmode/ReadingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->RECAPS:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    .line 7
    sget-object v6, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->BOOK_DEFAULT:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->REFLOWABLE:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->FIXED:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->$VALUES:[Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/dualreadingmode/ReadingMode;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/dualreadingmode/ReadingMode;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->$VALUES:[Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    invoke-virtual {v0}, [Lcom/amazon/kindle/dualreadingmode/ReadingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    return-object v0
.end method
