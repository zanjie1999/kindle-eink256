.class public final enum Lcom/amazon/kindle/cover/ImageSizes$Type;
.super Ljava/lang/Enum;
.source "ImageSizes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cover/ImageSizes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/cover/ImageSizes$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/cover/ImageSizes$Type;

.field public static final enum EXPLORE:Lcom/amazon/kindle/cover/ImageSizes$Type;

.field public static final enum LARGE:Lcom/amazon/kindle/cover/ImageSizes$Type;

.field public static final enum MEDIUM:Lcom/amazon/kindle/cover/ImageSizes$Type;

.field public static final enum SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;


# instance fields
.field private priority:I

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 32
    new-instance v0, Lcom/amazon/kindle/cover/ImageSizes$Type;

    const/4 v1, 0x0

    const-string v2, "LARGE"

    const-string v3, "large"

    const/16 v4, 0xc8

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/amazon/kindle/cover/ImageSizes$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/cover/ImageSizes$Type;->LARGE:Lcom/amazon/kindle/cover/ImageSizes$Type;

    new-instance v0, Lcom/amazon/kindle/cover/ImageSizes$Type;

    const/4 v2, 0x1

    const-string v3, "MEDIUM"

    const-string v4, "medium"

    const/16 v5, 0x64

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/amazon/kindle/cover/ImageSizes$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/cover/ImageSizes$Type;->MEDIUM:Lcom/amazon/kindle/cover/ImageSizes$Type;

    new-instance v0, Lcom/amazon/kindle/cover/ImageSizes$Type;

    const/4 v3, 0x2

    const-string v4, "SMALL"

    const-string v5, "small"

    invoke-direct {v0, v4, v3, v5, v1}, Lcom/amazon/kindle/cover/ImageSizes$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    new-instance v0, Lcom/amazon/kindle/cover/ImageSizes$Type;

    const/4 v4, 0x3

    const-string v5, "EXPLORE"

    const-string v6, "explore"

    invoke-direct {v0, v5, v4, v6, v1}, Lcom/amazon/kindle/cover/ImageSizes$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/cover/ImageSizes$Type;->EXPLORE:Lcom/amazon/kindle/cover/ImageSizes$Type;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kindle/cover/ImageSizes$Type;

    .line 25
    sget-object v6, Lcom/amazon/kindle/cover/ImageSizes$Type;->LARGE:Lcom/amazon/kindle/cover/ImageSizes$Type;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kindle/cover/ImageSizes$Type;->MEDIUM:Lcom/amazon/kindle/cover/ImageSizes$Type;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kindle/cover/ImageSizes$Type;->$VALUES:[Lcom/amazon/kindle/cover/ImageSizes$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object p3, p0, Lcom/amazon/kindle/cover/ImageSizes$Type;->type:Ljava/lang/String;

    .line 39
    iput p4, p0, Lcom/amazon/kindle/cover/ImageSizes$Type;->priority:I

    return-void
.end method

.method public static getType(Ljava/lang/String;)Lcom/amazon/kindle/cover/ImageSizes$Type;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 82
    :cond_0
    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/cover/ImageSizes$Type;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 84
    :catch_0
    invoke-static {}, Lcom/amazon/kindle/cover/ImageSizes;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageSizes.Type has no constant with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getValuesByPriority()[Lcom/amazon/kindle/cover/ImageSizes$Type;
    .locals 2

    .line 94
    invoke-static {}, Lcom/amazon/kindle/cover/ImageSizes$Type;->values()[Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-result-object v0

    .line 95
    new-instance v1, Lcom/amazon/kindle/cover/ImageSizes$Type$1;

    invoke-direct {v1}, Lcom/amazon/kindle/cover/ImageSizes$Type$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/cover/ImageSizes$Type;
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/cover/ImageSizes$Type;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/cover/ImageSizes$Type;
    .locals 1

    .line 25
    sget-object v0, Lcom/amazon/kindle/cover/ImageSizes$Type;->$VALUES:[Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-virtual {v0}, [Lcom/amazon/kindle/cover/ImageSizes$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/cover/ImageSizes$Type;

    return-object v0
.end method


# virtual methods
.method public getMaximumAllowedSizeToFetch()Lcom/amazon/kindle/cover/ImageSizes$Type;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/amazon/kindle/cover/ImageSizes$Type;->type:Ljava/lang/String;

    sget-object v1, Lcom/amazon/kindle/cover/ImageSizes$Type;->LARGE:Lcom/amazon/kindle/cover/ImageSizes$Type;

    iget-object v1, v1, Lcom/amazon/kindle/cover/ImageSizes$Type;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/cover/ImageSizes$Type;->MEDIUM:Lcom/amazon/kindle/cover/ImageSizes$Type;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kindle/cover/ImageSizes$Type;->LARGE:Lcom/amazon/kindle/cover/ImageSizes$Type;

    :goto_0
    return-object v0

    :cond_1
    return-object p0
.end method

.method public getPriority()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/amazon/kindle/cover/ImageSizes$Type;->priority:I

    return v0
.end method

.method public isSmaller(Lcom/amazon/kindle/cover/ImageSizes$Type;)Z
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/amazon/kindle/cover/ImageSizes$Type;->getPriority()I

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kindle/cover/ImageSizes$Type;->getPriority()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/amazon/kindle/cover/ImageSizes$Type;->getPriority()I

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kindle/cover/ImageSizes$Type;->getPriority()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-le v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/kindle/cover/ImageSizes$Type;->type:Ljava/lang/String;

    return-object v0
.end method
