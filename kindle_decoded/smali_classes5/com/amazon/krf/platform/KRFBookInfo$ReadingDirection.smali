.class public final enum Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;
.super Ljava/lang/Enum;
.source "KRFBookInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/KRFBookInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReadingDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;

.field public static final enum kReadingHorizontalLeftToRight:Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;

.field public static final enum kReadingHorizontalRightToLeft:Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;

.field public static final enum kReadingVerticalLeftToRight:Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;

.field public static final enum kReadingVerticalRightToLeft:Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 21
    new-instance v0, Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;

    const/4 v1, 0x0

    const-string v2, "kReadingVerticalRightToLeft"

    invoke-direct {v0, v2, v1}, Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;->kReadingVerticalRightToLeft:Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;

    .line 22
    new-instance v0, Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;

    const/4 v2, 0x1

    const-string v3, "kReadingVerticalLeftToRight"

    invoke-direct {v0, v3, v2}, Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;->kReadingVerticalLeftToRight:Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;

    .line 23
    new-instance v0, Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;

    const/4 v3, 0x2

    const-string v4, "kReadingHorizontalRightToLeft"

    invoke-direct {v0, v4, v3}, Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;->kReadingHorizontalRightToLeft:Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;

    .line 24
    new-instance v0, Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;

    const/4 v4, 0x3

    const-string v5, "kReadingHorizontalLeftToRight"

    invoke-direct {v0, v5, v4}, Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;->kReadingHorizontalLeftToRight:Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;

    .line 19
    sget-object v6, Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;->kReadingVerticalRightToLeft:Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;->kReadingVerticalLeftToRight:Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;->kReadingHorizontalRightToLeft:Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;->$VALUES:[Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static createFromInt(I)Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;
    .locals 1

    .line 27
    invoke-static {}, Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;->values()[Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;

    return-object p0
.end method

.method public static values()[Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;->$VALUES:[Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;

    invoke-virtual {v0}, [Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;

    return-object v0
.end method
