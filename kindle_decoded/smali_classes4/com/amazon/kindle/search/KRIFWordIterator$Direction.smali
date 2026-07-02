.class final enum Lcom/amazon/kindle/search/KRIFWordIterator$Direction;
.super Ljava/lang/Enum;
.source "KRIFWordIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/search/KRIFWordIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/search/KRIFWordIterator$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

.field public static final enum BACKWARD:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

.field public static final enum FORWARD:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

.field public static final enum NONE:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 63
    new-instance v0, Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    const/4 v1, 0x0

    const-string v2, "FORWARD"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/search/KRIFWordIterator$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/search/KRIFWordIterator$Direction;->FORWARD:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    .line 64
    new-instance v0, Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    const/4 v2, 0x1

    const-string v3, "BACKWARD"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/search/KRIFWordIterator$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/search/KRIFWordIterator$Direction;->BACKWARD:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    .line 65
    new-instance v0, Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    const/4 v3, 0x2

    const-string v4, "NONE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/search/KRIFWordIterator$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/search/KRIFWordIterator$Direction;->NONE:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    .line 62
    sget-object v5, Lcom/amazon/kindle/search/KRIFWordIterator$Direction;->FORWARD:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/search/KRIFWordIterator$Direction;->BACKWARD:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/search/KRIFWordIterator$Direction;->$VALUES:[Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/search/KRIFWordIterator$Direction;
    .locals 1

    .line 62
    const-class v0, Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/search/KRIFWordIterator$Direction;
    .locals 1

    .line 62
    sget-object v0, Lcom/amazon/kindle/search/KRIFWordIterator$Direction;->$VALUES:[Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    invoke-virtual {v0}, [Lcom/amazon/kindle/search/KRIFWordIterator$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    return-object v0
.end method
