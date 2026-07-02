.class final enum Lcom/amazon/kindle/krx/search/SimpleSearchResultView$CustomLanguageLineSpacing;
.super Ljava/lang/Enum;
.source "SimpleSearchResultView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/search/SimpleSearchResultView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CustomLanguageLineSpacing"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/search/SimpleSearchResultView$CustomLanguageLineSpacing;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/search/SimpleSearchResultView$CustomLanguageLineSpacing;

.field public static final enum AR:Lcom/amazon/kindle/krx/search/SimpleSearchResultView$CustomLanguageLineSpacing;

.field public static NO_CUSTOM_LINESPACE:I


# instance fields
.field private langCode:Ljava/lang/String;

.field private lineSpace:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 197
    new-instance v0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView$CustomLanguageLineSpacing;

    sget v1, Lcom/amazon/kindle/krxsdk/R$dimen;->reader_search_extended_body_line_spacing:I

    const/4 v2, 0x0

    const-string v3, "AR"

    const-string v4, "ar"

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/amazon/kindle/krx/search/SimpleSearchResultView$CustomLanguageLineSpacing;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView$CustomLanguageLineSpacing;->AR:Lcom/amazon/kindle/krx/search/SimpleSearchResultView$CustomLanguageLineSpacing;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/amazon/kindle/krx/search/SimpleSearchResultView$CustomLanguageLineSpacing;

    aput-object v0, v1, v2

    .line 196
    sput-object v1, Lcom/amazon/kindle/krx/search/SimpleSearchResultView$CustomLanguageLineSpacing;->$VALUES:[Lcom/amazon/kindle/krx/search/SimpleSearchResultView$CustomLanguageLineSpacing;

    const/4 v0, -0x1

    .line 199
    sput v0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView$CustomLanguageLineSpacing;->NO_CUSTOM_LINESPACE:I

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

    .line 204
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 205
    iput-object p3, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView$CustomLanguageLineSpacing;->langCode:Ljava/lang/String;

    .line 206
    iput p4, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView$CustomLanguageLineSpacing;->lineSpace:I

    return-void
.end method

.method public static getLineSpacingForLanguage(Ljava/lang/String;)I
    .locals 6

    if-nez p0, :cond_0

    .line 218
    sget p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView$CustomLanguageLineSpacing;->NO_CUSTOM_LINESPACE:I

    return p0

    .line 220
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/krx/search/SimpleSearchResultView$CustomLanguageLineSpacing;->values()[Lcom/amazon/kindle/krx/search/SimpleSearchResultView$CustomLanguageLineSpacing;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 221
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/amazon/kindle/krx/search/SimpleSearchResultView$CustomLanguageLineSpacing;->langCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 222
    iget p0, v3, Lcom/amazon/kindle/krx/search/SimpleSearchResultView$CustomLanguageLineSpacing;->lineSpace:I

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    :cond_2
    sget p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView$CustomLanguageLineSpacing;->NO_CUSTOM_LINESPACE:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/search/SimpleSearchResultView$CustomLanguageLineSpacing;
    .locals 1

    .line 196
    const-class v0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView$CustomLanguageLineSpacing;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView$CustomLanguageLineSpacing;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/search/SimpleSearchResultView$CustomLanguageLineSpacing;
    .locals 1

    .line 196
    sget-object v0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView$CustomLanguageLineSpacing;->$VALUES:[Lcom/amazon/kindle/krx/search/SimpleSearchResultView$CustomLanguageLineSpacing;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/search/SimpleSearchResultView$CustomLanguageLineSpacing;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/search/SimpleSearchResultView$CustomLanguageLineSpacing;

    return-object v0
.end method
