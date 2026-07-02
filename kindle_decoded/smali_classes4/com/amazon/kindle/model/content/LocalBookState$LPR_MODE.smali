.class public final enum Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;
.super Ljava/lang/Enum;
.source "LocalBookState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/model/content/LocalBookState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LPR_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;

.field public static final enum IMAGE:Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;

.field public static final enum TEXT:Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;

.field public static final enum UNKNOWN:Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 22
    new-instance v0, Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;->UNKNOWN:Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;

    new-instance v0, Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;

    const/4 v2, 0x1

    const-string v3, "TEXT"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;->TEXT:Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;

    new-instance v0, Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;

    const/4 v3, 0x2

    const-string v4, "IMAGE"

    invoke-direct {v0, v4, v3, v3}, Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;->IMAGE:Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;

    .line 21
    sget-object v5, Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;->UNKNOWN:Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;->TEXT:Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;->$VALUES:[Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;
    .locals 5

    .line 31
    invoke-static {}, Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;->values()[Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 32
    invoke-virtual {v3}, Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_1
    sget-object p0, Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;->UNKNOWN:Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;->$VALUES:[Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;

    invoke-virtual {v0}, [Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;->value:I

    return v0
.end method
