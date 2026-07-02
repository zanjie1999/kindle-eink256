.class public Lcom/amazon/kindle/content/filter/ExcludeDictionariesFilter;
.super Ljava/lang/Object;
.source "ExcludeDictionariesFilter.java"

# interfaces
.implements Lcom/amazon/kindle/content/filter/ContentMetadataFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isFiltered(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 1

    .line 15
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/model/content/DictionaryType;->FREE_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
