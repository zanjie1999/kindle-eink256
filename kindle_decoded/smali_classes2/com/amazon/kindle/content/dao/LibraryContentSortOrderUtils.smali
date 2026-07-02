.class public Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;
.super Ljava/lang/Object;
.source "LibraryContentSortOrderUtils.java"


# static fields
.field private static final GROUPS_COLUMNS:[Ljava/lang/String;

.field private static final GROUPS_JOINED_TABLE:Ljava/lang/String;

.field static final LIBRARY_COLUMNS:[Ljava/lang/String;

.field private static final LOCALE_SETTING_KEY:Ljava/lang/String; = "sort_locale"

.field private static final LOCALE_STATE_CHANGED_WITHOUT_TCN:I = 0x1

.field private static final LOCALE_STATE_CHANGED_WITH_TCN:I = 0x2

.field private static final LOCALE_STATE_NO_CHANGED:I = 0x0

.field static final SORTABLE_LIBRARY_COLUMNS:[Ljava/lang/String;

.field private static final SORT_REORDER_ENABLED_KEY:Ljava/lang/String; = "sort_reorder_enabled"

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;


# instance fields
.field private authorComparator:Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private groupIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private initialized:Z

.field private kindleDB:Lcom/amazon/kindle/content/db/KindleContentDB;

.field private reverseAuthorComparator:Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;

.field private sortedByAuthor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;",
            ">;"
        }
    .end annotation
.end field

.field private sortedByAuthorReversed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;",
            ">;"
        }
    .end annotation
.end field

.field private sortedByTitle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;",
            ">;"
        }
    .end annotation
.end field

.field private sortedDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;",
            ">;"
        }
    .end annotation
.end field

.field private titleComparator:Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 101
    const-class v0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    .line 102
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->TAG:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Groups"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " gt LEFT JOIN "

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GroupItems"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " git ON gt."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " = git."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " AND gt."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_SORT_ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " LEFT JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KindleContent"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " kct ON git."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " = kct."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->GROUPS_JOINED_TABLE:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gt."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 121
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_ORDER:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 122
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    aput-object v2, v1, v6

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLICATION_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 123
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x3

    aput-object v2, v1, v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_PRONUNCIATION:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 124
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "kct."

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/amazon/kindle/content/ContentMetadataField;->SORTABLE_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 125
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sput-object v1, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->GROUPS_COLUMNS:[Ljava/lang/String;

    const/16 v1, 0xa

    new-array v2, v1, [Ljava/lang/String;

    .line 127
    sget-object v9, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v4

    sget-object v9, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 128
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v5

    sget-object v9, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_PRONUNCIATION:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 129
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v6

    sget-object v9, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_ORDER:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 130
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v7

    sget-object v9, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 131
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v3

    sget-object v9, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR_PRONUNCIATION:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 132
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    sget-object v9, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR_ORDER:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 133
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v0

    sget-object v9, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR_ORDER_REVERSED:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 134
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x7

    aput-object v9, v2, v10

    sget-object v9, Lcom/amazon/kindle/content/ContentMetadataField;->LANGUAGE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 135
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    const/16 v11, 0x8

    aput-object v9, v2, v11

    sget-object v9, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLICATION_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 136
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    const/16 v12, 0x9

    aput-object v9, v2, v12

    sput-object v2, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->LIBRARY_COLUMNS:[Ljava/lang/String;

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    .line 138
    sget-object v9, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v4

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 139
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_PRONUNCIATION:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 140
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_ORDER:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 141
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 142
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR_PRONUNCIATION:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 143
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR_ORDER:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 144
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR_ORDER_REVERSED:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 145
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v10

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->LANGUAGE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 146
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v11

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLICATION_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 147
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v12

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->SORTABLE_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 148
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->SORTABLE_AUTHOR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 149
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, v2, v1

    sput-object v2, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->SORTABLE_LIBRARY_COLUMNS:[Ljava/lang/String;

    .line 151
    new-instance v0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    invoke-direct {v0}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;-><init>()V

    sput-object v0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->instance:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->sortedByTitle:Ljava/util/List;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->sortedByAuthor:Ljava/util/List;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->sortedByAuthorReversed:Ljava/util/List;

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->sortedDataMap:Ljava/util/Map;

    .line 180
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->groupIds:Ljava/util/Set;

    .line 185
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/foundation/internal/IThreadPoolManager;->ExecutorBuilder()Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    move-result-object v0

    const-string v1, "LibraryContentSort_worker"

    .line 186
    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->withName(Ljava/lang/String;)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    .line 187
    invoke-interface {v0}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->buildExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->executor:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    .line 195
    iput-boolean v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->initialized:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;Z)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->persistTCNSortingSetting(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)Z
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->loadSortData()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)Ljava/util/Map;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->sortedDataMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)Ljava/util/List;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->sortedByAuthor:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->authorComparator:Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;)Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->authorComparator:Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)Ljava/util/List;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->sortedByAuthorReversed:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->reverseAuthorComparator:Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;)Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->reverseAuthorComparator:Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)I
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->localeChangedState()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;ZZ)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->evaluateSortData(ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->persistLocale()V

    return-void
.end method

.method static synthetic access$502(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;Z)Z
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->initialized:Z

    return p1
.end method

.method static synthetic access$600(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)Ljava/util/Set;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->groupIds:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->titleComparator:Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;

    return-object p0
.end method

.method static synthetic access$702(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;)Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->titleComparator:Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;

    return-object p1
.end method

.method static synthetic access$800(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)Ljava/util/List;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->sortedByTitle:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;Ljava/util/Collection;Z)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->updateSortOrders(Ljava/util/Collection;Z)V

    return-void
.end method

.method private addGroupMetadata(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/content/GroupMetadata;",
            ">;)V"
        }
    .end annotation

    .line 549
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$3;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$3;-><init>(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private addOrUpdateContentMetadata(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;)V"
        }
    .end annotation

    .line 601
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$4;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$4;-><init>(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private evaluateSortData(ZZ)V
    .locals 4

    .line 237
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 239
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->sortedByTitle:Ljava/util/List;

    iget-object v2, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->sortedDataMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->titleComparator:Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->evaluateSortOrders(ZLjava/util/List;Ljava/util/Map;Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 242
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->sortedByAuthor:Ljava/util/List;

    iget-object v2, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->sortedDataMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->authorComparator:Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->evaluateSortOrders(ZLjava/util/List;Ljava/util/Map;Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 245
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->sortedByAuthorReversed:Ljava/util/List;

    iget-object v2, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->sortedDataMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->reverseAuthorComparator:Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->evaluateSortOrders(ZLjava/util/List;Ljava/util/Map;Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 248
    invoke-direct {p0, v0, p2}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->updateSortOrders(Ljava/util/Collection;Z)V

    return-void
.end method

.method private expand(ILjava/util/List;Ljava/util/Set;Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;",
            ">;",
            "Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;",
            ")Z"
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 886
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;

    .line 887
    invoke-interface {v3, v4}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;->getSortOrder(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;)J

    move-result-wide v5

    .line 888
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    const/4 v9, 0x0

    const-wide/16 v10, 0x2

    if-ge v0, v7, :cond_2

    add-int/2addr v0, v8

    .line 889
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;

    .line 890
    invoke-interface {v3, v7}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;->getSortOrder(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;)J

    move-result-wide v12

    sub-long v14, v12, v5

    const-wide/16 v16, 0x1

    cmp-long v7, v14, v16

    if-nez v7, :cond_1

    .line 892
    invoke-interface {v3, v4, v12, v13}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;->setSortOrder(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;J)V

    .line 894
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_0

    return v9

    :cond_0
    move-object/from16 v7, p0

    .line 897
    invoke-direct {v7, v0, v1, v2, v3}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->expand(ILjava/util/List;Ljava/util/Set;Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;)Z

    move-result v0

    move v8, v0

    goto :goto_0

    :cond_1
    move-object/from16 v7, p0

    add-long/2addr v5, v12

    .line 899
    div-long/2addr v5, v10

    invoke-interface {v3, v4, v5, v6}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;->setSortOrder(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;J)V

    goto :goto_0

    :cond_2
    move-object/from16 v7, p0

    const-wide v0, 0x7fffffffffffffffL

    sub-long/2addr v0, v5

    .line 906
    div-long/2addr v0, v10

    const-wide/16 v10, 0x0

    cmp-long v12, v0, v10

    if-nez v12, :cond_3

    return v9

    :cond_3
    add-long/2addr v5, v0

    .line 909
    invoke-interface {v3, v4, v5, v6}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;->setSortOrder(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;J)V

    :goto_0
    if-eqz v8, :cond_4

    .line 912
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    return v8
.end method

.method private findInsertionIndex(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;Ljava/util/List;IILcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;",
            ">;II",
            "Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;",
            ")I"
        }
    .end annotation

    if-gt p3, p4, :cond_2

    .line 928
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lt p3, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int v0, p3, p4

    .line 931
    div-int/lit8 v0, v0, 0x2

    .line 932
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;

    .line 933
    invoke-interface {p5, v1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_1

    add-int/lit8 v6, v0, -0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v7, p5

    .line 937
    invoke-direct/range {v2 .. v7}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->findInsertionIndex(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;Ljava/util/List;IILcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;)I

    move-result p1

    return p1

    :cond_1
    add-int/lit8 v3, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-object v5, p5

    .line 939
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->findInsertionIndex(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;Ljava/util/List;IILcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    return p3
.end method

.method public static getInstance()Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;
    .locals 1

    .line 158
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->instance:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    return-object v0
.end method

.method public static getSortableName(Lcom/amazon/kindle/content/GroupMetadata;)Ljava/lang/String;
    .locals 2

    .line 950
    invoke-virtual {p0}, Lcom/amazon/kindle/content/GroupMetadata;->getTitlePronunciation()Ljava/lang/String;

    move-result-object v0

    .line 951
    invoke-static {}, Lcom/amazon/ebook/util/text/LanguageTag;->getDefault()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ebook/util/text/StringUtil;->shortStringLanguageGuesser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 952
    invoke-virtual {p0}, Lcom/amazon/kindle/content/GroupMetadata;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0, v1}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->getSortableName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getSortableName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 967
    invoke-static {p0}, Lcom/amazon/kindle/util/StringUtils;->isArabicString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->stripDiacritics(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 970
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSortFriendlyFormatter()Lcom/amazon/kindle/utils/ISortFriendlyFormatter;

    move-result-object v0

    .line 971
    invoke-interface {v0, p2, p1, p0}, Lcom/amazon/kindle/utils/ISortFriendlyFormatter;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSupportsSortableColumns()Z
    .locals 2

    .line 1003
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->supports_sortable_columns_in_db:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private getTitleOrAuthorOrder(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 0

    .line 484
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 485
    invoke-direct {p0}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->shouldFixTitleAndAuthorSort()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->shouldReorderTitleAndAuthorForTCN()Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    const-wide/16 p3, -0x1

    :cond_1
    return-wide p3
.end method

.method private loadGroupSortData()Z
    .locals 26

    move-object/from16 v1, p0

    .line 440
    iget-object v0, v1, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->kindleDB:Lcom/amazon/kindle/content/db/KindleContentDB;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x0

    .line 446
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->GROUPS_JOINED_TABLE:Ljava/lang/String;

    sget-object v6, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->GROUPS_COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 448
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 449
    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 450
    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_ORDER:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 451
    sget-object v6, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_PRONUNCIATION:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 452
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 453
    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLICATION_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 454
    sget-object v8, Lcom/amazon/kindle/content/ContentMetadataField;->SORTABLE_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v9, 0x0

    .line 455
    :goto_0
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 456
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 457
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 458
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 459
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 460
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const-string v17, ""

    .line 462
    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->getSupportsSortableColumns()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 463
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    :cond_1
    move/from16 v23, v0

    move-object/from16 v2, v17

    .line 465
    invoke-static {}, Lcom/amazon/ebook/util/text/LanguageTag;->getDefault()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/amazon/ebook/util/text/StringUtil;->shortStringLanguageGuesser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 466
    invoke-static {v10, v11, v0}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->getSortableName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    invoke-direct {v1, v0, v2, v13, v14}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->getTitleOrAuthorOrder(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v24

    .line 468
    new-instance v2, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;

    const/4 v14, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    move-object v11, v2

    move-object v13, v0

    move-wide/from16 v17, v24

    invoke-direct/range {v11 .. v22}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJ)V

    .line 469
    iget-object v0, v1, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->sortedDataMap:Ljava/util/Map;

    iget-object v10, v2, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->bookId:Ljava/lang/String;

    invoke-interface {v0, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    iget-object v0, v1, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->groupIds:Ljava/util/Set;

    iget-object v2, v2, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->bookId:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v10, 0x0

    cmp-long v0, v24, v10

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    or-int/2addr v9, v0

    move/from16 v0, v23

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_5

    .line 477
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    move v2, v9

    goto :goto_2

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    .line 474
    :goto_2
    :try_start_2
    sget-object v4, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->TAG:Ljava/lang/String;

    const-string v5, "Error initializing Groups sort orders"

    invoke-static {v4, v5, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_4

    .line 477
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    move v9, v2

    :cond_5
    :goto_3
    return v9

    :catchall_2
    move-exception v0

    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 479
    :cond_6
    throw v0
.end method

.method private loadSortData()Z
    .locals 39

    move-object/from16 v1, p0

    .line 355
    iget-object v0, v1, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->kindleDB:Lcom/amazon/kindle/content/db/KindleContentDB;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x0

    .line 361
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "KindleContent"

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->getDatabaseColumns()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 361
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 365
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 366
    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 367
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    .line 366
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 368
    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_PRONUNCIATION:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 370
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    .line 369
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 371
    sget-object v6, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_ORDER:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 372
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 373
    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 374
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    .line 373
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 375
    sget-object v8, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR_PRONUNCIATION:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 377
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    .line 376
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 378
    sget-object v9, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR_ORDER:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 379
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 380
    sget-object v10, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR_ORDER_REVERSED:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 381
    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 382
    sget-object v11, Lcom/amazon/kindle/content/ContentMetadataField;->LANGUAGE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 383
    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 384
    sget-object v12, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLICATION_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 385
    sget-object v13, Lcom/amazon/kindle/content/ContentMetadataField;->SORTABLE_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 386
    sget-object v14, Lcom/amazon/kindle/content/ContentMetadataField;->SORTABLE_AUTHOR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v14}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v15, 0x0

    .line 388
    :goto_0
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 389
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 390
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v29, v0

    .line 392
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move/from16 v30, v4

    move/from16 v31, v5

    .line 393
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-wide/from16 v19, v4

    .line 394
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 397
    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->getSupportsSortableColumns()Z

    move-result v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v21, ""

    if-eqz v17, :cond_1

    .line 398
    :try_start_2
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 399
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v32, v6

    move/from16 v33, v9

    move/from16 v34, v13

    move-object/from16 v9, v17

    move-object/from16 v6, v21

    goto :goto_1

    :cond_1
    move/from16 v32, v6

    move/from16 v33, v9

    move/from16 v34, v13

    move-object/from16 v6, v21

    move-object v9, v6

    .line 402
    :goto_1
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move/from16 v35, v7

    .line 404
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 405
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    move/from16 v38, v8

    .line 406
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 407
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 409
    invoke-static {v2, v0, v8}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->getSortableName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    invoke-static {v13, v7, v8}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->getSortableName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-wide/from16 v7, v19

    .line 414
    invoke-direct {v1, v0, v6, v7, v8}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->getTitleOrAuthorOrder(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    .line 415
    invoke-direct {v1, v2, v9, v4, v5}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->getTitleOrAuthorOrder(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    .line 416
    new-instance v8, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;

    move-object/from16 v17, v8

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-wide/from16 v23, v6

    move-wide/from16 v25, v4

    move-wide/from16 v27, v36

    invoke-direct/range {v17 .. v28}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJ)V

    .line 417
    iget-object v0, v1, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->sortedDataMap:Ljava/util/Map;

    iget-object v2, v8, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->bookId:Ljava/lang/String;

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-ltz v0, :cond_3

    cmp-long v0, v4, v8

    if-ltz v0, :cond_3

    cmp-long v0, v36, v8

    if-gez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    or-int/2addr v15, v0

    move/from16 v0, v29

    move/from16 v4, v30

    move/from16 v5, v31

    move/from16 v6, v32

    move/from16 v9, v33

    move/from16 v13, v34

    move/from16 v7, v35

    move/from16 v8, v38

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_4
    if-eqz v3, :cond_6

    .line 427
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_0
    move-exception v0

    move v2, v15

    goto :goto_4

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    .line 424
    :goto_4
    :try_start_3
    sget-object v4, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->TAG:Ljava/lang/String;

    const-string v5, "Error initializing sort orders"

    invoke-static {v4, v5, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_5

    .line 427
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    move v15, v2

    .line 430
    :cond_6
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->loadGroupSortData()Z

    move-result v0

    or-int/2addr v0, v15

    return v0

    :catchall_2
    move-exception v0

    if-eqz v3, :cond_7

    .line 427
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 429
    :cond_7
    throw v0
.end method

.method private localeChangedState()I
    .locals 3

    .line 259
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 260
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationSettings()Lcom/amazon/system/io/IPersistentSettingsHelper;

    move-result-object v0

    const-string v1, "sort_locale"

    const-string v2, ""

    .line 261
    invoke-interface {v0, v1, v2}, Lcom/amazon/system/io/IPersistentSettingsHelper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/util/LocaleUtils;->isTCNLocale(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 264
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 265
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    return v0

    .line 267
    :cond_1
    invoke-static {v0}, Lcom/amazon/kindle/util/LocaleUtils;->isTCNLocale(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v1}, Lcom/amazon/kindle/util/LocaleUtils;->isTCNLocale(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_1
    const/4 v0, 0x2

    return v0
.end method

.method private onContentDelete(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 714
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$6;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$6;-><init>(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private persistLocale()V
    .locals 3

    .line 275
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 276
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationSettings()Lcom/amazon/system/io/IPersistentSettingsHelper;

    move-result-object v0

    .line 277
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/util/LocaleUtils;->isTCNLocale(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 279
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "sort_locale"

    .line 280
    invoke-interface {v0, v2, v1}, Lcom/amazon/system/io/IPersistentSettingsHelper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :try_start_0
    invoke-interface {v0}, Lcom/amazon/system/io/IPersistentSettingsHelper;->save()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 284
    sget-object v1, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->TAG:Ljava/lang/String;

    const-string v2, "Error persisting settings"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private persistTCNSortingSetting(Z)V
    .locals 2

    .line 294
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationSettings()Lcom/amazon/system/io/IPersistentSettingsHelper;

    move-result-object v0

    const-string v1, "sort_reorder_enabled"

    .line 295
    invoke-interface {v0, v1, p1}, Lcom/amazon/system/io/IPersistentSettingsHelper;->set(Ljava/lang/String;Z)V

    .line 298
    :try_start_0
    invoke-interface {v0}, Lcom/amazon/system/io/IPersistentSettingsHelper;->save()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 300
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->TAG:Ljava/lang/String;

    const-string v1, "Error persisting setting"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private shouldFixTitleAndAuthorSort()Z
    .locals 1

    .line 495
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v0

    .line 496
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAppSettingsController;->hasFixedLibrarySorting()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->getSupportsSortableColumns()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldReorderTitleAndAuthorForTCN()Z
    .locals 3

    .line 305
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationSettings()Lcom/amazon/system/io/IPersistentSettingsHelper;

    move-result-object v0

    const-string v1, "sort_reorder_enabled"

    const/4 v2, 0x0

    .line 306
    invoke-interface {v0, v1, v2}, Lcom/amazon/system/io/IPersistentSettingsHelper;->get(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private updateContentSortOrders(Landroid/database/sqlite/SQLiteDatabase;Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;)V
    .locals 4

    .line 788
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 789
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_ORDER:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->titleComparator:Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;

    invoke-interface {v2, p2}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;->getSortOrder(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 790
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR_ORDER:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->authorComparator:Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;

    invoke-interface {v2, p2}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;->getSortOrder(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 791
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR_ORDER_REVERSED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->reverseAuthorComparator:Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;

    invoke-interface {v2, p2}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;->getSortOrder(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 792
    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->getSupportsSortableColumns()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 793
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->SORTABLE_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->sortableTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->SORTABLE_AUTHOR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->sortableAuthor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object p2, p2, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->bookId:Ljava/lang/String;

    aput-object p2, v2, v3

    const-string p2, "KindleContent"

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private updateGroupSortOrders(Landroid/database/sqlite/SQLiteDatabase;Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;)V
    .locals 5

    .line 776
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 777
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_ORDER:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->titleComparator:Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;

    invoke-interface {v2, p2}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;->getSortOrder(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 778
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%s = ?"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/String;

    iget-object p2, p2, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->bookId:Ljava/lang/String;

    aput-object p2, v1, v4

    const-string p2, "Groups"

    invoke-virtual {p1, p2, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private updateSortOrders(Ljava/util/Collection;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;",
            ">;Z)V"
        }
    .end annotation

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating sort order: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 740
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->kindleDB:Lcom/amazon/kindle/content/db/KindleContentDB;

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 743
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->kindleDB:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 744
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 745
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;

    .line 746
    iget-object v2, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->groupIds:Ljava/util/Set;

    iget-object v3, v1, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->bookId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 747
    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->updateGroupSortOrders(Landroid/database/sqlite/SQLiteDatabase;Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;)V

    goto :goto_0

    .line 749
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->updateContentSortOrders(Landroid/database/sqlite/SQLiteDatabase;Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;)V

    goto :goto_0

    .line 752
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    if-eqz p2, :cond_2

    .line 754
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object p1

    const/4 p2, 0x1

    .line 755
    invoke-interface {p1, p2}, Lcom/amazon/kcp/application/IAppSettingsController;->setHasFixedLibrarySorting(Z)V

    :cond_2
    const/4 p1, 0x0

    .line 759
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->persistTCNSortingSetting(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 761
    :try_start_1
    sget-object p2, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->TAG:Ljava/lang/String;

    const-string v1, "Error updating the DB for sort orders"

    invoke-static {p2, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_4

    .line 764
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 766
    :cond_3
    throw p1

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method addOrUpdateSortOrders(Ljava/util/List;Ljava/util/List;Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;",
            ">;",
            "Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;",
            ")",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;",
            ">;"
        }
    .end annotation

    .line 671
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 674
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;

    .line 675
    iget-object v4, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->sortedDataMap:Ljava/util/Map;

    iget-object v5, v3, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->bookId:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 677
    invoke-virtual {p0, v3, p2, v0, p3}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->addSortOrder(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;Ljava/util/List;Ljava/util/Set;Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;)Z

    move-result v2

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 682
    iget-object p1, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->sortedDataMap:Ljava/util/Map;

    invoke-virtual {p0, v1, p2, p1, p3}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->evaluateSortOrders(ZLjava/util/List;Ljava/util/Map;Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method addSortOrder(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;Ljava/util/List;Ljava/util/Set;Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;",
            ">;",
            "Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;",
            ")Z"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 819
    iget-object v0, v6, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->groupIds:Ljava/util/Set;

    iget-object v1, v7, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->bookId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->titleComparator:Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;

    if-eq v10, v0, :cond_0

    return v11

    :cond_0
    const/4 v3, 0x0

    .line 825
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->findInsertionIndex(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;Ljava/util/List;IILcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;)I

    move-result v0

    .line 827
    invoke-interface {v10, v7}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;->getSortOrder(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_5

    const-wide v1, 0x7fffffffffffffffL

    add-int/lit8 v5, v0, -0x1

    if-ltz v5, :cond_1

    .line 833
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_1

    .line 834
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;

    .line 835
    invoke-interface {v10, v3}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;->getSortOrder(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;)J

    move-result-wide v3

    :cond_1
    const/4 v5, 0x0

    .line 839
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v0, v12, :cond_2

    .line 840
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;

    .line 841
    invoke-interface {v10, v5}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;->getSortOrder(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;)J

    move-result-wide v1

    :cond_2
    sub-long v12, v1, v3

    const-wide/16 v14, 0x1

    cmp-long v16, v12, v14

    if-nez v16, :cond_4

    .line 849
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    if-ne v0, v11, :cond_3

    const/4 v0, 0x0

    return v0

    .line 852
    :cond_3
    invoke-direct {v6, v0, v8, v9, v10}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->expand(ILjava/util/List;Ljava/util/Set;Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 854
    invoke-interface {v10, v5}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;->getSortOrder(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;)J

    move-result-wide v1

    :cond_4
    sub-long/2addr v1, v3

    const-wide/16 v12, 0x2

    .line 859
    div-long/2addr v1, v12

    add-long/2addr v3, v1

    invoke-interface {v10, v7, v3, v4}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;->setSortOrder(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;J)V

    .line 860
    invoke-interface {v8, v0, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 861
    invoke-interface {v9, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 865
    :cond_5
    invoke-interface {v8, v0, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    return v11
.end method

.method evaluateSortOrders(ZLjava/util/List;Ljava/util/Map;Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;",
            ">;",
            "Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;",
            ")",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;",
            ">;"
        }
    .end annotation

    .line 326
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 327
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    new-instance v0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$2;

    invoke-direct {v0, p0, p4}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$2;-><init>(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;)V

    invoke-static {p3, v0}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object p3

    .line 334
    invoke-static {p2, p3}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 335
    invoke-static {p2, p4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz p1, :cond_1

    .line 337
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 338
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    const/4 v2, 0x1

    add-int/2addr p3, v2

    int-to-long v3, p3

    div-long/2addr v0, v3

    .line 339
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-gt v2, p3, :cond_0

    add-int/lit8 p3, v2, -0x1

    .line 340
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;

    int-to-long v3, v2

    mul-long v3, v3, v0

    .line 341
    invoke-interface {p4, p3, v3, v4}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;->setSortOrder(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;J)V

    .line 342
    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    .line 346
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method getDatabaseColumns()[Ljava/lang/String;
    .locals 1

    .line 436
    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->getSupportsSortableColumns()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->SORTABLE_LIBRARY_COLUMNS:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->LIBRARY_COLUMNS:[Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public init(Lcom/amazon/kindle/content/db/KindleContentDB;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->kindleDB:Lcom/amazon/kindle/content/db/KindleContentDB;

    if-eqz v0, :cond_0

    return-void

    .line 212
    :cond_0
    iput-object p1, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->kindleDB:Lcom/amazon/kindle/content/db/KindleContentDB;

    .line 213
    iget-object p1, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$1;-><init>(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public onContentDelete(Lcom/amazon/kindle/content/ContentDelete;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
        topic = "CONTENT_DELETE"
    .end annotation

    if-eqz p1, :cond_0

    .line 542
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentDelete;->getBookIds()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentDelete;->getBookIds()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 544
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentDelete;->getBookIds()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->onContentDelete(Ljava/util/Collection;)V

    :cond_0
    return-void
.end method

.method public onContentUpdate(Ljava/util/Collection;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_UPDATE"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentUpdate;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 523
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 524
    new-instance v0, Ljava/util/ArrayList;

    .line 525
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 526
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/ContentUpdate;

    .line 527
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 529
    :cond_0
    invoke-direct {p0, v0}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->addOrUpdateContentMetadata(Ljava/util/Collection;)V

    :cond_1
    return-void
.end method

.method public onGroupAdded(Lcom/amazon/kindle/content/GroupAddPayload;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
        topic = "GROUP_ADD"
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 504
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupAddPayload;->getMetadata()Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 505
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 506
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->addGroupMetadata(Ljava/util/Collection;)V

    :cond_1
    return-void
.end method

.method public onGroupDelete(Ljava/util/List;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
        topic = "GROUP_DELETE"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 535
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 536
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->onContentDelete(Ljava/util/Collection;)V

    :cond_0
    return-void
.end method

.method public onLibraryContentAddPayload(Lcom/amazon/kindle/content/LibraryContentAddPayload;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
        topic = "CONTENT_ADD"
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 515
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/LibraryContentAddPayload;->getMetadata()Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 516
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 517
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->addOrUpdateContentMetadata(Ljava/util/Collection;)V

    :cond_1
    return-void
.end method

.method public onLocaleChanged(Lcom/amazon/kindle/event/LocaleChangedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 690
    iget-object p1, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$5;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$5;-><init>(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method setupComparators()V
    .locals 3

    :try_start_0
    const-string v0, "com.ibm.icu.text.Collator"

    .line 979
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 980
    new-instance v0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ICUCollatorComparator;

    invoke-direct {v0}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ICUCollatorComparator;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 982
    invoke-static {}, Lcom/amazon/kindle/util/LocaleUtils;->currentLocaleIsTWLocale()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/debug/TCNSortingUtils;->isTCNSortingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 984
    new-instance v0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$JavaCollatorComparator;

    const-string/jumbo v1, "zh-u-co-zhuyin"

    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$JavaCollatorComparator;-><init>(Ljava/util/Locale;)V

    goto :goto_0

    .line 986
    :cond_0
    new-instance v0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$JavaCollatorComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$JavaCollatorComparator;-><init>(Ljava/util/Locale;)V

    .line 989
    :goto_0
    new-instance v1, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$TitleSortOrderComparator;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$TitleSortOrderComparator;-><init>(Ljava/util/Comparator;Z)V

    iput-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->titleComparator:Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;

    .line 990
    new-instance v1, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$AuthorSortOrderComparator;

    invoke-direct {v1, v0, v2}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$AuthorSortOrderComparator;-><init>(Ljava/util/Comparator;Z)V

    iput-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->authorComparator:Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;

    .line 991
    new-instance v1, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$AuthorSortOrderReversedComparator;

    invoke-direct {v1, v0, v2}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$AuthorSortOrderReversedComparator;-><init>(Ljava/util/Comparator;Z)V

    iput-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->reverseAuthorComparator:Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;

    return-void
.end method
