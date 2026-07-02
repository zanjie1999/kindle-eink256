.class synthetic Lcom/amazon/kcp/cover/DefaultCoverBackgroundProvider$1;
.super Ljava/lang/Object;
.source "DefaultCoverBackgroundProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/cover/DefaultCoverBackgroundProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kcp$library$models$BookType:[I

.field static final synthetic $SwitchMap$com$amazon$kindle$content$BookContentType$ContentType:[I

.field static final synthetic $SwitchMap$com$amazon$kindle$cover$ImageSizes$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 19
    invoke-static {}, Lcom/amazon/kcp/library/models/BookType;->values()[Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/cover/DefaultCoverBackgroundProvider$1;->$SwitchMap$com$amazon$kcp$library$models$BookType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/amazon/kcp/cover/DefaultCoverBackgroundProvider$1;->$SwitchMap$com$amazon$kcp$library$models$BookType:[I

    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_OFFICE_DOC:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/amazon/kcp/cover/DefaultCoverBackgroundProvider$1;->$SwitchMap$com$amazon$kcp$library$models$BookType:[I

    sget-object v4, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PSNL:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v3, Lcom/amazon/kcp/cover/DefaultCoverBackgroundProvider$1;->$SwitchMap$com$amazon$kcp$library$models$BookType:[I

    sget-object v4, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/amazon/kcp/cover/DefaultCoverBackgroundProvider$1;->$SwitchMap$com$amazon$kcp$library$models$BookType:[I

    sget-object v4, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 24
    :catch_4
    invoke-static {}, Lcom/amazon/kindle/cover/ImageSizes$Type;->values()[Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/amazon/kcp/cover/DefaultCoverBackgroundProvider$1;->$SwitchMap$com$amazon$kindle$cover$ImageSizes$Type:[I

    :try_start_5
    sget-object v4, Lcom/amazon/kindle/cover/ImageSizes$Type;->MEDIUM:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v3, Lcom/amazon/kcp/cover/DefaultCoverBackgroundProvider$1;->$SwitchMap$com$amazon$kindle$cover$ImageSizes$Type:[I

    sget-object v4, Lcom/amazon/kindle/cover/ImageSizes$Type;->EXPLORE:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/amazon/kcp/cover/DefaultCoverBackgroundProvider$1;->$SwitchMap$com$amazon$kindle$cover$ImageSizes$Type:[I

    sget-object v3, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 27
    :catch_7
    invoke-static {}, Lcom/amazon/kindle/content/BookContentType$ContentType;->values()[Lcom/amazon/kindle/content/BookContentType$ContentType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/cover/DefaultCoverBackgroundProvider$1;->$SwitchMap$com$amazon$kindle$content$BookContentType$ContentType:[I

    :try_start_8
    sget-object v2, Lcom/amazon/kindle/content/BookContentType$ContentType;->PDF:Lcom/amazon/kindle/content/BookContentType$ContentType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method
