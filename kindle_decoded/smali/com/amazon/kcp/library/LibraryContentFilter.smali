.class public Lcom/amazon/kcp/library/LibraryContentFilter;
.super Ljava/lang/Object;
.source "LibraryContentFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/LibraryContentFilter$NonSeriesFilter;
    }
.end annotation


# static fields
.field private static final ALL_ITEMS:Ljava/lang/String;

.field private static final ALL_ITEMS_ARGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static ALL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

.field public static final AUDIBLE_BOOK_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

.field public static final BOOKS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

.field private static final BOOKS_ITEMS_ARGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CAROUSEL_ITEMS:Ljava/lang/String;

.field private static final CAROUSEL_ITEMS_ARGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CAROUSEL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

.field private static final COMICS_ITEMS:Ljava/lang/String;

.field static final COMIC_AND_BOOK_ITEMS:Ljava/lang/String;

.field private static final CU_ARGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CU_ITEMS:Ljava/lang/String;

.field public static final DOCS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

.field private static final DOCS_ITEMS:Ljava/lang/String;

.field private static final DOCS_ITEMS_ARGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOWNLOADED_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

.field public static final FALKOR_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

.field private static final FALKOR_ITEMS:Ljava/lang/String;

.field private static final FALKOR_NEW_PURCHASE_FILTER_FIELDS:Ljava/lang/String;

.field private static final KU_ARGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KU_ITEMS:Ljava/lang/String;

.field public static final NEWSSTAND_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

.field private static final NEWSSTAND_ITEMS:Ljava/lang/String;

.field private static final NEWSSTAND_ITEMS_ARGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NEW_PURCHASE_FILTER_ARGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NEW_PURCHASE_FILTER_FIELDS:Ljava/lang/String;

.field static final NON_COMIC_BOOK_ITEMS:Ljava/lang/String;

.field private static final NON_DOCS_ITEMS:Ljava/lang/String;

.field private static final NON_DOCS_ITEMS_ARGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NON_GROUPING_NON_CONSOLIDATING_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

.field public static final NON_GROUP_DOWNLOADED_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

.field private static final NON_GROUP_DOWNLOADED_FILTER_FIELDS:Ljava/lang/String;

.field private static final NON_GROUP_DOWNLOADED_FILTER_FIELD_VALUES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NOT_FALKOR_ITEMS:Ljava/lang/String;

.field private static final ON_DEVICE_ITEMS:Ljava/lang/String;

.field private static final ON_DEVICE_ITEMS_ARGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIME_ARGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIME_ITEMS:Ljava/lang/String;

.field private static final READING_FILTER_FIELDS:Ljava/lang/String;

.field private static final READING_FILTER_FIELDS_FALKOR:Ljava/lang/String;

.field private static final READING_FILTER_FIELD_VALUES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final READ_ARGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

.field private static final READ_ITEMS:Ljava/lang/String;

.field public static final SAMPLES_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

.field private static final SAMPLE_ITEMS:Ljava/lang/String;

.field private static final SAMPLE_ITEMS_ARGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNREAD_ARGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNREAD_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

.field private static final UNREAD_ITEMS:Ljava/lang/String;

.field private static final YOUR_ITEMS:Ljava/lang/String;

.field private static final YOUR_ITEMS_ARGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final YOUR_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;


# instance fields
.field private consolidated:Z

.field public final defaultSortType:Lcom/amazon/kcp/library/LibrarySortType;

.field private final filter:Ljava/lang/String;

.field protected filterArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final libraryDisplayItemPredicate:Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;

.field protected final sortPersistenceKey:Ljava/lang/String;

.field public final supportedSortTypes:[Lcom/amazon/kcp/library/LibrarySortType;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ARCHIVABLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " IS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " OR "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " != ?)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/LibraryContentFilter;->ALL_ITEMS:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    .line 54
    sget-object v4, Lcom/amazon/kindle/model/content/ContentState;->REMOTE:Lcom/amazon/kindle/model/content/ContentState;

    .line 55
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v0, v5

    .line 54
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/LibraryContentFilter;->ALL_ITEMS_ARGS:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->IS_IN_CAROUSEL:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/LibraryContentFilter;->CAROUSEL_ITEMS:Ljava/lang/String;

    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/LibraryContentFilter;->CAROUSEL_ITEMS_ARGS:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/amazon/kindle/content/ContentMetadataField;->TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " IN (?)"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/LibraryContentFilter;->COMIC_AND_BOOK_ITEMS:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/amazon/kcp/library/LibraryContentFilter;->COMIC_AND_BOOK_ITEMS:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " AND "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->IS_COMIC:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/LibraryContentFilter;->NON_COMIC_BOOK_ITEMS:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    .line 62
    sget-object v7, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/LibraryContentFilter;->BOOKS_ITEMS_ARGS:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->IS_COMIC:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/LibraryContentFilter;->COMICS_ITEMS:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->IS_FALKOR_EPISODE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/LibraryContentFilter;->FALKOR_ITEMS:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->IS_FALKOR_EPISODE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/LibraryContentFilter;->NOT_FALKOR_ITEMS:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " IN (?, ?)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/LibraryContentFilter;->NEWSSTAND_ITEMS:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .line 69
    sget-object v7, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    sget-object v7, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    .line 70
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    .line 69
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sput-object v4, Lcom/amazon/kcp/library/LibraryContentFilter;->NEWSSTAND_ITEMS_ARGS:Ljava/util/List;

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " IN (?, ?, ?)"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/amazon/kcp/library/LibraryContentFilter;->DOCS_ITEMS:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v8, v4, [Ljava/lang/String;

    .line 73
    sget-object v9, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    sget-object v9, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PSNL:Lcom/amazon/kcp/library/models/BookType;

    .line 74
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    sget-object v9, Lcom/amazon/kcp/library/models/BookType;->BT_OFFICE_DOC:Lcom/amazon/kcp/library/models/BookType;

    .line 75
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v0

    .line 73
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    sput-object v8, Lcom/amazon/kcp/library/LibraryContentFilter;->DOCS_ITEMS_ARGS:Ljava/util/List;

    .line 77
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/amazon/kindle/content/ContentMetadataField;->TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " NOT IN (?, ?, ?)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/amazon/kcp/library/LibraryContentFilter;->NON_DOCS_ITEMS:Ljava/lang/String;

    new-array v8, v4, [Ljava/lang/String;

    .line 78
    sget-object v9, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    sget-object v9, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PSNL:Lcom/amazon/kcp/library/models/BookType;

    .line 79
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    sget-object v9, Lcom/amazon/kcp/library/models/BookType;->BT_OFFICE_DOC:Lcom/amazon/kcp/library/models/BookType;

    .line 80
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v0

    .line 78
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    sput-object v8, Lcom/amazon/kcp/library/LibraryContentFilter;->NON_DOCS_ITEMS_ARGS:Ljava/util/List;

    .line 82
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/amazon/kindle/content/ContentMetadataField;->READ_STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " IS ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/amazon/kcp/library/LibraryContentFilter;->READ_ITEMS:Ljava/lang/String;

    new-array v8, v2, [Ljava/lang/String;

    .line 83
    sget-object v10, Lcom/amazon/kindle/krx/content/IBook$ReadState;->READ:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v5

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    sput-object v8, Lcom/amazon/kcp/library/LibraryContentFilter;->READ_ARGS:Ljava/util/List;

    .line 85
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/amazon/kindle/content/ContentMetadataField;->READ_STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/amazon/kcp/library/LibraryContentFilter;->UNREAD_ITEMS:Ljava/lang/String;

    new-array v8, v2, [Ljava/lang/String;

    .line 86
    sget-object v9, Lcom/amazon/kindle/krx/content/IBook$ReadState;->UNREAD:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    sput-object v8, Lcom/amazon/kcp/library/LibraryContentFilter;->UNREAD_ARGS:Ljava/util/List;

    .line 88
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/amazon/kindle/content/ContentMetadataField;->ORIGIN_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " IS  ?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/amazon/kcp/library/LibraryContentFilter;->PRIME_ITEMS:Ljava/lang/String;

    const-string v8, "Prime"

    .line 89
    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    sput-object v8, Lcom/amazon/kcp/library/LibraryContentFilter;->PRIME_ARGS:Ljava/util/List;

    .line 91
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/amazon/kindle/content/ContentMetadataField;->ORIGIN_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/amazon/kcp/library/LibraryContentFilter;->KU_ITEMS:Ljava/lang/String;

    const-string v7, "KindleUnlimited"

    const-string v8, "Kindle Unlimited"

    const-string v10, "KUSubscription"

    .line 92
    filled-new-array {v7, v8, v10}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    sput-object v7, Lcom/amazon/kcp/library/LibraryContentFilter;->KU_ARGS:Ljava/util/List;

    .line 94
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/amazon/kindle/content/ContentMetadataField;->ORIGIN_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/amazon/kcp/library/LibraryContentFilter;->CU_ITEMS:Ljava/lang/String;

    const-string v7, "ComicsUnlimited"

    .line 95
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    sput-object v7, Lcom/amazon/kcp/library/LibraryContentFilter;->CU_ARGS:Ljava/util/List;

    .line 97
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ORIGIN_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->YOUR_ITEMS:Ljava/lang/String;

    const-string v1, "Sharing"

    .line 98
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->YOUR_ITEMS_ARGS:Ljava/util/List;

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->SAMPLE_ITEMS:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    .line 101
    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->SAMPLE_ITEMS_ARGS:Ljava/util/List;

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->NON_GROUP_DOWNLOADED_FILTER_FIELDS:Ljava/lang/String;

    .line 104
    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->NON_GROUP_DOWNLOADED_FILTER_FIELD_VALUES:Ljava/util/List;

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " IN (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->ON_DEVICE_ITEMS:Ljava/lang/String;

    .line 107
    sget-object v1, Lcom/amazon/kcp/library/LibraryConstants$ContentStates;->ON_DEVICE_CONTENT_STATES:Ljava/util/List;

    invoke-static {v1}, Lcom/amazon/kcp/library/LibraryConstants$ContentStates;->names(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->ON_DEVICE_ITEMS_ARGS:Ljava/util/List;

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->READING_PROGRESS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " > "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, -0x1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " IS  ? AND "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/amazon/kcp/library/LibraryContentFilter;->NOT_FALKOR_ITEMS:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->READING_FILTER_FIELDS:Ljava/lang/String;

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/amazon/kindle/content/ContentMetadataField;->READING_PROGRESS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/amazon/kcp/library/LibraryContentFilter;->FALKOR_ITEMS:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->READING_FILTER_FIELDS_FALKOR:Ljava/lang/String;

    .line 114
    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->READING_FILTER_FIELD_VALUES:Ljava/util/List;

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->DELIVERY_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/amazon/kcp/library/LibraryContentFilter;->NOT_FALKOR_ITEMS:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->NEW_PURCHASE_FILTER_FIELDS:Ljava/lang/String;

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->DELIVERY_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kcp/library/LibraryContentFilter;->FALKOR_ITEMS:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->FALKOR_NEW_PURCHASE_FILTER_FIELDS:Ljava/lang/String;

    .line 118
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->NEW_PURCHASE_FILTER_ARGS:Ljava/util/List;

    .line 121
    new-instance v1, Lcom/amazon/kcp/library/LibraryContentFilter$1;

    sget-object v7, Lcom/amazon/kcp/library/LibraryContentFilter;->READ_ITEMS:Ljava/lang/String;

    sget-object v8, Lcom/amazon/kcp/library/LibraryContentFilter;->READ_ARGS:Ljava/util/List;

    const/4 v3, 0x4

    new-array v9, v3, [Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v6, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v6, v9, v5

    sget-object v6, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v6, v9, v2

    sget-object v6, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v6, v9, v0

    sget-object v10, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v10, v9, v4

    const/4 v11, 0x0

    const-string v12, "ReadSortKey"

    const/4 v13, 0x1

    move-object v6, v1

    invoke-direct/range {v6 .. v13}, Lcom/amazon/kcp/library/LibraryContentFilter$1;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V

    sput-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->READ_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 136
    new-instance v1, Lcom/amazon/kcp/library/LibraryContentFilter$2;

    sget-object v15, Lcom/amazon/kcp/library/LibraryContentFilter;->UNREAD_ITEMS:Ljava/lang/String;

    sget-object v16, Lcom/amazon/kcp/library/LibraryContentFilter;->UNREAD_ARGS:Ljava/util/List;

    new-array v6, v3, [Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v7, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v7, v6, v5

    sget-object v7, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v7, v6, v2

    sget-object v7, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v7, v6, v0

    sget-object v18, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v18, v6, v4

    const/16 v19, 0x0

    const-string v20, "UnreadSortKey"

    const/16 v21, 0x1

    move-object v14, v1

    move-object/from16 v17, v6

    invoke-direct/range {v14 .. v21}, Lcom/amazon/kcp/library/LibraryContentFilter$2;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V

    sput-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->UNREAD_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 152
    new-instance v7, Lcom/amazon/kcp/library/LibraryContentFilter$3;

    sget-object v8, Lcom/amazon/kcp/library/LibraryContentFilter;->PRIME_ITEMS:Ljava/lang/String;

    sget-object v9, Lcom/amazon/kcp/library/LibraryContentFilter;->PRIME_ARGS:Ljava/util/List;

    new-array v10, v3, [Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v1, v10, v5

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v1, v10, v2

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v1, v10, v0

    sget-object v11, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v11, v10, v4

    const/4 v12, 0x0

    const-string v13, "PrimeItemsSortKey"

    const/4 v14, 0x1

    invoke-direct/range {v7 .. v14}, Lcom/amazon/kcp/library/LibraryContentFilter$3;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V

    .line 168
    new-instance v15, Lcom/amazon/kcp/library/LibraryContentFilter$4;

    sget-object v16, Lcom/amazon/kcp/library/LibraryContentFilter;->KU_ITEMS:Ljava/lang/String;

    sget-object v17, Lcom/amazon/kcp/library/LibraryContentFilter;->KU_ARGS:Ljava/util/List;

    new-array v1, v3, [Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v6, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v6, v1, v5

    sget-object v6, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v6, v1, v2

    sget-object v6, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v6, v1, v0

    sget-object v19, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v19, v1, v4

    const/16 v20, 0x0

    const-string v21, "KUItemsSortKey"

    const/16 v22, 0x1

    move-object/from16 v18, v1

    invoke-direct/range {v15 .. v22}, Lcom/amazon/kcp/library/LibraryContentFilter$4;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V

    .line 186
    new-instance v6, Lcom/amazon/kcp/library/LibraryContentFilter$5;

    sget-object v7, Lcom/amazon/kcp/library/LibraryContentFilter;->CU_ITEMS:Ljava/lang/String;

    sget-object v8, Lcom/amazon/kcp/library/LibraryContentFilter;->CU_ARGS:Ljava/util/List;

    new-array v9, v3, [Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v1, v9, v5

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v1, v9, v2

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v1, v9, v0

    sget-object v10, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v10, v9, v4

    const/4 v11, 0x0

    const-string v12, "CUItemsSortKey"

    const/4 v13, 0x1

    invoke-direct/range {v6 .. v13}, Lcom/amazon/kcp/library/LibraryContentFilter$5;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V

    .line 202
    new-instance v1, Lcom/amazon/kcp/library/LibraryContentFilter$6;

    sget-object v15, Lcom/amazon/kcp/library/LibraryContentFilter;->YOUR_ITEMS:Ljava/lang/String;

    sget-object v16, Lcom/amazon/kcp/library/LibraryContentFilter;->YOUR_ITEMS_ARGS:Ljava/util/List;

    new-array v6, v3, [Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v7, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v7, v6, v5

    sget-object v7, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v7, v6, v2

    sget-object v7, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v7, v6, v0

    sget-object v18, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v18, v6, v4

    const/16 v19, 0x0

    const-string v20, "YourItemsSortKey"

    const/16 v21, 0x1

    move-object v14, v1

    move-object/from16 v17, v6

    invoke-direct/range {v14 .. v21}, Lcom/amazon/kcp/library/LibraryContentFilter$6;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V

    sput-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->YOUR_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    new-array v1, v3, [Lcom/amazon/kcp/library/LibrarySortType;

    .line 234
    sget-object v6, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v6, v1, v5

    sget-object v6, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v6, v1, v2

    sget-object v6, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v6, v1, v0

    sget-object v6, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v6, v1, v4

    const-string v7, "AllItemsSortType"

    invoke-static {v1, v6, v7}, Lcom/amazon/kcp/library/LibraryContentFilter;->createAllItemsFilter([Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Ljava/lang/String;)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->ALL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 239
    new-instance v1, Lcom/amazon/kcp/library/LibraryContentFilter$8;

    sget-object v7, Lcom/amazon/kcp/library/LibraryContentFilter;->ALL_ITEMS:Ljava/lang/String;

    sget-object v8, Lcom/amazon/kcp/library/LibraryContentFilter;->ALL_ITEMS_ARGS:Ljava/util/List;

    new-array v9, v3, [Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v6, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v6, v9, v5

    sget-object v6, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v6, v9, v2

    sget-object v6, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v6, v9, v0

    sget-object v10, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v10, v9, v4

    const-string v12, "NonGroupingNonConsolidatedSortType"

    const/4 v13, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v13}, Lcom/amazon/kcp/library/LibraryContentFilter$8;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V

    sput-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->NON_GROUPING_NON_CONSOLIDATING_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 254
    new-instance v1, Lcom/amazon/kcp/library/LibraryContentFilter$9;

    sget-object v15, Lcom/amazon/kcp/library/LibraryContentFilter;->CAROUSEL_ITEMS:Ljava/lang/String;

    sget-object v16, Lcom/amazon/kcp/library/LibraryContentFilter;->CAROUSEL_ITEMS_ARGS:Ljava/util/List;

    new-array v6, v2, [Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v18, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v18, v6, v5

    const-string v20, "CarouselAllItemsSortType"

    const/16 v21, 0x0

    move-object v14, v1

    move-object/from16 v17, v6

    invoke-direct/range {v14 .. v21}, Lcom/amazon/kcp/library/LibraryContentFilter$9;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V

    sput-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->CAROUSEL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 269
    new-instance v1, Lcom/amazon/kcp/library/LibraryContentFilter$10;

    sget-object v8, Lcom/amazon/kcp/library/LibraryContentFilter;->NEWSSTAND_ITEMS:Ljava/lang/String;

    sget-object v9, Lcom/amazon/kcp/library/LibraryContentFilter;->NEWSSTAND_ITEMS_ARGS:Ljava/util/List;

    new-array v10, v3, [Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v6, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v6, v10, v5

    sget-object v6, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v6, v10, v2

    sget-object v6, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v6, v10, v0

    sget-object v11, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v11, v10, v4

    const/4 v12, 0x0

    const-string v13, "NewsstandSortType"

    const/4 v14, 0x1

    move-object v7, v1

    invoke-direct/range {v7 .. v14}, Lcom/amazon/kcp/library/LibraryContentFilter$10;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V

    sput-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->NEWSSTAND_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 285
    new-instance v1, Lcom/amazon/kcp/library/LibraryContentFilter$11;

    sget-object v16, Lcom/amazon/kcp/library/LibraryContentFilter;->COMIC_AND_BOOK_ITEMS:Ljava/lang/String;

    sget-object v17, Lcom/amazon/kcp/library/LibraryContentFilter;->BOOKS_ITEMS_ARGS:Ljava/util/List;

    new-array v6, v3, [Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v7, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v7, v6, v5

    sget-object v7, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v7, v6, v2

    sget-object v7, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v7, v6, v0

    sget-object v19, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v19, v6, v4

    const/16 v20, 0x0

    const-string v21, "BooksSortType"

    const/16 v22, 0x0

    move-object v15, v1

    move-object/from16 v18, v6

    invoke-direct/range {v15 .. v22}, Lcom/amazon/kcp/library/LibraryContentFilter$11;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V

    sput-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->BOOKS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 308
    new-instance v7, Lcom/amazon/kcp/library/LibraryContentFilter$12;

    sget-object v8, Lcom/amazon/kcp/library/LibraryContentFilter;->COMICS_ITEMS:Ljava/lang/String;

    sget-object v9, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v1, 0x5

    new-array v10, v1, [Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v1, v10, v5

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v1, v10, v2

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v1, v10, v0

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v1, v10, v4

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_PUBLICATION_DATE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v1, v10, v3

    sget-object v11, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    const-string v13, "ComicsSortType"

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v14}, Lcom/amazon/kcp/library/LibraryContentFilter$12;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V

    .line 325
    new-instance v1, Lcom/amazon/kcp/library/LibraryContentFilter$13;

    sget-object v16, Lcom/amazon/kcp/library/LibraryContentFilter;->FALKOR_ITEMS:Ljava/lang/String;

    sget-object v17, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    new-array v6, v3, [Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v7, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v7, v6, v5

    sget-object v7, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v7, v6, v2

    sget-object v7, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v7, v6, v0

    sget-object v19, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v19, v6, v4

    const-string v21, "FalkorSortType"

    move-object v15, v1

    move-object/from16 v18, v6

    invoke-direct/range {v15 .. v22}, Lcom/amazon/kcp/library/LibraryContentFilter$13;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V

    sput-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->FALKOR_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 342
    new-instance v1, Lcom/amazon/kcp/library/LibraryContentFilter$14;

    sget-object v8, Lcom/amazon/kcp/library/LibraryContentFilter;->DOCS_ITEMS:Ljava/lang/String;

    sget-object v9, Lcom/amazon/kcp/library/LibraryContentFilter;->DOCS_ITEMS_ARGS:Ljava/util/List;

    new-array v10, v3, [Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v6, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v6, v10, v5

    sget-object v6, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v6, v10, v2

    sget-object v6, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v6, v10, v0

    sget-object v11, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v11, v10, v4

    const-string v13, "DocsSortType"

    move-object v7, v1

    invoke-direct/range {v7 .. v14}, Lcom/amazon/kcp/library/LibraryContentFilter$14;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V

    sput-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->DOCS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 361
    new-instance v1, Lcom/amazon/kcp/library/LibraryContentFilter$15;

    sget-object v16, Lcom/amazon/kcp/library/LibraryContentFilter;->SAMPLE_ITEMS:Ljava/lang/String;

    sget-object v17, Lcom/amazon/kcp/library/LibraryContentFilter;->SAMPLE_ITEMS_ARGS:Ljava/util/List;

    new-array v6, v3, [Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v7, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v7, v6, v5

    sget-object v7, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v7, v6, v2

    sget-object v7, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v7, v6, v0

    sget-object v19, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v19, v6, v4

    const-string v21, "SamplesSortType"

    move-object v15, v1

    move-object/from16 v18, v6

    invoke-direct/range {v15 .. v22}, Lcom/amazon/kcp/library/LibraryContentFilter$15;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V

    sput-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->SAMPLES_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 376
    new-instance v1, Lcom/amazon/kcp/library/LibraryContentFilter$16;

    sget-object v8, Lcom/amazon/kcp/library/LibraryContentFilter;->COMIC_AND_BOOK_ITEMS:Ljava/lang/String;

    sget-object v9, Lcom/amazon/kcp/library/LibraryContentFilter;->BOOKS_ITEMS_ARGS:Ljava/util/List;

    new-array v10, v3, [Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v6, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v6, v10, v5

    sget-object v6, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v6, v10, v2

    sget-object v6, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v6, v10, v0

    sget-object v11, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v11, v10, v4

    .line 381
    invoke-static {}, Lcom/amazon/kcp/library/AudibleFilterHelper;->createOwnsCompanionBookPredicate()Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;

    move-result-object v12

    const-string v13, "AudibleBooksSortType"

    move-object v7, v1

    invoke-direct/range {v7 .. v14}, Lcom/amazon/kcp/library/LibraryContentFilter$16;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V

    sput-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->AUDIBLE_BOOK_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 394
    new-instance v1, Lcom/amazon/kcp/library/LibraryContentFilter$17;

    sget-object v16, Lcom/amazon/kcp/library/LibraryContentFilter;->NON_GROUP_DOWNLOADED_FILTER_FIELDS:Ljava/lang/String;

    sget-object v17, Lcom/amazon/kcp/library/LibraryContentFilter;->NON_GROUP_DOWNLOADED_FILTER_FIELD_VALUES:Ljava/util/List;

    new-array v6, v3, [Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v7, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v7, v6, v5

    sget-object v7, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v7, v6, v2

    sget-object v7, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v7, v6, v0

    sget-object v19, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v19, v6, v4

    const-string v21, "KindleCardDownloadedItemsSortKey"

    move-object v15, v1

    move-object/from16 v18, v6

    invoke-direct/range {v15 .. v22}, Lcom/amazon/kcp/library/LibraryContentFilter$17;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V

    sput-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->NON_GROUP_DOWNLOADED_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 408
    new-instance v1, Lcom/amazon/kcp/library/LibraryContentFilter$18;

    sget-object v8, Lcom/amazon/kcp/library/LibraryContentFilter;->ON_DEVICE_ITEMS:Ljava/lang/String;

    sget-object v9, Lcom/amazon/kcp/library/LibraryContentFilter;->ON_DEVICE_ITEMS_ARGS:Ljava/util/List;

    new-array v10, v3, [Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v6, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v6, v10, v5

    sget-object v6, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v6, v10, v2

    sget-object v6, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v6, v10, v0

    sget-object v11, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v11, v10, v4

    const/4 v12, 0x0

    const-string v13, "DownloadedItemsSortKey"

    const/4 v14, 0x1

    move-object v7, v1

    invoke-direct/range {v7 .. v14}, Lcom/amazon/kcp/library/LibraryContentFilter$18;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V

    sput-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->DOWNLOADED_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 425
    new-instance v15, Lcom/amazon/kcp/library/LibraryContentFilter$19;

    sget-object v16, Lcom/amazon/kcp/library/LibraryContentFilter;->READING_FILTER_FIELDS:Ljava/lang/String;

    sget-object v17, Lcom/amazon/kcp/library/LibraryContentFilter;->READING_FILTER_FIELD_VALUES:Ljava/util/List;

    new-array v1, v3, [Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v6, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v6, v1, v5

    sget-object v6, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v6, v1, v2

    sget-object v6, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v6, v1, v0

    sget-object v19, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v19, v1, v4

    const-string v21, "ReadingItemsSortKey"

    const/16 v22, 0x1

    move-object/from16 v18, v1

    invoke-direct/range {v15 .. v22}, Lcom/amazon/kcp/library/LibraryContentFilter$19;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V

    .line 444
    new-instance v6, Lcom/amazon/kcp/library/LibraryContentFilter$20;

    sget-object v7, Lcom/amazon/kcp/library/LibraryContentFilter;->READING_FILTER_FIELDS_FALKOR:Ljava/lang/String;

    sget-object v8, Lcom/amazon/kcp/library/LibraryContentFilter;->READING_FILTER_FIELD_VALUES:Ljava/util/List;

    new-array v9, v3, [Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v1, v9, v5

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v1, v9, v2

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v1, v9, v0

    sget-object v10, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v10, v9, v4

    const/4 v11, 0x0

    const-string v12, "ReadingItemsSortKey"

    const/4 v13, 0x1

    invoke-direct/range {v6 .. v13}, Lcom/amazon/kcp/library/LibraryContentFilter$20;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V

    .line 463
    new-instance v14, Lcom/amazon/kcp/library/LibraryContentFilter$21;

    sget-object v15, Lcom/amazon/kcp/library/LibraryContentFilter;->NEW_PURCHASE_FILTER_FIELDS:Ljava/lang/String;

    sget-object v16, Lcom/amazon/kcp/library/LibraryContentFilter;->NEW_PURCHASE_FILTER_ARGS:Ljava/util/List;

    new-array v1, v3, [Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v6, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v6, v1, v5

    sget-object v6, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v6, v1, v2

    sget-object v6, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v6, v1, v0

    sget-object v18, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v18, v1, v4

    const/16 v19, 0x0

    const-string v20, "NewPurchaseItemsSortKey"

    const/16 v21, 0x1

    move-object/from16 v17, v1

    invoke-direct/range {v14 .. v21}, Lcom/amazon/kcp/library/LibraryContentFilter$21;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V

    .line 486
    new-instance v6, Lcom/amazon/kcp/library/LibraryContentFilter$22;

    sget-object v7, Lcom/amazon/kcp/library/LibraryContentFilter;->FALKOR_NEW_PURCHASE_FILTER_FIELDS:Ljava/lang/String;

    sget-object v8, Lcom/amazon/kcp/library/LibraryContentFilter;->NEW_PURCHASE_FILTER_ARGS:Ljava/util/List;

    new-array v9, v3, [Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v1, v9, v5

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v1, v9, v2

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v1, v9, v0

    sget-object v10, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v10, v9, v4

    const-string v12, "NewPurchaseItemsSortKey"

    invoke-direct/range {v6 .. v13}, Lcom/amazon/kcp/library/LibraryContentFilter$22;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Lcom/amazon/kcp/library/LibrarySortType;",
            "Lcom/amazon/kcp/library/LibrarySortType;",
            "Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->filter:Ljava/lang/String;

    .line 564
    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->filterArgs:Ljava/util/List;

    .line 565
    iput-boolean p7, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->consolidated:Z

    if-eqz p3, :cond_2

    .line 568
    array-length p1, p3

    if-eqz p1, :cond_2

    .line 571
    iput-object p3, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->supportedSortTypes:[Lcom/amazon/kcp/library/LibrarySortType;

    .line 572
    invoke-virtual {p0, p4}, Lcom/amazon/kcp/library/LibraryContentFilter;->supportsSortType(Lcom/amazon/kcp/library/LibrarySortType;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 576
    invoke-static {p6}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 580
    iput-object p4, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->defaultSortType:Lcom/amazon/kcp/library/LibrarySortType;

    .line 581
    iput-object p5, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->libraryDisplayItemPredicate:Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;

    .line 582
    iput-object p6, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->sortPersistenceKey:Ljava/lang/String;

    return-void

    .line 577
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "sortPersistenceKey is null/empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 573
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p4, p2, p5

    const/4 p4, 0x1

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, p4

    const-string p3, "defaultSortType (%s) not in supportedSortTypes (%s)"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 569
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "null/empty supportedSortTypes provided"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static createAllItemsFilter([Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Ljava/lang/String;)Lcom/amazon/kcp/library/LibraryContentFilter;
    .locals 9

    .line 218
    new-instance v8, Lcom/amazon/kcp/library/LibraryContentFilter$7;

    sget-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->ALL_ITEMS:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kcp/library/LibraryContentFilter;->ALL_ITEMS_ARGS:Ljava/util/List;

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/library/LibraryContentFilter$7;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V

    return-object v8
.end method

.method protected static isFreeDictionary(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 1

    .line 689
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object p0

    sget-object v0, Lcom/amazon/kindle/model/content/DictionaryType;->FREE_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isVisibleToUser(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 1

    .line 480
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->isOwned()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/amazon/kcp/library/LibraryContentFilter;->isFreeDictionary(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getIsHidden()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 660
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 664
    :cond_1
    check-cast p1, Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 666
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->consolidated:Z

    iget-boolean v2, p1, Lcom/amazon/kcp/library/LibraryContentFilter;->consolidated:Z

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(ZZ)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->defaultSortType:Lcom/amazon/kcp/library/LibrarySortType;

    iget-object v2, p1, Lcom/amazon/kcp/library/LibraryContentFilter;->defaultSortType:Lcom/amazon/kcp/library/LibrarySortType;

    .line 667
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->filter:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/kcp/library/LibraryContentFilter;->filter:Ljava/lang/String;

    .line 668
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->filterArgs:Ljava/util/List;

    iget-object v2, p1, Lcom/amazon/kcp/library/LibraryContentFilter;->filterArgs:Ljava/util/List;

    .line 669
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->sortPersistenceKey:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/kcp/library/LibraryContentFilter;->sortPersistenceKey:Ljava/lang/String;

    .line 670
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->supportedSortTypes:[Lcom/amazon/kcp/library/LibrarySortType;

    iget-object v2, p1, Lcom/amazon/kcp/library/LibraryContentFilter;->supportedSortTypes:[Lcom/amazon/kcp/library/LibrarySortType;

    .line 671
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->libraryDisplayItemPredicate:Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;

    iget-object p1, p1, Lcom/amazon/kcp/library/LibraryContentFilter;->libraryDisplayItemPredicate:Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;

    .line 672
    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    .line 673
    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->build()Ljava/lang/Boolean;

    move-result-object p1

    .line 666
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getFilter()Ljava/lang/String;
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->filter:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterArgs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 607
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->filterArgs:Ljava/util/List;

    return-object v0
.end method

.method public getPredicate()Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->libraryDisplayItemPredicate:Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;

    return-object v0
.end method

.method public getSortPersistKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 621
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->sortPersistenceKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedSortTypes()[Lcom/amazon/kcp/library/LibrarySortType;
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->supportedSortTypes:[Lcom/amazon/kcp/library/LibrarySortType;

    return-object v0
.end method

.method public getTableToQuery(Lcom/amazon/kindle/krx/library/LibraryGroupType;)Ljava/lang/String;
    .locals 0

    .line 630
    sget-object p1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_TABLES:Ljava/lang/String;

    return-object p1
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .line 634
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 678
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->filter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->filterArgs:Ljava/util/List;

    .line 679
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    iget-boolean v1, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->consolidated:Z

    .line 680
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Z)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->supportedSortTypes:[Lcom/amazon/kcp/library/LibrarySortType;

    .line 681
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append([Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->defaultSortType:Lcom/amazon/kcp/library/LibrarySortType;

    .line 682
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->sortPersistenceKey:Ljava/lang/String;

    .line 683
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->libraryDisplayItemPredicate:Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;

    .line 684
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    .line 685
    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->build()Ljava/lang/Integer;

    move-result-object v0

    .line 678
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isConsolidated()Z
    .locals 1

    .line 611
    iget-boolean v0, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->consolidated:Z

    return v0
.end method

.method public matches(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public shouldGroupSeries()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSortType(Lcom/amazon/kcp/library/LibrarySortType;)Z
    .locals 5

    .line 590
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->supportedSortTypes:[Lcom/amazon/kcp/library/LibrarySortType;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-ne v4, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
