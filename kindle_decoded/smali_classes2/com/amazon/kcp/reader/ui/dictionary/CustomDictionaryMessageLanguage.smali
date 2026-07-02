.class public final enum Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;
.super Ljava/lang/Enum;
.source "CustomDictionaryMessageLanguage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;

.field public static final enum TraditionalChinese:Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;


# instance fields
.field private hasTestDictionaries:Z

.field private language:Ljava/lang/String;

.field private resourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 16
    new-instance v6, Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;

    sget v4, Lcom/amazon/kindle/dcm/R$string;->definition_not_available_traditional_chinese:I

    const-string v1, "TraditionalChinese"

    const/4 v2, 0x0

    const-string/jumbo v3, "zh-hant"

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    sput-object v6, Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;->TraditionalChinese:Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;

    const/4 v1, 0x0

    aput-object v6, v0, v1

    .line 15
    sput-object v0, Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;->$VALUES:[Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;->language:Ljava/lang/String;

    .line 33
    iput p4, p0, Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;->resourceId:I

    .line 34
    iput-boolean p5, p0, Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;->hasTestDictionaries:Z

    return-void
.end method

.method private static getCustomDictionaryMessageLanguage(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;
    .locals 5

    .line 75
    invoke-static {p0}, Lcom/amazon/kindle/utils/LanguageUtils;->formatLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 76
    invoke-static {}, Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;->values()[Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 77
    iget-object v4, v3, Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;->language:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method public static getCustomMessageResourceId(Ljava/lang/String;)I
    .locals 2

    .line 43
    invoke-static {p0}, Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;->getCustomDictionaryMessageLanguage(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 49
    :cond_0
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;->hasTestDictionaries:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->areTestDictionariesEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 52
    :cond_1
    iget p0, p0, Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;->resourceId:I

    return p0
.end method

.method public static hasTestDictionaries(Ljava/lang/String;)Z
    .locals 0

    .line 63
    invoke-static {p0}, Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;->getCustomDictionaryMessageLanguage(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 64
    iget-boolean p0, p0, Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;->hasTestDictionaries:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;->$VALUES:[Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;

    return-object v0
.end method
