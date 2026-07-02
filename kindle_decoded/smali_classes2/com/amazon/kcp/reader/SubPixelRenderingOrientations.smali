.class public final enum Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;
.super Ljava/lang/Enum;
.source "SubPixelRenderingOrientations.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

.field public static final enum HORIZONTAL_BGR:Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

.field public static final enum HORIZONTAL_RGB:Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

.field public static final enum UNKNOWN:Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

.field public static final enum VERTICAL_BGR:Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

.field public static final enum VERTICAL_RGB:Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;


# instance fields
.field orientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 16
    new-instance v0, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "VERTICAL_RGB"

    invoke-direct {v0, v3, v2, v1}, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;->VERTICAL_RGB:Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

    .line 17
    new-instance v0, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

    const/4 v3, 0x3

    const-string v4, "VERTICAL_BGR"

    invoke-direct {v0, v4, v1, v3}, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;->VERTICAL_BGR:Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

    .line 18
    new-instance v0, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

    const/4 v4, 0x2

    const-string v5, "HORIZONTAL_RGB"

    invoke-direct {v0, v5, v4, v2}, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;->HORIZONTAL_RGB:Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

    .line 19
    new-instance v0, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

    const-string v5, "HORIZONTAL_BGR"

    invoke-direct {v0, v5, v3, v4}, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;->HORIZONTAL_BGR:Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

    .line 20
    new-instance v0, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

    const/4 v5, 0x4

    const-string v6, "UNKNOWN"

    invoke-direct {v0, v6, v5, v5}, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;->UNKNOWN:Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

    .line 15
    sget-object v7, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;->VERTICAL_RGB:Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

    aput-object v7, v6, v2

    sget-object v2, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;->VERTICAL_BGR:Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

    aput-object v2, v6, v1

    sget-object v1, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;->HORIZONTAL_RGB:Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

    aput-object v1, v6, v4

    sget-object v1, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;->HORIZONTAL_BGR:Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

    aput-object v1, v6, v3

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;->$VALUES:[Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;->orientation:I

    return-void
.end method

.method public static getSubPixelOrientationValue(IZZ)Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    if-eqz p2, :cond_0

    .line 46
    sget-object p0, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;->HORIZONTAL_RGB:Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;->VERTICAL_RGB:Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

    :goto_0
    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_5

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 50
    sget-object p0, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;->VERTICAL_RGB:Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

    return-object p0

    .line 52
    :cond_2
    sget-object p0, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;->HORIZONTAL_BGR:Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

    return-object p0

    :cond_3
    if-eqz p2, :cond_4

    .line 56
    sget-object p0, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;->VERTICAL_BGR:Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

    return-object p0

    .line 58
    :cond_4
    sget-object p0, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;->HORIZONTAL_RGB:Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

    return-object p0

    .line 62
    :cond_5
    sget-object p0, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;->UNKNOWN:Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;->$VALUES:[Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;->orientation:I

    return v0
.end method
