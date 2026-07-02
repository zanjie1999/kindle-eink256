.class public final enum Lcom/amazon/kindle/model/content/PrimaryWritingMode;
.super Ljava/lang/Enum;
.source "PrimaryWritingMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/model/content/PrimaryWritingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/model/content/PrimaryWritingMode;

.field public static final enum HORIZONTAL_LEFT_TO_RIGHT:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

.field public static final enum HORIZONTAL_RIGHT_TO_LEFT:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

.field public static final enum VERTICAL_LEFT_TO_RIGHT:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

.field public static final enum VERTICAL_RIGHT_TO_LEFT:Lcom/amazon/kindle/model/content/PrimaryWritingMode;


# instance fields
.field private isHorizontal:Z

.field private krfStringValue:Ljava/lang/String;

.field private readingDirection:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 14
    new-instance v6, Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    sget-object v4, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->LEFT_TO_RIGHT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    const-string v1, "HORIZONTAL_LEFT_TO_RIGHT"

    const/4 v2, 0x0

    const-string v3, "horizontal-lr"

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/model/content/PrimaryWritingMode;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;Z)V

    sput-object v6, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->HORIZONTAL_LEFT_TO_RIGHT:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    .line 15
    new-instance v0, Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    sget-object v11, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->RIGHT_TO_LEFT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    const-string v8, "HORIZONTAL_RIGHT_TO_LEFT"

    const/4 v9, 0x1

    const-string v10, "horizontal-rl"

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kindle/model/content/PrimaryWritingMode;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;Z)V

    sput-object v0, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->HORIZONTAL_RIGHT_TO_LEFT:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    .line 16
    new-instance v0, Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    sget-object v5, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->LEFT_TO_RIGHT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    const-string v2, "VERTICAL_LEFT_TO_RIGHT"

    const/4 v3, 0x2

    const-string v4, "vertical-lr"

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/model/content/PrimaryWritingMode;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;Z)V

    sput-object v0, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->VERTICAL_LEFT_TO_RIGHT:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    .line 17
    new-instance v0, Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    sget-object v11, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->RIGHT_TO_LEFT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    const-string v8, "VERTICAL_RIGHT_TO_LEFT"

    const/4 v9, 0x3

    const-string v10, "vertical-rl"

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kindle/model/content/PrimaryWritingMode;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;Z)V

    sput-object v0, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->VERTICAL_RIGHT_TO_LEFT:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    .line 13
    sget-object v2, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->HORIZONTAL_LEFT_TO_RIGHT:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->HORIZONTAL_RIGHT_TO_LEFT:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->VERTICAL_LEFT_TO_RIGHT:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->$VALUES:[Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;",
            "Z)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-object p3, p0, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->krfStringValue:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->readingDirection:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    .line 27
    iput-boolean p5, p0, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->isHorizontal:Z

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/amazon/kindle/model/content/PrimaryWritingMode;
    .locals 5

    .line 58
    invoke-static {p0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    invoke-static {}, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->values()[Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 60
    iget-object v4, v3, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->krfStringValue:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_1
    sget-object p0, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->HORIZONTAL_LEFT_TO_RIGHT:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/model/content/PrimaryWritingMode;
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/model/content/PrimaryWritingMode;
    .locals 1

    .line 13
    sget-object v0, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->$VALUES:[Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    invoke-virtual {v0}, [Lcom/amazon/kindle/model/content/PrimaryWritingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    return-object v0
.end method


# virtual methods
.method public getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->readingDirection:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    return-object v0
.end method

.method public isHorizontal()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->isHorizontal:Z

    return v0
.end method
