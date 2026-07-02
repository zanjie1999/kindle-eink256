.class public final Lcom/audible/mobile/player/metadata/SdkBasedAudioMetadataProviderImpl;
.super Ljava/lang/Object;
.source "SdkBasedAudioMetadataProviderImpl.java"

# interfaces
.implements Lcom/audible/mobile/audio/metadata/AudioMetadataProvider;


# instance fields
.field private final chapterMetadataProvider:Lcom/audible/mobile/audio/metadata/ChapterMetadataProvider;

.field private final context:Landroid/content/Context;

.field private final identityManager:Lcom/audible/mobile/identity/IdentityManager;

.field private final metricManager:Lcom/audible/mobile/metric/logger/MetricManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/mobile/metric/logger/MetricManager;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/audible/mobile/player/metadata/SdkBasedAudioMetadataProviderImpl;-><init>(Landroid/content/Context;Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/mobile/metric/logger/MetricManager;Lcom/audible/mobile/audio/metadata/ChapterMetadataProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/mobile/metric/logger/MetricManager;Lcom/audible/mobile/audio/metadata/ChapterMetadataProvider;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Context must not be null"

    .line 78
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/player/metadata/SdkBasedAudioMetadataProviderImpl;->context:Landroid/content/Context;

    const-string p1, "IdentityManager must not be null"

    .line 79
    invoke-static {p2, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/audible/mobile/identity/IdentityManager;

    iput-object p2, p0, Lcom/audible/mobile/player/metadata/SdkBasedAudioMetadataProviderImpl;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    const-string p1, "MetricManager must not be null"

    .line 80
    invoke-static {p3, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lcom/audible/mobile/metric/logger/MetricManager;

    iput-object p3, p0, Lcom/audible/mobile/player/metadata/SdkBasedAudioMetadataProviderImpl;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    .line 81
    iput-object p4, p0, Lcom/audible/mobile/player/metadata/SdkBasedAudioMetadataProviderImpl;->chapterMetadataProvider:Lcom/audible/mobile/audio/metadata/ChapterMetadataProvider;

    return-void
.end method

.method private getAsin(Lcom/audible/sdk/AudibleSDK;Lcom/audible/mobile/domain/Asin;)Lcom/audible/mobile/domain/Asin;
    .locals 1

    .line 217
    sget-object v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_ASIN:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    invoke-virtual {p1, v0}, Lcom/audible/sdk/AudibleSDK;->getMetadata(Lcom/audible/sdk/AudibleSDK$MetadataTag;)Ljava/lang/String;

    move-result-object p1

    .line 218
    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Lcom/audible/mobile/domain/ImmutableAsinImpl;

    invoke-direct {p2, p1}, Lcom/audible/mobile/domain/ImmutableAsinImpl;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object p2
.end method

.method private getChapters(Lcom/audible/sdk/AudibleSDK;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/sdk/AudibleSDK;",
            ")",
            "Ljava/util/List<",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 249
    invoke-virtual {p1}, Lcom/audible/sdk/AudibleSDK;->getChapterCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 252
    new-instance v3, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;

    invoke-virtual {p1, v2}, Lcom/audible/sdk/AudibleSDK;->getChapterStartTime(I)I

    move-result v4

    invoke-direct {v3, v2, v4}, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;-><init>(II)V

    .line 253
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    :cond_0
    sget-object v1, Lcom/audible/mobile/util/ChapterUtils;->INSTANCE:Lcom/audible/mobile/util/ChapterUtils;

    invoke-virtual {p1}, Lcom/audible/sdk/AudibleSDK;->getDuration()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lcom/audible/mobile/util/ChapterUtils;->fixChapterLengthFromStartTime(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getParentProductId(Lcom/audible/sdk/AudibleSDK;)Lcom/audible/mobile/domain/ProductId;
    .locals 1

    .line 235
    sget-object v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_PARENT_PRODUCT_ID:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    invoke-virtual {p1, v0}, Lcom/audible/sdk/AudibleSDK;->getMetadata(Lcom/audible/sdk/AudibleSDK$MetadataTag;)Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/metadata/SdkBasedAudioMetadataProviderImpl;->getProductIdInstance(Ljava/lang/String;)Lcom/audible/mobile/domain/ProductId;

    move-result-object p1

    return-object p1
.end method

.method private getProductId(Lcom/audible/sdk/AudibleSDK;)Lcom/audible/mobile/domain/ProductId;
    .locals 1

    .line 226
    sget-object v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_PRODUCT_ID:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    invoke-virtual {p1, v0}, Lcom/audible/sdk/AudibleSDK;->getMetadata(Lcom/audible/sdk/AudibleSDK$MetadataTag;)Ljava/lang/String;

    move-result-object p1

    .line 227
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/metadata/SdkBasedAudioMetadataProviderImpl;->getProductIdInstance(Ljava/lang/String;)Lcom/audible/mobile/domain/ProductId;

    move-result-object p1

    return-object p1
.end method

.method private getProductIdInstance(Ljava/lang/String;)Lcom/audible/mobile/domain/ProductId;
    .locals 1

    .line 262
    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    sget-object p1, Lcom/audible/mobile/domain/ProductId;->NONE:Lcom/audible/mobile/domain/ProductId;

    return-object p1

    .line 266
    :cond_0
    new-instance v0, Lcom/audible/mobile/domain/ImmutableProductIdImpl;

    invoke-static {p1}, Lcom/audible/sdk/SdkUtils;->stripCodecFromProductId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/audible/mobile/domain/ImmutableProductIdImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getTrackNumber(Lcom/audible/sdk/AudibleSDK;)I
    .locals 1

    .line 241
    sget-object v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_TRACK_NUMBER:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    invoke-virtual {p1, v0}, Lcom/audible/sdk/AudibleSDK;->getMetadata(Lcom/audible/sdk/AudibleSDK$MetadataTag;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/audible/mobile/util/NumberUtils;->toInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private isDECustomer(Lcom/audible/mobile/identity/Marketplace;)Z
    .locals 1

    .line 205
    sget-object v0, Lcom/audible/mobile/identity/Marketplace;->AUDIBLE_DE:Lcom/audible/mobile/identity/Marketplace;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/audible/mobile/identity/Marketplace;->AMAZON_DE:Lcom/audible/mobile/identity/Marketplace;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method build(Lcom/audible/sdk/AudibleSDK;Lcom/audible/mobile/domain/Asin;Ljava/util/List;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/sdk/AudibleSDK;",
            "Lcom/audible/mobile/domain/Asin;",
            "Ljava/util/List<",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            ">;)",
            "Lcom/audible/mobile/audio/metadata/AudiobookMetadata;"
        }
    .end annotation

    .line 137
    new-instance v0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;

    invoke-direct {v0}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;-><init>()V

    .line 139
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/audible/mobile/player/metadata/SdkBasedAudioMetadataProviderImpl;->getAsin(Lcom/audible/sdk/AudibleSDK;Lcom/audible/mobile/domain/Asin;)Lcom/audible/mobile/domain/Asin;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->asin(Lcom/audible/mobile/domain/Asin;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;

    invoke-direct {p0, p1}, Lcom/audible/mobile/player/metadata/SdkBasedAudioMetadataProviderImpl;->getProductId(Lcom/audible/sdk/AudibleSDK;)Lcom/audible/mobile/domain/ProductId;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->productId(Lcom/audible/mobile/domain/ProductId;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;

    invoke-direct {p0, p1}, Lcom/audible/mobile/player/metadata/SdkBasedAudioMetadataProviderImpl;->getParentProductId(Lcom/audible/sdk/AudibleSDK;)Lcom/audible/mobile/domain/ProductId;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->parentProductId(Lcom/audible/mobile/domain/ProductId;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;

    .line 141
    invoke-virtual {p1}, Lcom/audible/sdk/AudibleSDK;->getFileName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 144
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/audible/sdk/AudibleSDK;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->fileName(Landroid/net/Uri;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;

    .line 146
    :cond_0
    sget-object p2, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_AUTHOR:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    invoke-virtual {p1, p2}, Lcom/audible/sdk/AudibleSDK;->getMetadata(Lcom/audible/sdk/AudibleSDK$MetadataTag;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->author(Ljava/lang/String;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;

    sget-object p2, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_NARRATOR:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    invoke-virtual {p1, p2}, Lcom/audible/sdk/AudibleSDK;->getMetadata(Lcom/audible/sdk/AudibleSDK$MetadataTag;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->narrator(Ljava/lang/String;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;

    sget-object p2, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_CATEGORY:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    .line 147
    invoke-virtual {p1, p2}, Lcom/audible/sdk/AudibleSDK;->getMetadata(Lcom/audible/sdk/AudibleSDK$MetadataTag;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->category(Ljava/lang/String;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;

    sget-object p2, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_SUBCATEGORY:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    .line 148
    invoke-virtual {p1, p2}, Lcom/audible/sdk/AudibleSDK;->getMetadata(Lcom/audible/sdk/AudibleSDK$MetadataTag;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->subCategory(Ljava/lang/String;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;

    sget-object p2, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_COPYRIGHT:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    .line 149
    invoke-virtual {p1, p2}, Lcom/audible/sdk/AudibleSDK;->getMetadata(Lcom/audible/sdk/AudibleSDK$MetadataTag;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->copyright(Ljava/lang/String;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;

    sget-object p2, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_LONG_DESCRIPTION:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    .line 150
    invoke-virtual {p1, p2}, Lcom/audible/sdk/AudibleSDK;->getMetadata(Lcom/audible/sdk/AudibleSDK$MetadataTag;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->longDescription(Ljava/lang/String;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;

    sget-object p2, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_SHORT_DESCRIPTION:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    .line 151
    invoke-virtual {p1, p2}, Lcom/audible/sdk/AudibleSDK;->getMetadata(Lcom/audible/sdk/AudibleSDK$MetadataTag;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->shortDescription(Ljava/lang/String;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;

    sget-object p2, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_TITLE:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    .line 152
    invoke-virtual {p1, p2}, Lcom/audible/sdk/AudibleSDK;->getMetadata(Lcom/audible/sdk/AudibleSDK$MetadataTag;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->title(Ljava/lang/String;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;

    sget-object p2, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_SHORT_TITLE:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    invoke-virtual {p1, p2}, Lcom/audible/sdk/AudibleSDK;->getMetadata(Lcom/audible/sdk/AudibleSDK$MetadataTag;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->shortTitle(Ljava/lang/String;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;

    sget-object p2, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_PARENT_TITLE:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    .line 153
    invoke-virtual {p1, p2}, Lcom/audible/sdk/AudibleSDK;->getMetadata(Lcom/audible/sdk/AudibleSDK$MetadataTag;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->parentTitle(Ljava/lang/String;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;

    sget-object p2, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_PARENT_SHORT_TITLE:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    .line 154
    invoke-virtual {p1, p2}, Lcom/audible/sdk/AudibleSDK;->getMetadata(Lcom/audible/sdk/AudibleSDK$MetadataTag;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->parentShortTitle(Ljava/lang/String;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;

    sget-object p2, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_PROVIDER:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    .line 155
    invoke-virtual {p1, p2}, Lcom/audible/sdk/AudibleSDK;->getMetadata(Lcom/audible/sdk/AudibleSDK$MetadataTag;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->provider(Ljava/lang/String;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;

    sget-object p2, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_PUBLISH_DATE:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    .line 156
    invoke-virtual {p1, p2}, Lcom/audible/sdk/AudibleSDK;->getMetadata(Lcom/audible/sdk/AudibleSDK$MetadataTag;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->publishDate(Ljava/lang/String;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;

    invoke-virtual {p1}, Lcom/audible/sdk/AudibleSDK;->getDuration()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->duration(I)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;

    invoke-direct {p0, p1}, Lcom/audible/mobile/player/metadata/SdkBasedAudioMetadataProviderImpl;->getTrackNumber(Lcom/audible/sdk/AudibleSDK;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->trackNumber(I)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;

    if-eqz p3, :cond_1

    .line 157
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/metadata/SdkBasedAudioMetadataProviderImpl;->getChapters(Lcom/audible/sdk/AudibleSDK;)Ljava/util/List;

    move-result-object p3

    :goto_0
    invoke-virtual {v0, p3}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->chapters(Ljava/util/List;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;

    invoke-virtual {p0, p1}, Lcom/audible/mobile/player/metadata/SdkBasedAudioMetadataProviderImpl;->determineQuality(Lcom/audible/sdk/AudibleSDK;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->quality(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;
    :try_end_0
    .catch Lcom/audible/sdk/AudibleSDKException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :catch_0
    invoke-virtual {v0}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->build()Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

    move-result-object p1

    return-object p1
.end method

.method determineQuality(Lcom/audible/sdk/AudibleSDK;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;
    .locals 2

    .line 174
    invoke-virtual {p1}, Lcom/audible/sdk/AudibleSDK;->getFileType()Lcom/audible/sdk/AudibleSDK$FileType;

    move-result-object v0

    .line 176
    sget-object v1, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_AUDIBLE_FORMAT4:Lcom/audible/sdk/AudibleSDK$FileType;

    if-ne v0, v1, :cond_0

    .line 177
    sget-object p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;->STANDARD:Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

    return-object p1

    .line 183
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/audible/sdk/AudibleSDK;->getAvgBitrate()I

    move-result p1
    :try_end_0
    .catch Lcom/audible/sdk/AudibleSDKException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    .line 189
    sget-object p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;->STANDARD:Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

    return-object p1

    .line 192
    :cond_1
    div-int/lit16 p1, p1, 0x3e8

    .line 194
    iget-object v0, p0, Lcom/audible/mobile/player/metadata/SdkBasedAudioMetadataProviderImpl;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    invoke-interface {v0}, Lcom/audible/mobile/identity/IdentityManager;->getCustomerPreferredMarketplace()Lcom/audible/mobile/identity/Marketplace;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/audible/mobile/player/metadata/SdkBasedAudioMetadataProviderImpl;->isDECustomer(Lcom/audible/mobile/identity/Marketplace;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x80

    if-ge p1, v1, :cond_3

    :cond_2
    if-nez v0, :cond_4

    const/16 v0, 0x40

    if-lt p1, v0, :cond_4

    .line 197
    :cond_3
    sget-object p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;->HIGH:Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

    return-object p1

    .line 200
    :cond_4
    sget-object p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;->STANDARD:Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

    return-object p1

    .line 185
    :catch_0
    sget-object p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;->STANDARD:Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

    return-object p1
.end method

.method public get(Lcom/audible/mobile/player/AudioDataSource;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata;
    .locals 8

    .line 87
    new-instance v0, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;

    iget-object v1, p0, Lcom/audible/mobile/player/metadata/SdkBasedAudioMetadataProviderImpl;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-direct {v0, v1}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;-><init>(Lcom/audible/mobile/metric/logger/MetricManager;)V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 92
    :cond_0
    iget-object v2, p0, Lcom/audible/mobile/player/metadata/SdkBasedAudioMetadataProviderImpl;->chapterMetadataProvider:Lcom/audible/mobile/audio/metadata/ChapterMetadataProvider;

    if-eqz v2, :cond_1

    .line 93
    invoke-interface {v2, p1}, Lcom/audible/mobile/framework/Factory1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/SortedSet;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_2

    .line 96
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_2
    move-object v3, v1

    .line 101
    :goto_1
    new-instance v2, Lcom/audible/sdk/MetricRecordingAudibleSDK;

    iget-object v4, p0, Lcom/audible/mobile/player/metadata/SdkBasedAudioMetadataProviderImpl;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-direct {v2, v4}, Lcom/audible/sdk/MetricRecordingAudibleSDK;-><init>(Lcom/audible/mobile/metric/logger/MetricManager;)V

    .line 104
    :try_start_0
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/audible/mobile/util/UriUtils;->uriToFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/audible/sdk/AudibleSDK;->openFile(Ljava/lang/String;)Z

    .line 105
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v4

    invoke-virtual {p0, v2, v4, v3}, Lcom/audible/mobile/player/metadata/SdkBasedAudioMetadataProviderImpl;->build(Lcom/audible/sdk/AudibleSDK;Lcom/audible/mobile/domain/Asin;Ljava/util/List;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

    move-result-object p1
    :try_end_0
    .catch Lcom/audible/sdk/AudibleSDKException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/audible/sdk/UnsupportedFileFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-virtual {v2}, Lcom/audible/sdk/AudibleSDK;->release()V

    return-object p1

    :catchall_0
    move-exception v3

    .line 114
    :try_start_1
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    .line 116
    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "path -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "asin -> "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v5}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->recordOpenFileException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 119
    invoke-virtual {v2}, Lcom/audible/sdk/AudibleSDK;->release()V

    return-object v1

    :catchall_1
    move-exception p1

    invoke-virtual {v2}, Lcom/audible/sdk/AudibleSDK;->release()V

    .line 120
    throw p1

    .line 119
    :catch_0
    invoke-virtual {v2}, Lcom/audible/sdk/AudibleSDK;->release()V

    return-object v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 50
    check-cast p1, Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {p0, p1}, Lcom/audible/mobile/player/metadata/SdkBasedAudioMetadataProviderImpl;->get(Lcom/audible/mobile/player/AudioDataSource;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

    move-result-object p1

    return-object p1
.end method
