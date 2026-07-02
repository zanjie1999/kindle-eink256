.class public final enum Lcom/amazon/kcp/library/LibrarySortType;
.super Ljava/lang/Enum;
.source "LibrarySortType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/library/LibrarySortType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/library/LibrarySortType;

.field public static final enum SORT_TYPE_AUTHOR:Lcom/amazon/kcp/library/LibrarySortType;

.field public static final enum SORT_TYPE_AUTHOR_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

.field public static final enum SORT_TYPE_CUSTOM:Lcom/amazon/kcp/library/LibrarySortType;

.field public static final enum SORT_TYPE_ORDERED:Lcom/amazon/kcp/library/LibrarySortType;

.field public static final enum SORT_TYPE_PUBLICATION_DATE:Lcom/amazon/kcp/library/LibrarySortType;

.field public static final enum SORT_TYPE_PUBLICATION_DATE_SERIES:Lcom/amazon/kcp/library/LibrarySortType;

.field public static final enum SORT_TYPE_PUBLICATION_DATE_SERIES_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

.field public static final enum SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

.field public static final enum SORT_TYPE_SERIES_ORDER:Lcom/amazon/kcp/library/LibrarySortType;

.field public static final enum SORT_TYPE_SERIES_ORDER_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

.field public static final enum SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 8
    new-instance v0, Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v1, 0x0

    const-string v2, "SORT_TYPE_RECENT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/library/LibrarySortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    .line 9
    new-instance v0, Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v2, 0x1

    const-string v3, "SORT_TYPE_TITLE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/library/LibrarySortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    .line 10
    new-instance v0, Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v3, 0x2

    const-string v4, "SORT_TYPE_AUTHOR"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/library/LibrarySortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR:Lcom/amazon/kcp/library/LibrarySortType;

    .line 11
    new-instance v0, Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v4, 0x3

    const-string v5, "SORT_TYPE_AUTHOR_REVERSE"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kcp/library/LibrarySortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    .line 12
    new-instance v0, Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v5, 0x4

    const-string v6, "SORT_TYPE_CUSTOM"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kcp/library/LibrarySortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_CUSTOM:Lcom/amazon/kcp/library/LibrarySortType;

    .line 13
    new-instance v0, Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v6, 0x5

    const-string v7, "SORT_TYPE_ORDERED"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kcp/library/LibrarySortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_ORDERED:Lcom/amazon/kcp/library/LibrarySortType;

    .line 14
    new-instance v0, Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v7, 0x6

    const-string v8, "SORT_TYPE_PUBLICATION_DATE"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kcp/library/LibrarySortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_PUBLICATION_DATE:Lcom/amazon/kcp/library/LibrarySortType;

    .line 15
    new-instance v0, Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v8, 0x7

    const-string v9, "SORT_TYPE_PUBLICATION_DATE_SERIES"

    invoke-direct {v0, v9, v8}, Lcom/amazon/kcp/library/LibrarySortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_PUBLICATION_DATE_SERIES:Lcom/amazon/kcp/library/LibrarySortType;

    .line 16
    new-instance v0, Lcom/amazon/kcp/library/LibrarySortType;

    const/16 v9, 0x8

    const-string v10, "SORT_TYPE_PUBLICATION_DATE_SERIES_REVERSE"

    invoke-direct {v0, v10, v9}, Lcom/amazon/kcp/library/LibrarySortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_PUBLICATION_DATE_SERIES_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    .line 17
    new-instance v0, Lcom/amazon/kcp/library/LibrarySortType;

    const/16 v10, 0x9

    const-string v11, "SORT_TYPE_SERIES_ORDER"

    invoke-direct {v0, v11, v10}, Lcom/amazon/kcp/library/LibrarySortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_SERIES_ORDER:Lcom/amazon/kcp/library/LibrarySortType;

    .line 18
    new-instance v0, Lcom/amazon/kcp/library/LibrarySortType;

    const/16 v11, 0xa

    const-string v12, "SORT_TYPE_SERIES_ORDER_REVERSE"

    invoke-direct {v0, v12, v11}, Lcom/amazon/kcp/library/LibrarySortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_SERIES_ORDER_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    const/16 v12, 0xb

    new-array v12, v12, [Lcom/amazon/kcp/library/LibrarySortType;

    .line 7
    sget-object v13, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v13, v12, v1

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v1, v12, v3

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v1, v12, v4

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_CUSTOM:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v1, v12, v5

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_ORDERED:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v1, v12, v6

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_PUBLICATION_DATE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v1, v12, v7

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_PUBLICATION_DATE_SERIES:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v1, v12, v8

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_PUBLICATION_DATE_SERIES_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v1, v12, v9

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_SERIES_ORDER:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v1, v12, v10

    aput-object v0, v12, v11

    sput-object v12, Lcom/amazon/kcp/library/LibrarySortType;->$VALUES:[Lcom/amazon/kcp/library/LibrarySortType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/LibrarySortType;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/kcp/library/LibrarySortType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/LibrarySortType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/library/LibrarySortType;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/kcp/library/LibrarySortType;->$VALUES:[Lcom/amazon/kcp/library/LibrarySortType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/library/LibrarySortType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/library/LibrarySortType;

    return-object v0
.end method
