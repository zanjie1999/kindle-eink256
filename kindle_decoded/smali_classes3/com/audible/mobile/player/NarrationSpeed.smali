.class public final Lcom/audible/mobile/player/NarrationSpeed;
.super Ljava/lang/Object;
.source "NarrationSpeed.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/player/NarrationSpeed;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOUBLE:Lcom/audible/mobile/player/NarrationSpeed;

.field public static final HALF:Lcom/audible/mobile/player/NarrationSpeed;

.field private static final MAX_NARRATION_SPEED_PERCENTAGE:I = 0x15e

.field private static final MIN_NARRATION_SPEED_PERCENTAGE:I = 0x32

.field public static final NORMAL:Lcom/audible/mobile/player/NarrationSpeed;

.field public static final ONE_AND_A_HALF:Lcom/audible/mobile/player/NarrationSpeed;

.field public static final ONE_AND_A_QUARTER:Lcom/audible/mobile/player/NarrationSpeed;

.field public static final ONE_AND_THREE_QUARTERS:Lcom/audible/mobile/player/NarrationSpeed;

.field public static final THREE_QUARTERS:Lcom/audible/mobile/player/NarrationSpeed;

.field public static final TRIPLE:Lcom/audible/mobile/player/NarrationSpeed;

.field public static final TRIPLE_AND_HALF:Lcom/audible/mobile/player/NarrationSpeed;

.field public static final TWO_AND_HALF:Lcom/audible/mobile/player/NarrationSpeed;

.field private static final VALUES:[Lcom/audible/mobile/player/NarrationSpeed;


# instance fields
.field private final percentage:I

.field private final speedAsFloat:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lcom/audible/mobile/player/NarrationSpeed;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/audible/mobile/player/NarrationSpeed;-><init>(I)V

    sput-object v0, Lcom/audible/mobile/player/NarrationSpeed;->HALF:Lcom/audible/mobile/player/NarrationSpeed;

    .line 23
    new-instance v0, Lcom/audible/mobile/player/NarrationSpeed;

    const/16 v1, 0x4b

    invoke-direct {v0, v1}, Lcom/audible/mobile/player/NarrationSpeed;-><init>(I)V

    sput-object v0, Lcom/audible/mobile/player/NarrationSpeed;->THREE_QUARTERS:Lcom/audible/mobile/player/NarrationSpeed;

    .line 24
    new-instance v0, Lcom/audible/mobile/player/NarrationSpeed;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/audible/mobile/player/NarrationSpeed;-><init>(I)V

    sput-object v0, Lcom/audible/mobile/player/NarrationSpeed;->NORMAL:Lcom/audible/mobile/player/NarrationSpeed;

    .line 25
    new-instance v0, Lcom/audible/mobile/player/NarrationSpeed;

    const/16 v1, 0x7d

    invoke-direct {v0, v1}, Lcom/audible/mobile/player/NarrationSpeed;-><init>(I)V

    sput-object v0, Lcom/audible/mobile/player/NarrationSpeed;->ONE_AND_A_QUARTER:Lcom/audible/mobile/player/NarrationSpeed;

    .line 26
    new-instance v0, Lcom/audible/mobile/player/NarrationSpeed;

    const/16 v1, 0x96

    invoke-direct {v0, v1}, Lcom/audible/mobile/player/NarrationSpeed;-><init>(I)V

    sput-object v0, Lcom/audible/mobile/player/NarrationSpeed;->ONE_AND_A_HALF:Lcom/audible/mobile/player/NarrationSpeed;

    .line 27
    new-instance v0, Lcom/audible/mobile/player/NarrationSpeed;

    const/16 v1, 0xaf

    invoke-direct {v0, v1}, Lcom/audible/mobile/player/NarrationSpeed;-><init>(I)V

    sput-object v0, Lcom/audible/mobile/player/NarrationSpeed;->ONE_AND_THREE_QUARTERS:Lcom/audible/mobile/player/NarrationSpeed;

    .line 28
    new-instance v0, Lcom/audible/mobile/player/NarrationSpeed;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/audible/mobile/player/NarrationSpeed;-><init>(I)V

    sput-object v0, Lcom/audible/mobile/player/NarrationSpeed;->DOUBLE:Lcom/audible/mobile/player/NarrationSpeed;

    .line 29
    new-instance v0, Lcom/audible/mobile/player/NarrationSpeed;

    const/16 v1, 0xfa

    invoke-direct {v0, v1}, Lcom/audible/mobile/player/NarrationSpeed;-><init>(I)V

    sput-object v0, Lcom/audible/mobile/player/NarrationSpeed;->TWO_AND_HALF:Lcom/audible/mobile/player/NarrationSpeed;

    .line 30
    new-instance v0, Lcom/audible/mobile/player/NarrationSpeed;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Lcom/audible/mobile/player/NarrationSpeed;-><init>(I)V

    sput-object v0, Lcom/audible/mobile/player/NarrationSpeed;->TRIPLE:Lcom/audible/mobile/player/NarrationSpeed;

    .line 31
    new-instance v0, Lcom/audible/mobile/player/NarrationSpeed;

    const/16 v1, 0x15e

    invoke-direct {v0, v1}, Lcom/audible/mobile/player/NarrationSpeed;-><init>(I)V

    sput-object v0, Lcom/audible/mobile/player/NarrationSpeed;->TRIPLE_AND_HALF:Lcom/audible/mobile/player/NarrationSpeed;

    .line 33
    new-instance v0, Lcom/audible/mobile/player/NarrationSpeed$1;

    invoke-direct {v0}, Lcom/audible/mobile/player/NarrationSpeed$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/player/NarrationSpeed;->CREATOR:Landroid/os/Parcelable$Creator;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/audible/mobile/player/NarrationSpeed;

    .line 47
    sget-object v1, Lcom/audible/mobile/player/NarrationSpeed;->HALF:Lcom/audible/mobile/player/NarrationSpeed;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/audible/mobile/player/NarrationSpeed;->THREE_QUARTERS:Lcom/audible/mobile/player/NarrationSpeed;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/audible/mobile/player/NarrationSpeed;->NORMAL:Lcom/audible/mobile/player/NarrationSpeed;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/audible/mobile/player/NarrationSpeed;->ONE_AND_A_QUARTER:Lcom/audible/mobile/player/NarrationSpeed;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/audible/mobile/player/NarrationSpeed;->ONE_AND_A_HALF:Lcom/audible/mobile/player/NarrationSpeed;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/audible/mobile/player/NarrationSpeed;->ONE_AND_THREE_QUARTERS:Lcom/audible/mobile/player/NarrationSpeed;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/audible/mobile/player/NarrationSpeed;->DOUBLE:Lcom/audible/mobile/player/NarrationSpeed;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/audible/mobile/player/NarrationSpeed;->TWO_AND_HALF:Lcom/audible/mobile/player/NarrationSpeed;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/audible/mobile/player/NarrationSpeed;->TRIPLE:Lcom/audible/mobile/player/NarrationSpeed;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/audible/mobile/player/NarrationSpeed;->TRIPLE_AND_HALF:Lcom/audible/mobile/player/NarrationSpeed;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/audible/mobile/player/NarrationSpeed;->VALUES:[Lcom/audible/mobile/player/NarrationSpeed;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lcom/audible/mobile/player/NarrationSpeed;->percentage:I

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 63
    iput p1, p0, Lcom/audible/mobile/player/NarrationSpeed;->speedAsFloat:F

    return-void
.end method

.method public static from(F)Lcom/audible/mobile/player/NarrationSpeed;
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p0, p0, v0

    float-to-int p0, p0

    .line 132
    invoke-static {p0}, Lcom/audible/mobile/player/NarrationSpeed;->from(I)Lcom/audible/mobile/player/NarrationSpeed;

    move-result-object p0

    return-object p0
.end method

.method public static from(I)Lcom/audible/mobile/player/NarrationSpeed;
    .locals 5

    .line 106
    sget-object v0, Lcom/audible/mobile/player/NarrationSpeed;->VALUES:[Lcom/audible/mobile/player/NarrationSpeed;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 107
    invoke-virtual {v3}, Lcom/audible/mobile/player/NarrationSpeed;->asPercentage()I

    move-result v4

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x32

    if-gt v0, p0, :cond_2

    const/16 v1, 0x15e

    if-gt p0, v1, :cond_2

    .line 113
    new-instance v0, Lcom/audible/mobile/player/NarrationSpeed;

    invoke-direct {v0, p0}, Lcom/audible/mobile/player/NarrationSpeed;-><init>(I)V

    return-object v0

    :cond_2
    if-le v0, p0, :cond_3

    .line 115
    sget-object p0, Lcom/audible/mobile/player/NarrationSpeed;->HALF:Lcom/audible/mobile/player/NarrationSpeed;

    return-object p0

    .line 117
    :cond_3
    sget-object p0, Lcom/audible/mobile/player/NarrationSpeed;->TRIPLE_AND_HALF:Lcom/audible/mobile/player/NarrationSpeed;

    return-object p0
.end method


# virtual methods
.method public asFloat()F
    .locals 1

    .line 83
    iget v0, p0, Lcom/audible/mobile/player/NarrationSpeed;->speedAsFloat:F

    return v0
.end method

.method public asPercentage()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/audible/mobile/player/NarrationSpeed;->percentage:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 171
    const-class v2, Lcom/audible/mobile/player/NarrationSpeed;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 175
    :cond_1
    check-cast p1, Lcom/audible/mobile/player/NarrationSpeed;

    .line 176
    iget v2, p0, Lcom/audible/mobile/player/NarrationSpeed;->percentage:I

    iget p1, p1, Lcom/audible/mobile/player/NarrationSpeed;->percentage:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 182
    iget v0, p0, Lcom/audible/mobile/player/NarrationSpeed;->percentage:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NarrationSpeed{percentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/audible/mobile/player/NarrationSpeed;->percentage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", speedAsFloat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/audible/mobile/player/NarrationSpeed;->speedAsFloat:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 162
    iget p2, p0, Lcom/audible/mobile/player/NarrationSpeed;->percentage:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
