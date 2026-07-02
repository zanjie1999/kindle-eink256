.class final enum Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;
.super Ljava/lang/Enum;
.source "InBookStopWordHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LatinLanguageStopWordSets"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;

.field public static final enum DE:Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;

.field public static final enum EN:Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;

.field public static final enum ES:Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;

.field public static final enum FR:Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;

.field public static final enum IT:Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;

.field public static final enum NL:Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;

.field public static final enum PT:Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;


# instance fields
.field private arrayResource:I

.field private locale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 92
    new-instance v0, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;

    sget v1, Lcom/amazon/kindle/krl/R$array;->en_afc_stopwords:I

    const/4 v2, 0x0

    const-string v3, "EN"

    const-string v4, "en"

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;->EN:Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;

    .line 93
    new-instance v0, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;

    sget v1, Lcom/amazon/kindle/krl/R$array;->de_afc_stopwords:I

    const/4 v3, 0x1

    const-string v4, "DE"

    const-string v5, "de"

    invoke-direct {v0, v4, v3, v5, v1}, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;->DE:Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;

    .line 94
    new-instance v0, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;

    sget v1, Lcom/amazon/kindle/krl/R$array;->es_afc_stopwords:I

    const/4 v4, 0x2

    const-string v5, "ES"

    const-string v6, "es"

    invoke-direct {v0, v5, v4, v6, v1}, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;->ES:Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;

    .line 95
    new-instance v0, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;

    sget v1, Lcom/amazon/kindle/krl/R$array;->pt_afc_stopwords:I

    const/4 v5, 0x3

    const-string v6, "PT"

    const-string v7, "pt"

    invoke-direct {v0, v6, v5, v7, v1}, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;->PT:Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;

    .line 96
    new-instance v0, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;

    sget v1, Lcom/amazon/kindle/krl/R$array;->fr_afc_stopwords:I

    const/4 v6, 0x4

    const-string v7, "FR"

    const-string v8, "fr"

    invoke-direct {v0, v7, v6, v8, v1}, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;->FR:Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;

    .line 97
    new-instance v0, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;

    sget v1, Lcom/amazon/kindle/krl/R$array;->it_afc_stopwords:I

    const/4 v7, 0x5

    const-string v8, "IT"

    const-string v9, "it"

    invoke-direct {v0, v8, v7, v9, v1}, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;->IT:Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;

    .line 98
    new-instance v0, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;

    sget v1, Lcom/amazon/kindle/krl/R$array;->nl_afc_stopwords:I

    const/4 v8, 0x6

    const-string v9, "NL"

    const-string v10, "nl"

    invoke-direct {v0, v9, v8, v10, v1}, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;->NL:Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;

    .line 91
    sget-object v9, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;->EN:Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;

    aput-object v9, v1, v2

    sget-object v2, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;->DE:Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;->ES:Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;->PT:Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;

    aput-object v2, v1, v5

    sget-object v2, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;->FR:Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;

    aput-object v2, v1, v6

    sget-object v2, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;->IT:Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;->$VALUES:[Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;

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

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 104
    iput p4, p0, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;->arrayResource:I

    .line 105
    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, p3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;->locale:Ljava/util/Locale;

    return-void
.end method

.method static getLatinStopWordSet(Ljava/lang/String;)Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;
    .locals 5

    .line 124
    invoke-static {p0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    .line 126
    invoke-static {}, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;->values()[Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 127
    iget-object v4, v3, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;
    .locals 1

    .line 91
    const-class v0, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;
    .locals 1

    .line 91
    sget-object v0, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;->$VALUES:[Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;

    invoke-virtual {v0}, [Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;

    return-object v0
.end method


# virtual methods
.method public getArrayResource()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;->arrayResource:I

    return v0
.end method
