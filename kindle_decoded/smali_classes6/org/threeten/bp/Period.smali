.class public final Lorg/threeten/bp/Period;
.super Lorg/threeten/bp/chrono/ChronoPeriod;
.source "Period.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final PATTERN:Ljava/util/regex/Pattern;

.field public static final ZERO:Lorg/threeten/bp/Period;

.field private static final serialVersionUID:J = -0x730df99cdf2a29e5L


# instance fields
.field private final days:I

.field private final months:I

.field private final years:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 98
    new-instance v0, Lorg/threeten/bp/Period;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lorg/threeten/bp/Period;-><init>(III)V

    sput-object v0, Lorg/threeten/bp/Period;->ZERO:Lorg/threeten/bp/Period;

    const-string v0, "([-+]?)P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?"

    const/4 v1, 0x2

    .line 107
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/Period;->PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    .line 361
    invoke-direct {p0}, Lorg/threeten/bp/chrono/ChronoPeriod;-><init>()V

    .line 362
    iput p1, p0, Lorg/threeten/bp/Period;->years:I

    .line 363
    iput p2, p0, Lorg/threeten/bp/Period;->months:I

    .line 364
    iput p3, p0, Lorg/threeten/bp/Period;->days:I

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .line 373
    iget v0, p0, Lorg/threeten/bp/Period;->years:I

    iget v1, p0, Lorg/threeten/bp/Period;->months:I

    or-int/2addr v0, v1

    iget v1, p0, Lorg/threeten/bp/Period;->days:I

    or-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 374
    sget-object v0, Lorg/threeten/bp/Period;->ZERO:Lorg/threeten/bp/Period;

    return-object v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 882
    :cond_0
    instance-of v1, p1, Lorg/threeten/bp/Period;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 883
    check-cast p1, Lorg/threeten/bp/Period;

    .line 884
    iget v1, p0, Lorg/threeten/bp/Period;->years:I

    iget v3, p1, Lorg/threeten/bp/Period;->years:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lorg/threeten/bp/Period;->months:I

    iget v3, p1, Lorg/threeten/bp/Period;->months:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lorg/threeten/bp/Period;->days:I

    iget p1, p1, Lorg/threeten/bp/Period;->days:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 898
    iget v0, p0, Lorg/threeten/bp/Period;->years:I

    iget v1, p0, Lorg/threeten/bp/Period;->months:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/threeten/bp/Period;->days:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 912
    sget-object v0, Lorg/threeten/bp/Period;->ZERO:Lorg/threeten/bp/Period;

    if-ne p0, v0, :cond_0

    const-string v0, "P0D"

    return-object v0

    .line 915
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x50

    .line 916
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 917
    iget v1, p0, Lorg/threeten/bp/Period;->years:I

    if-eqz v1, :cond_1

    .line 918
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 920
    :cond_1
    iget v1, p0, Lorg/threeten/bp/Period;->months:I

    if-eqz v1, :cond_2

    .line 921
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 923
    :cond_2
    iget v1, p0, Lorg/threeten/bp/Period;->days:I

    if-eqz v1, :cond_3

    .line 924
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 926
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
