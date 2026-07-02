.class public final enum Lcom/amazon/krf/platform/ViewSettings$ReadingMode;
.super Ljava/lang/Enum;
.source "ViewSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/ViewSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReadingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/krf/platform/ViewSettings$ReadingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

.field public static final enum BOOK_DEFAULT:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

.field public static final enum FIXED:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

.field public static final enum RECAPS:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

.field public static final enum REFLOWABLE:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 138
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    const/4 v1, 0x0

    const-string v2, "BOOK_DEFAULT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;->BOOK_DEFAULT:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    .line 142
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    const/4 v2, 0x1

    const-string v3, "REFLOWABLE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;->REFLOWABLE:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    .line 146
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    const/4 v3, 0x2

    const-string v4, "FIXED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;->FIXED:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    .line 150
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    const/4 v4, 0x3

    const-string v5, "RECAPS"

    invoke-direct {v0, v5, v4}, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;->RECAPS:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    .line 134
    sget-object v6, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;->BOOK_DEFAULT:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;->REFLOWABLE:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;->FIXED:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;->$VALUES:[Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static createFromInt(I)Lcom/amazon/krf/platform/ViewSettings$ReadingMode;
    .locals 1

    if-ltz p0, :cond_1

    .line 152
    invoke-static {}, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;->values()[Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    move-result-object v0

    array-length v0, v0

    if-lt p0, v0, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    invoke-static {}, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;->values()[Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    .line 153
    :cond_1
    :goto_0
    sget-object p0, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;->BOOK_DEFAULT:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/krf/platform/ViewSettings$ReadingMode;
    .locals 1

    .line 134
    const-class v0, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    return-object p0
.end method

.method public static values()[Lcom/amazon/krf/platform/ViewSettings$ReadingMode;
    .locals 1

    .line 134
    sget-object v0, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;->$VALUES:[Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    invoke-virtual {v0}, [Lcom/amazon/krf/platform/ViewSettings$ReadingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    return-object v0
.end method
