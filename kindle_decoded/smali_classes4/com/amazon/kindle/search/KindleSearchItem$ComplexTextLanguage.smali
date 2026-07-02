.class final enum Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;
.super Ljava/lang/Enum;
.source "KindleSearchItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/search/KindleSearchItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ComplexTextLanguage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;

.field public static final enum AR:Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;

.field public static final enum GU:Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;

.field public static final enum HI:Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;

.field public static final enum ML:Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;

.field public static final enum MR:Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;

.field public static final enum TA:Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;


# instance fields
.field private language:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 43
    new-instance v0, Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;

    const/4 v1, 0x0

    const-string v2, "TA"

    const-string v3, "ta"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;->TA:Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;

    .line 44
    new-instance v0, Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;

    const/4 v2, 0x1

    const-string v3, "ML"

    const-string v4, "ml"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;->ML:Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;

    .line 45
    new-instance v0, Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;

    const/4 v3, 0x2

    const-string v4, "MR"

    const-string v5, "mr"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;->MR:Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;

    .line 46
    new-instance v0, Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;

    const/4 v4, 0x3

    const-string v5, "GU"

    const-string v6, "gu"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;->GU:Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;

    .line 47
    new-instance v0, Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;

    const/4 v5, 0x4

    const-string v6, "HI"

    const-string v7, "hi"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;->HI:Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;

    .line 48
    new-instance v0, Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;

    const/4 v6, 0x5

    const-string v7, "AR"

    const-string v8, "ar"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;->AR:Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;

    .line 42
    sget-object v8, Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;->TA:Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;->ML:Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;->MR:Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;->GU:Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;->HI:Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;->$VALUES:[Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput-object p3, p0, Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;->language:Ljava/lang/String;

    return-void
.end method

.method public static isComplexTextLanguage(Ljava/lang/String;)Z
    .locals 5

    .line 57
    invoke-static {}, Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;->values()[Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 58
    iget-object v4, v4, Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;->language:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;
    .locals 1

    .line 42
    const-class v0, Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;
    .locals 1

    .line 42
    sget-object v0, Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;->$VALUES:[Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;

    invoke-virtual {v0}, [Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/search/KindleSearchItem$ComplexTextLanguage;

    return-object v0
.end method
