.class synthetic Lcom/amazon/kcp/library/LibraryContentInteractionHandler$27;
.super Ljava/lang/Object;
.source "LibraryContentInteractionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/LibraryContentInteractionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kcp$library$LibrarySortType:[I

.field static final synthetic $SwitchMap$com$amazon$kindle$krx$library$LibraryView:[I

.field static final synthetic $SwitchMap$com$amazon$kindle$krx$library$LibraryViewType:[I

.field static final synthetic $SwitchMap$com$amazon$kindle$krx$ui$ComponentStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1471
    invoke-static {}, Lcom/amazon/kindle/krx/ui/ComponentStatus;->values()[Lcom/amazon/kindle/krx/ui/ComponentStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$27;->$SwitchMap$com$amazon$kindle$krx$ui$ComponentStatus:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/amazon/kindle/krx/ui/ComponentStatus;->DISABLED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$27;->$SwitchMap$com$amazon$kindle$krx$ui$ComponentStatus:[I

    sget-object v3, Lcom/amazon/kindle/krx/ui/ComponentStatus;->GONE:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 836
    :catch_1
    invoke-static {}, Lcom/amazon/kindle/krx/library/LibraryViewType;->values()[Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$27;->$SwitchMap$com$amazon$kindle$krx$library$LibraryViewType:[I

    :try_start_2
    sget-object v3, Lcom/amazon/kindle/krx/library/LibraryViewType;->GRID:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$27;->$SwitchMap$com$amazon$kindle$krx$library$LibraryViewType:[I

    sget-object v3, Lcom/amazon/kindle/krx/library/LibraryViewType;->LIST:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 805
    :catch_3
    invoke-static {}, Lcom/amazon/kcp/library/LibrarySortType;->values()[Lcom/amazon/kcp/library/LibrarySortType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$27;->$SwitchMap$com$amazon$kcp$library$LibrarySortType:[I

    :try_start_4
    sget-object v3, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v2, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$27;->$SwitchMap$com$amazon$kcp$library$LibrarySortType:[I

    sget-object v3, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v2, 0x3

    :try_start_6
    sget-object v3, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$27;->$SwitchMap$com$amazon$kcp$library$LibrarySortType:[I

    sget-object v4, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/4 v3, 0x4

    :try_start_7
    sget-object v4, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$27;->$SwitchMap$com$amazon$kcp$library$LibrarySortType:[I

    sget-object v5, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/4 v4, 0x5

    :try_start_8
    sget-object v5, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$27;->$SwitchMap$com$amazon$kcp$library$LibrarySortType:[I

    sget-object v6, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_PUBLICATION_DATE:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v5, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$27;->$SwitchMap$com$amazon$kcp$library$LibrarySortType:[I

    sget-object v6, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_CUSTOM:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x6

    aput v7, v5, v6
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 771
    :catch_9
    invoke-static {}, Lcom/amazon/kindle/krx/library/LibraryView;->values()[Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$27;->$SwitchMap$com$amazon$kindle$krx$library$LibraryView:[I

    :try_start_a
    sget-object v6, Lcom/amazon/kindle/krx/library/LibraryView;->HOME:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v1, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$27;->$SwitchMap$com$amazon$kindle$krx$library$LibraryView:[I

    sget-object v5, Lcom/amazon/kindle/krx/library/LibraryView;->BOOKS:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v1, v5
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$27;->$SwitchMap$com$amazon$kindle$krx$library$LibraryView:[I

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryView;->NEWSSTAND:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$27;->$SwitchMap$com$amazon$kindle$krx$library$LibraryView:[I

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryView;->BACK_ISSUES:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$27;->$SwitchMap$com$amazon$kindle$krx$library$LibraryView:[I

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryView;->COLLECTION_ITEMS:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    return-void
.end method
