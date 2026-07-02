.class public final enum Lcom/mobipocket/android/drawing/LanguageSet;
.super Ljava/lang/Enum;
.source "LanguageSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mobipocket/android/drawing/LanguageSet;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mobipocket/android/drawing/LanguageSet;

.field public static final enum ALL:Lcom/mobipocket/android/drawing/LanguageSet;

.field public static final enum ARABIC:Lcom/mobipocket/android/drawing/LanguageSet;

.field public static final enum CN:Lcom/mobipocket/android/drawing/LanguageSet;

.field public static final enum DEVANAGARI:Lcom/mobipocket/android/drawing/LanguageSet;

.field public static final enum GU:Lcom/mobipocket/android/drawing/LanguageSet;

.field public static final enum JA:Lcom/mobipocket/android/drawing/LanguageSet;

.field public static final enum LATIN:Lcom/mobipocket/android/drawing/LanguageSet;

.field public static final enum ML:Lcom/mobipocket/android/drawing/LanguageSet;

.field public static final enum TA:Lcom/mobipocket/android/drawing/LanguageSet;

.field public static final enum TCN:Lcom/mobipocket/android/drawing/LanguageSet;

.field public static final enum TEST:Lcom/mobipocket/android/drawing/LanguageSet;


# instance fields
.field private languages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 8
    new-instance v0, Lcom/mobipocket/android/drawing/LanguageSet;

    new-instance v1, Lcom/mobipocket/android/drawing/LanguageSet$1;

    invoke-direct {v1}, Lcom/mobipocket/android/drawing/LanguageSet$1;-><init>()V

    const/4 v2, 0x0

    const-string v3, "CN"

    invoke-direct {v0, v3, v2, v1}, Lcom/mobipocket/android/drawing/LanguageSet;-><init>(Ljava/lang/String;ILjava/util/HashSet;)V

    sput-object v0, Lcom/mobipocket/android/drawing/LanguageSet;->CN:Lcom/mobipocket/android/drawing/LanguageSet;

    .line 11
    new-instance v0, Lcom/mobipocket/android/drawing/LanguageSet;

    new-instance v1, Lcom/mobipocket/android/drawing/LanguageSet$2;

    invoke-direct {v1}, Lcom/mobipocket/android/drawing/LanguageSet$2;-><init>()V

    const/4 v3, 0x1

    const-string v4, "TCN"

    invoke-direct {v0, v4, v3, v1}, Lcom/mobipocket/android/drawing/LanguageSet;-><init>(Ljava/lang/String;ILjava/util/HashSet;)V

    sput-object v0, Lcom/mobipocket/android/drawing/LanguageSet;->TCN:Lcom/mobipocket/android/drawing/LanguageSet;

    .line 14
    new-instance v0, Lcom/mobipocket/android/drawing/LanguageSet;

    new-instance v1, Lcom/mobipocket/android/drawing/LanguageSet$3;

    invoke-direct {v1}, Lcom/mobipocket/android/drawing/LanguageSet$3;-><init>()V

    const/4 v4, 0x2

    const-string v5, "LATIN"

    invoke-direct {v0, v5, v4, v1}, Lcom/mobipocket/android/drawing/LanguageSet;-><init>(Ljava/lang/String;ILjava/util/HashSet;)V

    sput-object v0, Lcom/mobipocket/android/drawing/LanguageSet;->LATIN:Lcom/mobipocket/android/drawing/LanguageSet;

    .line 51
    new-instance v0, Lcom/mobipocket/android/drawing/LanguageSet;

    new-instance v1, Lcom/mobipocket/android/drawing/LanguageSet$4;

    invoke-direct {v1}, Lcom/mobipocket/android/drawing/LanguageSet$4;-><init>()V

    const/4 v5, 0x3

    const-string v6, "JA"

    invoke-direct {v0, v6, v5, v1}, Lcom/mobipocket/android/drawing/LanguageSet;-><init>(Ljava/lang/String;ILjava/util/HashSet;)V

    sput-object v0, Lcom/mobipocket/android/drawing/LanguageSet;->JA:Lcom/mobipocket/android/drawing/LanguageSet;

    .line 54
    new-instance v0, Lcom/mobipocket/android/drawing/LanguageSet;

    new-instance v1, Lcom/mobipocket/android/drawing/LanguageSet$5;

    invoke-direct {v1}, Lcom/mobipocket/android/drawing/LanguageSet$5;-><init>()V

    const/4 v6, 0x4

    const-string v7, "TEST"

    invoke-direct {v0, v7, v6, v1}, Lcom/mobipocket/android/drawing/LanguageSet;-><init>(Ljava/lang/String;ILjava/util/HashSet;)V

    sput-object v0, Lcom/mobipocket/android/drawing/LanguageSet;->TEST:Lcom/mobipocket/android/drawing/LanguageSet;

    .line 57
    new-instance v0, Lcom/mobipocket/android/drawing/LanguageSet;

    new-instance v1, Lcom/mobipocket/android/drawing/LanguageSet$6;

    invoke-direct {v1}, Lcom/mobipocket/android/drawing/LanguageSet$6;-><init>()V

    const/4 v7, 0x5

    const-string v8, "TA"

    invoke-direct {v0, v8, v7, v1}, Lcom/mobipocket/android/drawing/LanguageSet;-><init>(Ljava/lang/String;ILjava/util/HashSet;)V

    sput-object v0, Lcom/mobipocket/android/drawing/LanguageSet;->TA:Lcom/mobipocket/android/drawing/LanguageSet;

    .line 60
    new-instance v0, Lcom/mobipocket/android/drawing/LanguageSet;

    new-instance v1, Lcom/mobipocket/android/drawing/LanguageSet$7;

    invoke-direct {v1}, Lcom/mobipocket/android/drawing/LanguageSet$7;-><init>()V

    const/4 v8, 0x6

    const-string v9, "ARABIC"

    invoke-direct {v0, v9, v8, v1}, Lcom/mobipocket/android/drawing/LanguageSet;-><init>(Ljava/lang/String;ILjava/util/HashSet;)V

    sput-object v0, Lcom/mobipocket/android/drawing/LanguageSet;->ARABIC:Lcom/mobipocket/android/drawing/LanguageSet;

    .line 63
    new-instance v0, Lcom/mobipocket/android/drawing/LanguageSet;

    new-instance v1, Lcom/mobipocket/android/drawing/LanguageSet$8;

    invoke-direct {v1}, Lcom/mobipocket/android/drawing/LanguageSet$8;-><init>()V

    const/4 v9, 0x7

    const-string v10, "DEVANAGARI"

    invoke-direct {v0, v10, v9, v1}, Lcom/mobipocket/android/drawing/LanguageSet;-><init>(Ljava/lang/String;ILjava/util/HashSet;)V

    sput-object v0, Lcom/mobipocket/android/drawing/LanguageSet;->DEVANAGARI:Lcom/mobipocket/android/drawing/LanguageSet;

    .line 67
    new-instance v0, Lcom/mobipocket/android/drawing/LanguageSet;

    new-instance v1, Lcom/mobipocket/android/drawing/LanguageSet$9;

    invoke-direct {v1}, Lcom/mobipocket/android/drawing/LanguageSet$9;-><init>()V

    const/16 v10, 0x8

    const-string v11, "ML"

    invoke-direct {v0, v11, v10, v1}, Lcom/mobipocket/android/drawing/LanguageSet;-><init>(Ljava/lang/String;ILjava/util/HashSet;)V

    sput-object v0, Lcom/mobipocket/android/drawing/LanguageSet;->ML:Lcom/mobipocket/android/drawing/LanguageSet;

    .line 70
    new-instance v0, Lcom/mobipocket/android/drawing/LanguageSet;

    new-instance v1, Lcom/mobipocket/android/drawing/LanguageSet$10;

    invoke-direct {v1}, Lcom/mobipocket/android/drawing/LanguageSet$10;-><init>()V

    const/16 v11, 0x9

    const-string v12, "GU"

    invoke-direct {v0, v12, v11, v1}, Lcom/mobipocket/android/drawing/LanguageSet;-><init>(Ljava/lang/String;ILjava/util/HashSet;)V

    sput-object v0, Lcom/mobipocket/android/drawing/LanguageSet;->GU:Lcom/mobipocket/android/drawing/LanguageSet;

    .line 73
    new-instance v0, Lcom/mobipocket/android/drawing/LanguageSet;

    const/16 v1, 0xa

    const-string v12, "ALL"

    const/4 v13, 0x0

    invoke-direct {v0, v12, v1, v13}, Lcom/mobipocket/android/drawing/LanguageSet;-><init>(Ljava/lang/String;ILjava/util/HashSet;)V

    sput-object v0, Lcom/mobipocket/android/drawing/LanguageSet;->ALL:Lcom/mobipocket/android/drawing/LanguageSet;

    const/16 v12, 0xb

    new-array v12, v12, [Lcom/mobipocket/android/drawing/LanguageSet;

    .line 7
    sget-object v13, Lcom/mobipocket/android/drawing/LanguageSet;->CN:Lcom/mobipocket/android/drawing/LanguageSet;

    aput-object v13, v12, v2

    sget-object v2, Lcom/mobipocket/android/drawing/LanguageSet;->TCN:Lcom/mobipocket/android/drawing/LanguageSet;

    aput-object v2, v12, v3

    sget-object v2, Lcom/mobipocket/android/drawing/LanguageSet;->LATIN:Lcom/mobipocket/android/drawing/LanguageSet;

    aput-object v2, v12, v4

    sget-object v2, Lcom/mobipocket/android/drawing/LanguageSet;->JA:Lcom/mobipocket/android/drawing/LanguageSet;

    aput-object v2, v12, v5

    sget-object v2, Lcom/mobipocket/android/drawing/LanguageSet;->TEST:Lcom/mobipocket/android/drawing/LanguageSet;

    aput-object v2, v12, v6

    sget-object v2, Lcom/mobipocket/android/drawing/LanguageSet;->TA:Lcom/mobipocket/android/drawing/LanguageSet;

    aput-object v2, v12, v7

    sget-object v2, Lcom/mobipocket/android/drawing/LanguageSet;->ARABIC:Lcom/mobipocket/android/drawing/LanguageSet;

    aput-object v2, v12, v8

    sget-object v2, Lcom/mobipocket/android/drawing/LanguageSet;->DEVANAGARI:Lcom/mobipocket/android/drawing/LanguageSet;

    aput-object v2, v12, v9

    sget-object v2, Lcom/mobipocket/android/drawing/LanguageSet;->ML:Lcom/mobipocket/android/drawing/LanguageSet;

    aput-object v2, v12, v10

    sget-object v2, Lcom/mobipocket/android/drawing/LanguageSet;->GU:Lcom/mobipocket/android/drawing/LanguageSet;

    aput-object v2, v12, v11

    aput-object v0, v12, v1

    sput-object v12, Lcom/mobipocket/android/drawing/LanguageSet;->$VALUES:[Lcom/mobipocket/android/drawing/LanguageSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput-object p3, p0, Lcom/mobipocket/android/drawing/LanguageSet;->languages:Ljava/util/HashSet;

    return-void
.end method

.method public static getSet(Ljava/lang/String;)Lcom/mobipocket/android/drawing/LanguageSet;
    .locals 5

    if-eqz p0, :cond_3

    const-string v0, ""

    .line 92
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 97
    :cond_0
    invoke-static {p0}, Lcom/amazon/kindle/utils/LanguageUtils;->formatLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 98
    invoke-static {}, Lcom/mobipocket/android/drawing/LanguageSet;->values()[Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 99
    invoke-virtual {v3, p0}, Lcom/mobipocket/android/drawing/LanguageSet;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_2
    sget-object p0, Lcom/mobipocket/android/drawing/LanguageSet;->ALL:Lcom/mobipocket/android/drawing/LanguageSet;

    return-object p0

    .line 93
    :cond_3
    :goto_1
    sget-object p0, Lcom/mobipocket/android/drawing/LanguageSet;->LATIN:Lcom/mobipocket/android/drawing/LanguageSet;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mobipocket/android/drawing/LanguageSet;
    .locals 1

    .line 7
    const-class v0, Lcom/mobipocket/android/drawing/LanguageSet;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mobipocket/android/drawing/LanguageSet;

    return-object p0
.end method

.method public static values()[Lcom/mobipocket/android/drawing/LanguageSet;
    .locals 1

    .line 7
    sget-object v0, Lcom/mobipocket/android/drawing/LanguageSet;->$VALUES:[Lcom/mobipocket/android/drawing/LanguageSet;

    invoke-virtual {v0}, [Lcom/mobipocket/android/drawing/LanguageSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mobipocket/android/drawing/LanguageSet;

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1

    .line 108
    sget-object v0, Lcom/mobipocket/android/drawing/LanguageSet;->ALL:Lcom/mobipocket/android/drawing/LanguageSet;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/android/drawing/LanguageSet;->languages:Ljava/util/HashSet;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 115
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getLanguages()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/mobipocket/android/drawing/LanguageSet;->languages:Ljava/util/HashSet;

    return-object v0
.end method
