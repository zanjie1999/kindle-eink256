.class public Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;
.super Lcom/amazon/foundation/internal/DefaultContentHandler;
.source "SyncMetadataContentParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;
    }
.end annotation


# static fields
.field private static final ADD_UPDATE_LIST_NODE:Ljava/lang/String; = "add_update_list"

.field private static final ANNOTATION_SYNC_STATUS_NODE:Ljava/lang/String; = "annotation_sync_status"

.field private static final ASIN_NODE:Ljava/lang/String; = "ASIN"

.field private static final AUTHOR_NAME:Ljava/lang/String; = "authorName"

.field private static final AUTHOR_NODE:Ljava/lang/String; = "author"

.field private static final AUTHOR_PRONUNCIATION:Ljava/lang/String; = "authorPronunciation"

.field private static final BISAC_SUBJECT_DESCRIPTION_CODE_NODE:Ljava/lang/String; = "bisac_subject_description_code"

.field private static final BISAC_SUBJECT_DESCRIPTION_CODE_SUBNODE:Ljava/lang/String; = "code"

.field private static final BOOK_VISIBILITY_ON_DELETE:Ljava/lang/String; = "visibility"

.field private static final BOOK_VISIBILITY_TYPE_ON_DEVICE:Ljava/lang/String; = "OnDevice"

.field private static final CDE_CONTENT_TYPE_NODE:Ljava/lang/String; = "cde_contenttype"

.field private static final CONTENT_LANGUAGE_NODE:Ljava/lang/String; = "content_language"

.field private static final CONTENT_TAGS_NODE:Ljava/lang/String; = "content_tags"

.field private static final CONTENT_TAGS_TAG_NODE:Ljava/lang/String; = "tag"

.field private static final CONTENT_TYPE_NODE:Ljava/lang/String; = "content_type"

.field private static final COVER_FETCH_BATCH_SIZE:I = 0xa

.field private static final DETAIL_PAGE_ASIN_NODE:Ljava/lang/String; = "detailPageAsin"

.field private static final DICTIONARY_DESCRIPTION_NODE:Ljava/lang/String; = "accessibility_description"

.field private static final DICTIONARY_LOCALE_NODE:Ljava/lang/String; = "default_dict_for_locales"

.field private static final DICTIONARY_SHORT_TITLE_NODE:Ljava/lang/String; = "short_item_name"

.field private static final DICTIONARY_SUBLANGUAGE_NODE:Ljava/lang/String; = "target_language"

.field private static final DISPLAY_NAME_NODE:Ljava/lang/String; = "displayName"

.field private static final EXTENSION_NODE:Ljava/lang/String; = "extension"

.field private static final FTUE_ALL_ITEMS_METRIC:Ljava/lang/String; = "FTUE-AllItems"

.field private static final FTUE_FIRST_BATCH_METRIC:Ljava/lang/String; = "FTUE-FirstBatch"

.field private static final FTUE_PARTIAL_METRIC:Ljava/lang/String; = "FTUE-Partial"

.field private static final GROUP_COLLECTION_TYPE_NODE:Ljava/lang/String; = "collectionType"

.field private static final HAS_MORE_NODE:Ljava/lang/String; = "has_more"

.field private static final IMAGE_NODE:Ljava/lang/String; = "image"

.field private static final ITEM_ASIN_NODE:Ljava/lang/String; = "itemAsin"

.field private static final ITEM_BADGE_DETAILS_NODE:Ljava/lang/String; = "item_badge_details"

.field private static final ITEM_TYPE_NODE:Ljava/lang/String; = "itemCollectionType"

.field private static final KINDLE_DICTIONARY:Ljava/lang/String; = "KindleDictionary"

.field private static final METADATA_NODE:Ljava/lang/String; = "meta_data"

.field private static final MIN_SYNC_METADATA_REQUEST_INTERVAL_NODE:Ljava/lang/String; = "min_sync_metadata_request_interval"

.field private static final MIN_TODO_ITEM_REQUEST_INTERVAL_NODE:Ljava/lang/String; = "min_todo_item_request_interval"

.field private static final ORIGIN_ID_NODE:Ljava/lang/String; = "id"

.field private static final ORIGIN_NODE:Ljava/lang/String; = "origin"

.field private static final ORIGIN_TYPE_NODE:Ljava/lang/String; = "type"

.field private static final ORIGIN_TYPE_PURCHASE:Ljava/lang/String; = "Purchase"

.field private static final ORIGIN_TYPE_SINGLE_ISSUE:Ljava/lang/String; = "Single Issue"

.field private static final ORIGIN_TYPE_SUBSCRIPTION:Ljava/lang/String; = "Digital Subscription"

.field private static final PARENT_ASIN_NODE:Ljava/lang/String; = "parent"

.field private static final POSITION_LABEL_NODE:Ljava/lang/String; = "positionLabel"

.field private static final POSITION_LABEL_PREFIX_NODE:Ljava/lang/String; = "positionLabelPrefix"

.field private static final POSITION_NODE:Ljava/lang/String; = "position"

.field private static final PRONUNCIATION_ATTRIBUTE:Ljava/lang/String; = "pronunciation"

.field private static final PUBLICATION_DATE_NODE:Ljava/lang/String; = "publication_date"

.field private static final PUBLISHER_NODE:Ljava/lang/String; = "publisher"

.field private static final PURCHASE_DATE_NODE:Ljava/lang/String; = "purchase_date"

.field private static final REMOVAL_LIST_NODE:Ljava/lang/String; = "removal_list"

.field private static final RESPONSE_NODE:Ljava/lang/String; = "response"

.field private static final SERIES_ADD_UPDATE_LIST_NODE:Ljava/lang/String; = "series_add_update_list"

.field private static final SERIES_AUTHOR_NODE:Ljava/lang/String; = "seriesAuthor"

.field private static final SERIES_ID_NODE:Ljava/lang/String; = "seriesId"

.field private static final SERIES_ITEM_NODE:Ljava/lang/String; = "seriesItem"

.field private static final SERIES_METADATA_NODE:Ljava/lang/String; = "series_meta_data"

.field private static final SERIES_ORDER_TYPE_NODE:Ljava/lang/String; = "collectionOrderType"

.field private static final SERIES_REMOVAL_LIST_NODE:Ljava/lang/String; = "series_removal_list"

.field private static final SERIES_TYPE_NODE:Ljava/lang/String; = "seriesType"

.field private static final SERIES_TYPE_V2_NODE:Ljava/lang/String; = "seriesTypeV2"

.field public static final SKIPPED_COVERS_METADATA:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYNC_TIME_NODE:Ljava/lang/String; = "sync_time"

.field private static final TAG:Ljava/lang/String;

.field private static final TEXTBOOK_TYPE_NODE:Ljava/lang/String; = "textbook_type"

.field private static final TITLE_DETAILS:Ljava/lang/String; = "title_details"

.field private static final TITLE_NODE:Ljava/lang/String; = "title"

.field private static final TITLE_PRONUNCIATION_NODE:Ljava/lang/String; = "titlePronunciation"

.field private static final TOTAL_SIZE_NODE:Ljava/lang/String; = "totalSize"


# instance fields
.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private contentToDeleteOrUpdate:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private coverImageService:Lcom/amazon/kindle/cover/ICoverImageService;

.field private coverSizeToFetch:Lcom/amazon/kindle/cover/ImageSizes$Type;

.field private dateFormatter:Ljava/text/SimpleDateFormat;

.field private dictionaryInfoToAdd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;",
            ">;"
        }
    .end annotation
.end field

.field private dictionaryType:Ljava/lang/StringBuilder;

.field private firstBatch:Z

.field private firstBatchAdded:Z

.field private ftueAsin:Ljava/lang/String;

.field ftueFirstItemAdded:Ljava/lang/Boolean;

.field private groupBuilder:Lcom/amazon/kindle/content/GroupMetadataBuilder;

.field private groupItemBuilder:Lcom/amazon/kindle/content/GroupItemMetadataBuilder;

.field private groupsToAdd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private groupsToRemove:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isRemoval:Z

.field private libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private metadata:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

.field private metadataToAdd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private metadataToDelete:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private model:Lcom/amazon/kcp/library/models/internal/MetaData;

.field private parsingBisacSubjectDescriptionCode:Z

.field private parsingImageNode:Z

.field private parsingOriginNode:Z

.field private parsingParentAsinNode:Z

.field private seriesAuthorBuilder:Lcom/amazon/kindle/content/SeriesAuthorBuilder;

.field private seriesImageDataBuilder:Lcom/amazon/kindle/content/SeriesImageDataBuilder;

.field private syncStage:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-class v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;

    .line 62
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->TAG:Ljava/lang/String;

    .line 141
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->SKIPPED_COVERS_METADATA:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kindle/cover/ICoverImageService;Lcom/amazon/kcp/library/models/internal/ISyncMetadata;)V
    .locals 2

    .line 263
    invoke-direct {p0}, Lcom/amazon/foundation/internal/DefaultContentHandler;-><init>()V

    const/4 p2, 0x0

    .line 146
    iput-object p2, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    .line 148
    new-instance p2, Lcom/amazon/kindle/content/GroupMetadataBuilder;

    invoke-direct {p2}, Lcom/amazon/kindle/content/GroupMetadataBuilder;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupBuilder:Lcom/amazon/kindle/content/GroupMetadataBuilder;

    .line 149
    new-instance p2, Lcom/amazon/kindle/content/GroupItemMetadataBuilder;

    invoke-direct {p2}, Lcom/amazon/kindle/content/GroupItemMetadataBuilder;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupItemBuilder:Lcom/amazon/kindle/content/GroupItemMetadataBuilder;

    .line 150
    new-instance p2, Lcom/amazon/kindle/content/SeriesImageDataBuilder;

    invoke-direct {p2}, Lcom/amazon/kindle/content/SeriesImageDataBuilder;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->seriesImageDataBuilder:Lcom/amazon/kindle/content/SeriesImageDataBuilder;

    .line 151
    new-instance p2, Lcom/amazon/kindle/content/SeriesAuthorBuilder;

    invoke-direct {p2}, Lcom/amazon/kindle/content/SeriesAuthorBuilder;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->seriesAuthorBuilder:Lcom/amazon/kindle/content/SeriesAuthorBuilder;

    .line 153
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->attributes:Ljava/util/Map;

    const/4 p2, 0x0

    .line 156
    iput-boolean p2, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->isRemoval:Z

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->metadataToAdd:Ljava/util/List;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->dictionaryInfoToAdd:Ljava/util/List;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->metadataToDelete:Ljava/util/List;

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->contentToDeleteOrUpdate:Ljava/util/Map;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupsToRemove:Ljava/util/List;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupsToAdd:Ljava/util/List;

    .line 168
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->dateFormatter:Ljava/text/SimpleDateFormat;

    .line 174
    iput-boolean p2, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->firstBatch:Z

    .line 178
    iput-boolean p2, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->parsingParentAsinNode:Z

    .line 182
    iput-boolean p2, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->parsingOriginNode:Z

    .line 188
    iput-boolean p2, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->parsingImageNode:Z

    .line 190
    iput-boolean p2, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->parsingBisacSubjectDescriptionCode:Z

    .line 212
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->ftueFirstItemAdded:Ljava/lang/Boolean;

    .line 254
    iput-boolean p2, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->firstBatchAdded:Z

    .line 264
    iput-object p1, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 265
    iput-object p3, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->coverImageService:Lcom/amazon/kindle/cover/ICoverImageService;

    .line 266
    iput-object p4, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->metadata:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    .line 268
    invoke-interface {p4}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->getSyncTime()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 273
    sget-object p1, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;->PARTIAL_FTUE:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    iput-object p1, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->syncStage:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    goto :goto_0

    .line 274
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object p1

    const-string p3, "ftue_sync_complete"

    invoke-interface {p1, p3}, Lcom/amazon/kindle/persistence/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 283
    sget-object p1, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;->FULL_FTUE:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    iput-object p1, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->syncStage:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    goto :goto_0

    .line 288
    :cond_1
    sget-object p1, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;->NON_FTUE:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    iput-object p1, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->syncStage:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    .line 292
    :goto_0
    invoke-interface {p4, p2}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->setHasMore(Z)V

    .line 296
    sget-object p1, Lcom/amazon/kindle/cover/ImageSizes$Type;->MEDIUM:Lcom/amazon/kindle/cover/ImageSizes$Type;

    iput-object p1, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->coverSizeToFetch:Lcom/amazon/kindle/cover/ImageSizes$Type;

    return-void
.end method

.method private fetchCoverNonBlocking(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;)V"
        }
    .end annotation

    .line 846
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 851
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/ContentMetadata;

    .line 852
    iget-object v2, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->coverImageService:Lcom/amazon/kindle/cover/ICoverImageService;

    iget-object v3, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->coverSizeToFetch:Lcom/amazon/kindle/cover/ImageSizes$Type;

    const/4 v4, 0x0

    invoke-interface {v2, v1, v3, v4}, Lcom/amazon/kindle/cover/ICoverImageService;->getImage(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Z)Ljava/lang/String;

    goto :goto_0

    .line 855
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->syncStage:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    sget-object v1, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;->PARTIAL_FTUE:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->firstBatch:Z

    if-eqz v0, :cond_2

    .line 857
    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    sget-object v1, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;->PARTIAL_FTUE_SYNC:Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/content/ILibraryService;->addContentMetadata(Ljava/util/Collection;Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;)V

    .line 861
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->ftueFirstItemAdded:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 862
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->ftueFirstItemAdded:Ljava/lang/Boolean;

    .line 864
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 865
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->FTUE_ADD_ACCOUNT_TO_FIRST_ITEM_ADDED:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method private fetchCovers(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;)V"
        }
    .end annotation

    .line 809
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 814
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->phase2_ftue_cover_fetching:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 817
    iget-object v1, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->syncStage:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    sget-object v2, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;->PARTIAL_FTUE:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    if-eq v1, v2, :cond_1

    if-nez v0, :cond_1

    return-void

    .line 820
    :cond_1
    iget-boolean v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->firstBatchAdded:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->syncStage:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    sget-object v1, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;->PARTIAL_FTUE:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    if-ne v0, v1, :cond_2

    .line 821
    sget-object v0, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->INSTANCE:Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;

    sget-object v1, Lcom/amazon/kcp/application/PerfMarker;->SMD_FTUE_FIRST_BATCH_PARSE_START:Lcom/amazon/kcp/application/PerfMarker;

    sget-object v2, Lcom/amazon/kcp/application/PerfMarker;->SMD_FTUE_FIRST_BATCH_PARSE_END:Lcom/amazon/kcp/application/PerfMarker;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->stopTimer(Lcom/amazon/kcp/application/PerfMarker;Lcom/amazon/kcp/application/PerfMarker;)V

    .line 822
    sget-object v0, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->INSTANCE:Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;

    sget-object v1, Lcom/amazon/kcp/application/PerfMarker;->SMD_FTUE_FIRST_BATCH_PARSE_END:Lcom/amazon/kcp/application/PerfMarker;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->reportTimeSinceRegistration(Lcom/amazon/kcp/application/PerfMarker;)V

    .line 825
    :cond_2
    invoke-direct {p0, p1}, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->fetchCoverNonBlocking(Ljava/util/List;)V

    .line 827
    iget-boolean p1, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->firstBatchAdded:Z

    const/4 v0, 0x1

    if-nez p1, :cond_3

    .line 828
    sget-object p1, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->TAG:Ljava/lang/String;

    const-string v1, "ftue first batch items added"

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    sget-object p1, Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;->FTUE_FIRST_BATCH_ADDED:Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->fireParseEvent(Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;)V

    .line 830
    iput-boolean v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->firstBatchAdded:Z

    .line 833
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->syncStage:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    sget-object v1, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;->PARTIAL_FTUE:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    if-ne p1, v1, :cond_4

    .line 834
    iget-boolean p1, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->firstBatch:Z

    if-eqz p1, :cond_4

    .line 835
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v1, "FTUE-FirstBatch"

    const-string v2, "SyncMetadataContentParserTimer"

    invoke-virtual {p1, v2, v1, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 838
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->KINDLE_FTUE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-static {p1, v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    return-void
.end method

.method private fireParseEvent(Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;Z)V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    if-nez v0, :cond_0

    .line 310
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    .line 311
    const-class v1, Lcom/amazon/kindle/webservices/SyncMetadataParseEvent;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 314
    :cond_0
    new-instance v0, Lcom/amazon/kindle/webservices/SyncMetadataParseEvent;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kindle/webservices/SyncMetadataParseEvent;-><init>(Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;Z)V

    .line 315
    iget-object p1, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method private updateLibraryService()V
    .locals 4

    .line 730
    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupItemBuilder:Lcom/amazon/kindle/content/GroupItemMetadataBuilder;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/GroupItemMetadataBuilder;->clear()Lcom/amazon/kindle/content/GroupItemMetadataBuilder;

    .line 731
    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupBuilder:Lcom/amazon/kindle/content/GroupMetadataBuilder;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/GroupMetadataBuilder;->clear()Lcom/amazon/kindle/content/GroupMetadataBuilder;

    .line 732
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->metadataToAdd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 735
    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->metadataToDelete:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 736
    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->dictionaryInfoToAdd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 737
    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->contentToDeleteOrUpdate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 738
    iput-boolean v1, p0, Lcom/amazon/foundation/internal/DefaultContentHandler;->hasError:Z

    .line 739
    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupsToAdd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 740
    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupsToRemove:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupsToAdd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 746
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getGroupService()Lcom/amazon/kindle/content/IGroupService;

    move-result-object v0

    .line 747
    iget-object v2, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupsToAdd:Ljava/util/List;

    invoke-interface {v0, v2}, Lcom/amazon/kindle/content/IGroupService;->addGroups(Ljava/util/List;)V

    .line 748
    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupsToAdd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 751
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupsToRemove:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 752
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getGroupService()Lcom/amazon/kindle/content/IGroupService;

    move-result-object v0

    .line 753
    iget-object v2, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupsToRemove:Ljava/util/List;

    invoke-interface {v0, v2}, Lcom/amazon/kindle/content/IGroupService;->deleteGroups(Ljava/util/List;)V

    .line 754
    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupsToRemove:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 757
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->metadataToAdd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 758
    sget-object v0, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;->UNSPECIFIED:Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    .line 759
    iget-object v2, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->dictionaryInfoToAdd:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 761
    iget-object v2, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    iget-object v3, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->dictionaryInfoToAdd:Ljava/util/List;

    invoke-interface {v2, v3}, Lcom/amazon/kindle/content/ILibraryService;->insertDictionaryInfoToTable(Ljava/util/List;)V

    .line 762
    iget-object v2, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->dictionaryInfoToAdd:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 764
    :cond_3
    iget-object v2, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->syncStage:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    sget-object v3, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;->PARTIAL_FTUE:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    if-ne v2, v3, :cond_5

    .line 765
    sget-object v0, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;->PARTIAL_FTUE_SYNC:Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    .line 766
    iget-boolean v2, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->firstBatch:Z

    if-eqz v2, :cond_6

    .line 768
    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->metadataToAdd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 769
    sget-object v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->TAG:Ljava/lang/String;

    const-string v2, "PARTIAL_FTUE end"

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 770
    iput-boolean v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->firstBatch:Z

    .line 772
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 773
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->FTUE_SMD_FIRST_RESPONSE_TO_FIRST_BATCH_COMPLETE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    return-void

    .line 778
    :cond_5
    sget-object v1, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;->FULL_FTUE:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    if-ne v2, v1, :cond_6

    .line 779
    sget-object v0, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;->FULL_FTUE_SYNC:Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    .line 782
    :cond_6
    iget-object v1, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    iget-object v2, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->metadataToAdd:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/content/ILibraryService;->addContentMetadata(Ljava/util/Collection;Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;)V

    .line 784
    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->metadataToAdd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 786
    sget-object v0, Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;->METADATA_PARSE_BATCH_ADD:Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->fireParseEvent(Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;)V

    .line 789
    :cond_7
    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->contentToDeleteOrUpdate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 790
    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    iget-object v1, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->contentToDeleteOrUpdate:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/content/ILibraryService;->deleteOrUpdateMetadata(Ljava/util/Map;Ljava/lang/String;)V

    .line 792
    :cond_8
    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->metadataToDelete:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 793
    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    iget-object v1, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->metadataToDelete:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/content/ILibraryService;->revokeItemsFromSyncMetadata(Ljava/util/Collection;)V

    .line 795
    :cond_9
    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->contentToDeleteOrUpdate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->metadataToDelete:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 796
    :cond_a
    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->contentToDeleteOrUpdate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 797
    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->metadataToDelete:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 798
    sget-object v0, Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;->METADATA_PARSE_BATCH_DELETE:Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->fireParseEvent(Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;)V

    :cond_b
    return-void
.end method


# virtual methods
.method protected fireParseEvent(Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;)V
    .locals 1

    const/4 v0, 0x0

    .line 305
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->fireParseEvent(Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;Z)V

    return-void
.end method

.method public onElementEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "response"

    .line 321
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->onResponseElementEnd()V

    goto/16 :goto_6

    :cond_0
    const-string v3, "meta_data"

    .line 325
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_c

    .line 326
    iget-boolean v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->isRemoval:Z

    if-eqz v1, :cond_3

    .line 330
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/internal/MetaData;->isSample()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/internal/MetaData;->shouldDeleteLocalBookOnOwnershipRevoke()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 333
    :cond_1
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->metadataToDelete:Ljava/util/List;

    iget-object v2, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 331
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->contentToDeleteOrUpdate:Ljava/util/Map;

    iget-object v2, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/models/internal/MetaData;->shouldDeleteLocalBookOnOwnershipRevoke()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 336
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 339
    :try_start_0
    iget-object v3, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->dateFormatter:Ljava/text/SimpleDateFormat;

    iget-object v5, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    .line 340
    invoke-virtual {v5}, Lcom/amazon/kcp/library/models/internal/MetaData;->getPublicationDate()Ljava/lang/String;

    move-result-object v5

    .line 339
    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 340
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-wide v12, v1

    .line 344
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/internal/MetaData;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    if-eq v1, v2, :cond_b

    .line 346
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/internal/MetaData;->getPurchaseDate()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v3, v1, v5

    if-lez v3, :cond_4

    .line 347
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/internal/MetaData;->getPurchaseDate()J

    move-result-wide v1

    :goto_1
    move-wide/from16 v16, v1

    goto :goto_2

    .line 350
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    cmp-long v3, v12, v1

    if-lez v3, :cond_5

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    goto :goto_1

    :cond_5
    move-wide/from16 v16, v12

    .line 354
    :goto_2
    new-instance v1, Lcom/amazon/kindle/content/ContentMetadata;

    iget-object v2, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    .line 355
    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    .line 356
    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v7

    iget-object v2, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    .line 357
    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->getContentType()Ljava/lang/String;

    move-result-object v8

    iget-object v2, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    .line 358
    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->getTitle()Ljava/lang/String;

    move-result-object v9

    iget-object v2, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    .line 359
    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->getAuthor()Ljava/lang/String;

    move-result-object v10

    iget-object v2, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    .line 360
    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->getPublishers()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v2, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    .line 362
    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->getLanguage()Ljava/lang/String;

    move-result-object v14

    iget-object v2, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 363
    invoke-interface {v2}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v15

    const-wide/16 v18, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v19}, Lcom/amazon/kindle/content/ContentMetadata;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JJ)V

    .line 368
    iget-object v2, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/model/content/DictionaryType;->FREE_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    if-eq v2, v3, :cond_6

    iget-object v2, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->getOriginType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KindleDictionary"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 369
    :cond_6
    new-instance v2, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;

    iget-object v3, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/models/internal/MetaData;->getAsin()Ljava/lang/String;

    move-result-object v6

    iget-object v3, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/models/internal/MetaData;->getLanguage()Ljava/lang/String;

    move-result-object v7

    iget-object v3, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    .line 370
    invoke-virtual {v3}, Lcom/amazon/kcp/library/models/internal/MetaData;->getDictionarySubLanguage()Ljava/lang/String;

    move-result-object v8

    iget-object v3, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/models/internal/MetaData;->getDictionaryLocale()Ljava/util/List;

    move-result-object v9

    iget-object v3, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/models/internal/MetaData;->getDictionaryShortTitle()Ljava/lang/String;

    move-result-object v10

    iget-object v3, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/models/internal/MetaData;->getTitle()Ljava/lang/String;

    move-result-object v11

    iget-object v3, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    .line 371
    invoke-virtual {v3}, Lcom/amazon/kcp/library/models/internal/MetaData;->getDictionaryDescription()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v13}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 372
    iget-object v3, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->dictionaryInfoToAdd:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    :cond_7
    iget-object v2, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->getParentAsin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/ContentMetadata;->setParentAsin(Ljava/lang/String;)V

    .line 375
    iget-object v2, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->getOriginType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/ContentMetadata;->setOriginType(Ljava/lang/String;)V

    .line 378
    iget-object v2, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->getOriginType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Purchase"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->getOriginType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Single Issue"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    .line 379
    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->getOriginType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Digital Subscription"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    iget-object v2, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->syncStage:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    sget-object v3, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;->NON_FTUE:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kindle/content/ContentMetadata;->setDeliveryDate(J)V

    .line 382
    :cond_9
    iget-object v2, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->getShareOriginId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/ContentMetadata;->setShareOriginId(Ljava/lang/String;)V

    .line 383
    iget-object v2, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->getTitlePronunciation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/ContentMetadata;->setTitlePronunciation(Ljava/lang/String;)V

    .line 384
    iget-object v2, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->getAuthorPronunciation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/ContentMetadata;->setAuthorPronunciation(Ljava/lang/String;)V

    .line 385
    iget-object v2, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->isMultimediaEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/ContentMetadata;->setHasMutlimediaContent(Z)V

    .line 386
    iget-object v2, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->getContentTags()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/ContentMetadata;->setContentTags(Ljava/lang/String;)V

    .line 387
    iget-object v2, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->getTitleDetailsJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/ContentMetadata;->setTitleDetailsJson(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getIsFalkorEpisode()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 389
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getIsFreeFalkorContent()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 390
    invoke-static {}, Lcom/amazon/kcp/util/FalkorUtils;->isFalkorAddToLibraryEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 391
    invoke-virtual {v1, v4}, Lcom/amazon/kindle/content/ContentMetadata;->setIsHidden(Z)V

    .line 394
    :cond_a
    iget-object v2, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->getExtendedMetadata()Lcom/amazon/kindle/content/ExtendedMetadataWrapper;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/ContentMetadata;->setExtendedMetadata(Lcom/amazon/kindle/content/ExtendedMetadataWrapper;)V

    .line 395
    iget-object v2, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->metadataToAdd:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_3
    const/4 v1, 0x0

    .line 399
    iput-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->onMetadataElementEnd()V

    goto/16 :goto_6

    :cond_c
    const-string v3, "sync_time"

    .line 401
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 402
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->metadata:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    invoke-interface {v1, v2}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->setSyncTime(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_d
    const-string v3, "parent"

    .line 403
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_e

    .line 404
    iput-boolean v5, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->parsingParentAsinNode:Z

    goto/16 :goto_6

    :cond_e
    const-string v3, "ASIN"

    .line 405
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 406
    iget-boolean v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->parsingParentAsinNode:Z

    if-eqz v1, :cond_f

    .line 407
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->setParentAsin(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 409
    :cond_f
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->setAsin(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_10
    const-string v3, "title"

    .line 411
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, "pronunciation"

    if-eqz v3, :cond_11

    .line 412
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->setTitle(Ljava/lang/String;)V

    .line 414
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->attributes:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 415
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4b

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4b

    .line 416
    iget-object v2, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v2, v1}, Lcom/amazon/kcp/library/models/internal/MetaData;->setTitlePronunciation(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_11
    const-string v3, "author"

    .line 418
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 419
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->attributes:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 420
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 421
    iget-object v3, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v3, v2, v1}, Lcom/amazon/kcp/library/models/internal/MetaData;->addAuthor(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 423
    :cond_12
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->addAuthor(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_13
    const-string v3, "publisher"

    .line 425
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 426
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->addPublisher(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_14
    const-string v3, "content_language"

    .line 427
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 428
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->setLanguage(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_15
    const-string v3, "target_language"

    .line 429
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 430
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->setDictionarySubLanguage(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_16
    const-string v3, "short_item_name"

    .line 431
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 432
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->setDictionaryShortTitle(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_17
    const-string v3, "default_dict_for_locales"

    .line 433
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, ","

    if-eqz v3, :cond_19

    .line 434
    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 435
    array-length v2, v1

    if-lez v2, :cond_4b

    .line 436
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 437
    :goto_4
    array-length v3, v1

    if-ge v5, v3, :cond_18

    .line 438
    aget-object v3, v1, v5

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 440
    :cond_18
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->setDictionaryLocale(Ljava/util/List;)V

    goto/16 :goto_6

    :cond_19
    const-string v3, "accessibility_description"

    .line 442
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 443
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->setDictionaryDescription(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1a
    const-string v3, "cde_contenttype"

    .line 444
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 445
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->setCdeContentType(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1b
    const-string v3, "visibility"

    .line 446
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const-string v1, "OnDevice"

    .line 449
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 450
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v1, v5}, Lcom/amazon/kcp/library/models/internal/MetaData;->setDeleteLocalBookOnOwnershipRevoke(Z)V

    goto/16 :goto_6

    :cond_1c
    const-string v3, "content_type"

    .line 452
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 453
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->setContentType(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1d
    const-string v3, "publication_date"

    .line 454
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 455
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->setPublicationDate(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1e
    const-string v3, "min_todo_item_request_interval"

    .line 456
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 458
    :try_start_1
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->metadata:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->setMinTodoItemRequestInterval(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_6

    .line 460
    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to parse the min_todo_item_request_interval from the sync meta data. Expected an integer, received: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_6

    :cond_1f
    const-string v3, "min_sync_metadata_request_interval"

    .line 464
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 466
    :try_start_2
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->metadata:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->setMinSyncMetadataRequestInterval(I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_6

    .line 468
    :catch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to parse the min_sync_metadata_request_interval from the sync meta data. Expected an integer, received: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_6

    :cond_20
    const-string v3, "annotation_sync_status"

    .line 472
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 474
    :try_start_3
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->metadata:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->setAnnotationSyncStatus(I)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_6

    .line 476
    :catch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to parse the annotation sync status code from the sync meta data. Expected an integer, received: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_6

    :cond_21
    const-string v3, "purchase_date"

    .line 480
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    :try_start_4
    const-string v1, "-1"

    .line 482
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 485
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 486
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 487
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v1, v3, v4}, Lcom/amazon/kcp/library/models/internal/MetaData;->setPurchaseDate(J)V
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_6

    .line 490
    :catch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to parse the purchase date from the sync meta data. Expected format: \"yyyy-MM-dd\'T\'HH:mm:ssZ\", received date: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_6

    :cond_22
    const-string v3, "has_more"

    .line 494
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 495
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->metadata:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->setHasMore(Z)V

    goto/16 :goto_6

    :cond_23
    const-string v3, "is_multimedia_enabled"

    .line 496
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 497
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->setMultimediaEnabled(Z)V

    goto/16 :goto_6

    :cond_24
    const-string v3, "tag"

    .line 498
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 499
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->dictionaryType:Ljava/lang/StringBuilder;

    if-nez v1, :cond_25

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->dictionaryType:Ljava/lang/StringBuilder;

    .line 502
    :cond_25
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->dictionaryType:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->dictionaryType:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    iget-object v2, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->dictionaryType:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->setContentTags(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_26
    const-string v3, "content_tags"

    .line 505
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->dictionaryType:Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_27
    const-string v3, "origin"

    .line 507
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 508
    iput-boolean v5, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->parsingOriginNode:Z

    goto/16 :goto_6

    :cond_28
    const-string v3, "type"

    .line 509
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, "Sharing"

    if-eqz v3, :cond_2a

    .line 514
    iget-boolean v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->parsingOriginNode:Z

    if-eqz v1, :cond_29

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 515
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->setOriginType(Ljava/lang/String;)V

    .line 516
    iput-boolean v5, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->parsingOriginNode:Z

    .line 518
    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/models/internal/MetaData;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " origin_type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_6

    :cond_2a
    const-string v3, "id"

    .line 519
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 520
    iget-boolean v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->parsingOriginNode:Z

    if-eqz v1, :cond_2c

    .line 522
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/internal/MetaData;->getOriginType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 523
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v1, v6}, Lcom/amazon/kcp/library/models/internal/MetaData;->setOriginType(Ljava/lang/String;)V

    .line 525
    :cond_2b
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->setShareOriginId(Ljava/lang/String;)V

    .line 526
    iput-boolean v5, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->parsingOriginNode:Z

    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/models/internal/MetaData;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " origin_id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_6

    .line 528
    :cond_2c
    iget-boolean v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->parsingImageNode:Z

    if-eqz v1, :cond_2d

    .line 529
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->seriesImageDataBuilder:Lcom/amazon/kindle/content/SeriesImageDataBuilder;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/SeriesImageDataBuilder;->setId(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 531
    :cond_2d
    sget-object v1, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parsing id node outside of accepted nodes: id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_2e
    const-string v3, "textbook_type"

    .line 533
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 534
    iget-object v3, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/models/internal/MetaData;->getExtendedMetadata()Lcom/amazon/kindle/content/ExtendedMetadataWrapper;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/amazon/kindle/content/ExtendedMetadataWrapper;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_2f
    const-string v3, "item_badge_details"

    .line 535
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 536
    iget-object v3, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/models/internal/MetaData;->getExtendedMetadata()Lcom/amazon/kindle/content/ExtendedMetadataWrapper;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/amazon/kindle/content/ExtendedMetadataWrapper;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_30
    const-string v3, "bisac_subject_description_code"

    .line 537
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 538
    iput-boolean v5, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->parsingBisacSubjectDescriptionCode:Z

    goto/16 :goto_6

    :cond_31
    const-string v6, "code"

    .line 539
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 540
    iget-boolean v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->parsingBisacSubjectDescriptionCode:Z

    if-eqz v1, :cond_4b

    .line 541
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/internal/MetaData;->getExtendedMetadata()Lcom/amazon/kindle/content/ExtendedMetadataWrapper;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lcom/amazon/kindle/content/ExtendedMetadataWrapper;->appendString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_32
    const-string v3, "seriesId"

    .line 543
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 544
    iget-boolean v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->isRemoval:Z

    if-eqz v1, :cond_33

    .line 545
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupsToRemove:Ljava/util/List;

    new-instance v3, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    sget-object v4, Lcom/amazon/kcp/library/models/BookType;->BT_SERIES_GROUP:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v3, v2, v4}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-virtual {v3}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 547
    :cond_33
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupBuilder:Lcom/amazon/kindle/content/GroupMetadataBuilder;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/GroupMetadataBuilder;->setGroupId(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadataBuilder;

    goto/16 :goto_6

    :cond_34
    const-string v3, "displayName"

    .line 549
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 550
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupBuilder:Lcom/amazon/kindle/content/GroupMetadataBuilder;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/GroupMetadataBuilder;->setTitle(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadataBuilder;

    goto/16 :goto_6

    :cond_35
    const-string v3, "seriesType"

    .line 551
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 552
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupBuilder:Lcom/amazon/kindle/content/GroupMetadataBuilder;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/GroupMetadataBuilder;->setSeriesType(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadataBuilder;

    goto/16 :goto_6

    :cond_36
    const-string v3, "seriesTypeV2"

    .line 553
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 554
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupBuilder:Lcom/amazon/kindle/content/GroupMetadataBuilder;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/GroupMetadataBuilder;->setSeriesTypeV2(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadataBuilder;

    goto/16 :goto_6

    :cond_37
    const-string v3, "detailPageAsin"

    .line 555
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 556
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupBuilder:Lcom/amazon/kindle/content/GroupMetadataBuilder;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/GroupMetadataBuilder;->setDetailPageAsin(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadataBuilder;

    goto/16 :goto_6

    :cond_38
    const-string v3, "titlePronunciation"

    .line 557
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 558
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupBuilder:Lcom/amazon/kindle/content/GroupMetadataBuilder;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/GroupMetadataBuilder;->setTitlePronunciation(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadataBuilder;

    goto/16 :goto_6

    :cond_39
    const-string v3, "totalSize"

    .line 559
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 560
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupBuilder:Lcom/amazon/kindle/content/GroupMetadataBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/GroupMetadataBuilder;->setTotalSize(I)Lcom/amazon/kindle/content/GroupMetadataBuilder;

    goto/16 :goto_6

    :cond_3a
    const-string v3, "collectionType"

    .line 561
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 562
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupBuilder:Lcom/amazon/kindle/content/GroupMetadataBuilder;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/GroupMetadataBuilder;->setGroupCollectionTypes(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadataBuilder;

    goto/16 :goto_6

    :cond_3b
    const-string v3, "collectionOrderType"

    .line 563
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 564
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupBuilder:Lcom/amazon/kindle/content/GroupMetadataBuilder;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/GroupMetadataBuilder;->setSeriesOrderType(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadataBuilder;

    goto/16 :goto_6

    :cond_3c
    const-string v3, "authorName"

    .line 565
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 566
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->seriesAuthorBuilder:Lcom/amazon/kindle/content/SeriesAuthorBuilder;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/SeriesAuthorBuilder;->setAuthorName(Ljava/lang/String;)Lcom/amazon/kindle/content/SeriesAuthorBuilder;

    goto/16 :goto_6

    :cond_3d
    const-string v3, "authorPronunciation"

    .line 567
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 568
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->seriesAuthorBuilder:Lcom/amazon/kindle/content/SeriesAuthorBuilder;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/SeriesAuthorBuilder;->setAuthorPronunciation(Ljava/lang/String;)Lcom/amazon/kindle/content/SeriesAuthorBuilder;

    goto/16 :goto_6

    :cond_3e
    const-string v3, "seriesAuthor"

    .line 569
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 570
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->seriesAuthorBuilder:Lcom/amazon/kindle/content/SeriesAuthorBuilder;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/SeriesAuthorBuilder;->isValid()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 571
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupBuilder:Lcom/amazon/kindle/content/GroupMetadataBuilder;

    iget-object v2, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->seriesAuthorBuilder:Lcom/amazon/kindle/content/SeriesAuthorBuilder;

    invoke-virtual {v2}, Lcom/amazon/kindle/content/SeriesAuthorBuilder;->build()Lcom/amazon/kindle/model/sync/Metadata$AuthorMetadata;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/GroupMetadataBuilder;->addAuthorItem(Lcom/amazon/kindle/model/sync/Metadata$AuthorMetadata;)Lcom/amazon/kindle/content/GroupMetadataBuilder;

    goto/16 :goto_6

    :cond_3f
    const-string v3, "itemAsin"

    .line 573
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 574
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupItemBuilder:Lcom/amazon/kindle/content/GroupItemMetadataBuilder;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/GroupItemMetadataBuilder;->setItemAsin(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupItemMetadataBuilder;

    goto/16 :goto_6

    :cond_40
    const-string v3, "itemCollectionType"

    .line 575
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 576
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupItemBuilder:Lcom/amazon/kindle/content/GroupItemMetadataBuilder;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/GroupItemMetadataBuilder;->setItemType(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupItemMetadataBuilder;

    goto/16 :goto_6

    :cond_41
    const-string v3, "position"

    .line 577
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 578
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupItemBuilder:Lcom/amazon/kindle/content/GroupItemMetadataBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/GroupItemMetadataBuilder;->setPosition(F)Lcom/amazon/kindle/content/GroupItemMetadataBuilder;

    goto/16 :goto_6

    :cond_42
    const-string v3, "positionLabel"

    .line 579
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 580
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupItemBuilder:Lcom/amazon/kindle/content/GroupItemMetadataBuilder;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/GroupItemMetadataBuilder;->setPositionLabel(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupItemMetadataBuilder;

    goto/16 :goto_6

    :cond_43
    const-string v3, "positionLabelPrefix"

    .line 581
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 582
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupItemBuilder:Lcom/amazon/kindle/content/GroupItemMetadataBuilder;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/GroupItemMetadataBuilder;->setPositionLabelPrefix(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupItemMetadataBuilder;

    goto/16 :goto_6

    :cond_44
    const-string v3, "seriesItem"

    .line 583
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 584
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupItemBuilder:Lcom/amazon/kindle/content/GroupItemMetadataBuilder;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/GroupItemMetadataBuilder;->isValid()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 585
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupBuilder:Lcom/amazon/kindle/content/GroupMetadataBuilder;

    iget-object v2, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupItemBuilder:Lcom/amazon/kindle/content/GroupItemMetadataBuilder;

    invoke-virtual {v2}, Lcom/amazon/kindle/content/GroupItemMetadataBuilder;->build()Lcom/amazon/kindle/content/GroupItemMetadata;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/GroupMetadataBuilder;->addGroupItem(Lcom/amazon/kindle/content/GroupItemMetadata;)Lcom/amazon/kindle/content/GroupMetadataBuilder;

    goto/16 :goto_6

    :cond_45
    const-string v3, "series_meta_data"

    .line 587
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-boolean v3, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->isRemoval:Z

    if-nez v3, :cond_48

    .line 588
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupBuilder:Lcom/amazon/kindle/content/GroupMetadataBuilder;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/GroupMetadataBuilder;->isValid()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 589
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupBuilder:Lcom/amazon/kindle/content/GroupMetadataBuilder;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/GroupMetadataBuilder;->build()Lcom/amazon/kindle/content/GroupMetadata;

    move-result-object v1

    .line 590
    iget-object v2, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->metadata:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    invoke-interface {v2}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->hasParsedVisibleGroupContent()Z

    move-result v2

    if-nez v2, :cond_46

    invoke-virtual {v1}, Lcom/amazon/kindle/content/GroupMetadata;->getAsinCount()I

    move-result v2

    if-le v2, v4, :cond_46

    .line 591
    iget-object v2, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->metadata:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    invoke-interface {v2, v4}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->setHasParsedVisibleGroupContent(Z)V

    .line 593
    :cond_46
    invoke-virtual {v1}, Lcom/amazon/kindle/content/GroupMetadata;->getGroupContents()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_47

    .line 594
    invoke-virtual {v1}, Lcom/amazon/kindle/content/GroupMetadata;->getGroupContents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/content/GroupItemMetadata;

    .line 595
    invoke-virtual {v1}, Lcom/amazon/kindle/content/GroupMetadata;->getSeriesOrderType()Lcom/amazon/kcp/library/models/SeriesOrderType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/kindle/content/GroupItemMetadata;->setSeriesOrderType(Lcom/amazon/kcp/library/models/SeriesOrderType;)V

    goto :goto_5

    .line 598
    :cond_47
    iget-object v2, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupsToAdd:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_48
    const-string v3, "title_details"

    .line 600
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 601
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/models/internal/MetaData;->setTitleDetailsJson(Ljava/lang/String;)V

    goto :goto_6

    :cond_49
    const-string v3, "image"

    .line 603
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 604
    iput-boolean v5, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->parsingImageNode:Z

    .line 605
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->seriesImageDataBuilder:Lcom/amazon/kindle/content/SeriesImageDataBuilder;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/SeriesImageDataBuilder;->isValid()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 606
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupBuilder:Lcom/amazon/kindle/content/GroupMetadataBuilder;

    iget-object v2, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->seriesImageDataBuilder:Lcom/amazon/kindle/content/SeriesImageDataBuilder;

    invoke-virtual {v2}, Lcom/amazon/kindle/content/SeriesImageDataBuilder;->build()Lcom/amazon/kindle/content/GroupMetadataBuilder$GroupImage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/GroupMetadataBuilder;->setGroupImage(Lcom/amazon/kindle/content/GroupMetadataBuilder$GroupImage;)V

    goto :goto_6

    :cond_4a
    const-string v3, "extension"

    .line 608
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 609
    iget-object v1, v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->seriesImageDataBuilder:Lcom/amazon/kindle/content/SeriesImageDataBuilder;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/SeriesImageDataBuilder;->setExtension(Ljava/lang/String;)V

    :cond_4b
    :goto_6
    return-void
.end method

.method public onElementStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5

    .line 615
    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 616
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 617
    iget-object v2, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->attributes:Ljava/util/Map;

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "removal_list"

    .line 620
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x1

    if-nez p2, :cond_c

    const-string p2, "series_removal_list"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string p2, "add_update_list"

    .line 622
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    const-string p2, "series_add_update_list"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string p2, "meta_data"

    .line 624
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 625
    new-instance p1, Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-direct {p1}, Lcom/amazon/kcp/library/models/internal/MetaData;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->model:Lcom/amazon/kcp/library/models/internal/MetaData;

    goto/16 :goto_3

    :cond_3
    const-string p2, "response"

    .line 626
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 627
    invoke-virtual {p0}, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->onResponseElementStart()V

    goto :goto_3

    :cond_4
    const-string p2, "parent"

    .line 628
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 629
    iput-boolean v1, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->parsingParentAsinNode:Z

    goto :goto_3

    :cond_5
    const-string p2, "origin"

    .line 630
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 631
    iput-boolean v1, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->parsingOriginNode:Z

    goto :goto_3

    :cond_6
    const-string p2, "bisac_subject_description_code"

    .line 632
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 633
    iput-boolean v1, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->parsingBisacSubjectDescriptionCode:Z

    goto :goto_3

    :cond_7
    const-string p2, "series_meta_data"

    .line 634
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-boolean p2, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->isRemoval:Z

    if-nez p2, :cond_8

    .line 635
    iget-object p1, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupBuilder:Lcom/amazon/kindle/content/GroupMetadataBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadataBuilder;->clear()Lcom/amazon/kindle/content/GroupMetadataBuilder;

    goto :goto_3

    :cond_8
    const-string p2, "seriesItem"

    .line 636
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 637
    iget-object p1, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->groupItemBuilder:Lcom/amazon/kindle/content/GroupItemMetadataBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupItemMetadataBuilder;->clear()Lcom/amazon/kindle/content/GroupItemMetadataBuilder;

    goto :goto_3

    :cond_9
    const-string p2, "seriesAuthor"

    .line 638
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 639
    iget-object p1, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->seriesAuthorBuilder:Lcom/amazon/kindle/content/SeriesAuthorBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/SeriesAuthorBuilder;->clear()Lcom/amazon/kindle/content/SeriesAuthorBuilder;

    goto :goto_3

    :cond_a
    const-string p2, "image"

    .line 640
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 641
    iput-boolean v1, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->parsingImageNode:Z

    .line 642
    iget-object p1, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->seriesImageDataBuilder:Lcom/amazon/kindle/content/SeriesImageDataBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/SeriesImageDataBuilder;->clear()V

    goto :goto_3

    .line 623
    :cond_b
    :goto_1
    iput-boolean v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->isRemoval:Z

    goto :goto_3

    .line 621
    :cond_c
    :goto_2
    iput-boolean v1, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->isRemoval:Z

    :cond_d
    :goto_3
    return-void
.end method

.method protected onMetadataElementEnd()V
    .locals 2

    .line 647
    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->metadataToAdd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->metadataToDelete:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->contentToDeleteOrUpdate:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->syncStage:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    .line 648
    invoke-virtual {v1}, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;->getBatchSize()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 649
    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->metadataToAdd:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->fetchCovers(Ljava/util/List;)V

    .line 651
    invoke-direct {p0}, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->updateLibraryService()V

    :cond_0
    return-void
.end method

.method protected onResponseElementEnd()V
    .locals 4

    .line 696
    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->metadataToAdd:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->fetchCovers(Ljava/util/List;)V

    .line 697
    invoke-direct {p0}, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->updateLibraryService()V

    .line 701
    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->syncStage:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    sget-object v1, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;->PARTIAL_FTUE:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    const-string v2, "SyncMetadataContentParserTimer"

    if-ne v0, v1, :cond_0

    .line 703
    sget-object v0, Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;->PARTIAL_FTUE_METADATA_PARSE_END:Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->fireParseEvent(Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;)V

    .line 704
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "FTUE-Partial"

    invoke-virtual {v0, v2, v1, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->metadata:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->hasMore()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->syncStage:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    sget-object v1, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;->FULL_FTUE:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;->PARTIAL_FTUE:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    if-ne v0, v1, :cond_3

    .line 713
    :cond_1
    sget-object v0, Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;->FTUE_METADATA_PARSE_END:Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->fireParseEvent(Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;)V

    .line 714
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 715
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->FTUE_COVER:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->ftueAsin:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 718
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "FTUE-AllItems"

    invoke-virtual {v0, v2, v1, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    :cond_3
    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->metadata:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->hasMore()Z

    move-result v0

    if-nez v0, :cond_4

    .line 725
    sget-object v0, Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;->METADATA_PARSE_END:Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;

    iget-object v1, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->metadata:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->hasParsedVisibleGroupContent()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->fireParseEvent(Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;Z)V

    :cond_4
    return-void
.end method

.method protected onResponseElementStart()V
    .locals 6

    .line 657
    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->syncStage:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    sget-object v1, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;->PARTIAL_FTUE:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 658
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->ftueFirstItemAdded:Ljava/lang/Boolean;

    .line 660
    sget-object v0, Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;->FTUE_METADATA_PARSE_START:Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->fireParseEvent(Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;)V

    .line 662
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->FTUE_COVER:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    .line 663
    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->FTUE_SMD_FIRST_RESPONSE_TO_FIRST_BATCH_COMPLETE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    .line 664
    sget-object v2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->FTUE_SMD_START_TO_FIRST_RESPONSE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    .line 666
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->ftueAsin:Ljava/lang/String;

    .line 668
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 669
    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->ftueAsin:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 670
    invoke-virtual {v1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1, v4}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 671
    invoke-virtual {v2}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v4}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 674
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "FTUE-FirstBatch"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 675
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "FTUE-Partial"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 676
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "FTUE-AllItems"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 678
    iput-boolean v4, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->firstBatch:Z

    .line 679
    sget-object v0, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->INSTANCE:Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;

    sget-object v1, Lcom/amazon/kcp/application/PerfMarker;->SMD_FTUE_FIRST_BATCH_SYNC_START:Lcom/amazon/kcp/application/PerfMarker;

    sget-object v2, Lcom/amazon/kcp/application/PerfMarker;->SMD_FTUE_FIRST_BATCH_SYNC_END:Lcom/amazon/kcp/application/PerfMarker;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->stopTimer(Lcom/amazon/kcp/application/PerfMarker;Lcom/amazon/kcp/application/PerfMarker;)V

    .line 680
    sget-object v0, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->INSTANCE:Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;

    sget-object v1, Lcom/amazon/kcp/application/PerfMarker;->SMD_FTUE_FIRST_BATCH_SYNC_END:Lcom/amazon/kcp/application/PerfMarker;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->reportTimeSinceRegistration(Lcom/amazon/kcp/application/PerfMarker;)V

    .line 681
    sget-object v0, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->INSTANCE:Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;

    sget-object v1, Lcom/amazon/kcp/application/PerfMarker;->SMD_FTUE_FIRST_BATCH_PARSE_START:Lcom/amazon/kcp/application/PerfMarker;

    sget-object v2, Lcom/amazon/kcp/application/PerfMarker;->SMD_FTUE_FIRST_BATCH_PARSE_END:Lcom/amazon/kcp/application/PerfMarker;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->startTimer(Lcom/amazon/kcp/application/PerfMarker;Lcom/amazon/kcp/application/PerfMarker;)V

    .line 687
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->syncStage:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    sget-object v1, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;->FULL_FTUE:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    if-eq v0, v1, :cond_2

    .line 688
    sget-object v0, Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;->METADATA_PARSE_START:Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->fireParseEvent(Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;)V

    goto :goto_0

    .line 690
    :cond_2
    sget-object v0, Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;->FTUE_PHASE_TWO_METADATA_PARSE_START:Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->fireParseEvent(Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;)V

    :goto_0
    return-void
.end method
