.class final enum Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;
.super Ljava/lang/Enum;
.source "DotPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/DotPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "INDICATOR_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;

.field public static final enum RESOURCE:Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;

.field public static final enum SQUARE:Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;


# instance fields
.field id:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 56
    new-instance v0, Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;

    const/4 v1, 0x0

    const-string v2, "SQUARE"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;->SQUARE:Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;

    new-instance v0, Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;

    const/4 v2, 0x1

    const-string v3, "RESOURCE"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;->RESOURCE:Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;

    .line 55
    sget-object v4, Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;->SQUARE:Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;->$VALUES:[Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput p3, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;->id:I

    return-void
.end method

.method static fromId(I)Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;
    .locals 5

    .line 64
    invoke-static {}, Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;->values()[Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 65
    iget v4, v3, Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;->id:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;
    .locals 1

    .line 55
    const-class v0, Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;
    .locals 1

    .line 55
    sget-object v0, Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;->$VALUES:[Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;

    return-object v0
.end method
