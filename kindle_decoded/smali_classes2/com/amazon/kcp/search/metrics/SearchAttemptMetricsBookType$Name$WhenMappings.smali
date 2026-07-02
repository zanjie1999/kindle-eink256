.class public final synthetic Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType$Name$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/amazon/kcp/library/models/BookType;->values()[Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType$Name$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType$Name$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType$Name$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType$Name$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PSNL:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType$Name$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType$Name$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType$Name$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType$Name$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_AUDIBLE_AUDIOBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType$Name$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_OFFICE_DOC:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType$Name$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_CLOUD_DOC:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType$Name$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_SERIES_GROUP:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType$Name$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_PERIODICAL_GROUP:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1

    return-void
.end method
