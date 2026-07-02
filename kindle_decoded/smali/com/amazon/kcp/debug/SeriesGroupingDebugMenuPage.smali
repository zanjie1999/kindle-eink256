.class public Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "SeriesGroupingDebugMenuPage.java"


# static fields
.field private static final DIRECTORY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final VOLUME_STRING:Ljava/lang/String; = "Volume"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-class v0, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;->TAG:Ljava/lang/String;

    .line 58
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;->DIRECTORY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;->context:Landroid/content/Context;

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 63
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    check-cast p1, Landroid/app/Activity;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initializeAddSeriesBookButton(Landroid/view/ViewGroup;)V
    .locals 1

    .line 189
    sget v0, Lcom/amazon/kindle/krl/R$id;->add_series_book_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-nez p1, :cond_0

    return-void

    .line 193
    :cond_0
    new-instance v0, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage$7;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage$7;-><init>(Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeComicsFilterToggle(Landroid/view/ViewGroup;)V
    .locals 3

    .line 94
    sget v0, Lcom/amazon/kindle/krl/R$id;->enable_comics_filter_checkbox:I

    .line 95
    invoke-static {}, Lcom/amazon/kcp/util/GroupContentUtils;->isComicFilterDebugEnabled()Z

    move-result v1

    const/4 v2, 0x0

    .line 94
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;->initializeDebugCheckbox(Landroid/view/ViewGroup;IZZ)Landroid/widget/CheckBox;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 99
    :cond_0
    new-instance v0, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage$1;-><init>(Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeDebugCheckbox(Landroid/view/ViewGroup;IZZ)Landroid/widget/CheckBox;
    .locals 0

    .line 410
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    .line 412
    invoke-virtual {p1, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-object p1
.end method

.method private initializeDeleteButton(Landroid/view/ViewGroup;)V
    .locals 1

    .line 161
    sget v0, Lcom/amazon/kindle/krl/R$id;->delete_all_group_data_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-nez p1, :cond_0

    return-void

    .line 165
    :cond_0
    new-instance v0, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage$5;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage$5;-><init>(Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeDeleteSeriesBookButton(Landroid/view/ViewGroup;)V
    .locals 1

    .line 255
    sget v0, Lcom/amazon/kindle/krl/R$id;->delete_series_book_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-nez p1, :cond_0

    return-void

    .line 259
    :cond_0
    new-instance v0, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage$9;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage$9;-><init>(Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeDeleteUserContentButton(Landroid/view/ViewGroup;)V
    .locals 1

    .line 280
    sget v0, Lcom/amazon/kindle/krl/R$id;->delete_user_content_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-nez p1, :cond_0

    return-void

    .line 284
    :cond_0
    new-instance v0, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage$10;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage$10;-><init>(Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeLoadButton(Landroid/view/ViewGroup;)V
    .locals 1

    .line 176
    sget v0, Lcom/amazon/kindle/krl/R$id;->load_test_series_data_from_file_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-nez p1, :cond_0

    return-void

    .line 180
    :cond_0
    new-instance v0, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage$6;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage$6;-><init>(Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeSeriesCoverImageToggle(Landroid/view/ViewGroup;)V
    .locals 3

    .line 108
    sget v0, Lcom/amazon/kindle/krl/R$id;->enable_series_cover_image_checkbox:I

    .line 109
    invoke-static {}, Lcom/amazon/kcp/util/GroupContentUtils;->isSeriesCoverImageDebugEnabled()Z

    move-result v1

    const/4 v2, 0x0

    .line 108
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;->initializeDebugCheckbox(Landroid/view/ViewGroup;IZZ)Landroid/widget/CheckBox;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 113
    :cond_0
    new-instance v0, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage$2;-><init>(Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeSeriesUpsellToggle(Landroid/view/ViewGroup;)V
    .locals 3

    .line 147
    sget v0, Lcom/amazon/kindle/krl/R$id;->enable_series_upsell_checkbox:I

    .line 148
    invoke-static {}, Lcom/amazon/kcp/util/GroupContentUtils;->isSeriesUpsellDebugEnabled()Z

    move-result v1

    const/4 v2, 0x0

    .line 147
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;->initializeDebugCheckbox(Landroid/view/ViewGroup;IZZ)Landroid/widget/CheckBox;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 152
    :cond_0
    new-instance v0, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage$4;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage$4;-><init>(Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeSetIsComicButton(Landroid/view/ViewGroup;)V
    .locals 2

    .line 122
    sget v0, Lcom/amazon/kindle/krl/R$id;->set_is_comic_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    new-instance v1, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage$3;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage$3;-><init>(Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeUpdateSeriesBookButton(Landroid/view/ViewGroup;)V
    .locals 1

    .line 222
    sget v0, Lcom/amazon/kindle/krl/R$id;->update_series_book_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-nez p1, :cond_0

    return-void

    .line 226
    :cond_0
    new-instance v0, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage$8;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage$8;-><init>(Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeUpdateUserContentButton(Landroid/view/ViewGroup;)V
    .locals 1

    .line 304
    sget v0, Lcom/amazon/kindle/krl/R$id;->set_last_accessed_now_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-nez p1, :cond_0

    return-void

    .line 308
    :cond_0
    new-instance v0, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage$11;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage$11;-><init>(Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private loadTestSeriesDataFromFile(Ljava/lang/String;)V
    .locals 2

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading test series data from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string/jumbo v0, "xml"

    .line 345
    invoke-static {p1, v0}, Lorg/apache/commons/io/FilenameUtils;->isExtension(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;->parseXmlFile(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    .line 352
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;->parseSimpleTextFile(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    return-void
.end method

.method private parseSimpleTextFile(Ljava/lang/String;)Z
    .locals 10

    .line 384
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    new-instance v1, Lcom/amazon/kindle/content/GroupMetadata;

    new-instance v2, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_SERIES_GROUP:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v2, v0, v3}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_SERIES_GROUP:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v1, v2, v0, v3}, Lcom/amazon/kindle/content/GroupMetadata;-><init>(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    const/4 v0, 0x0

    .line 389
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 391
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    const-string v4, "\\t"

    const/4 v5, -0x1

    .line 392
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 393
    aget-object v8, p1, v0

    .line 394
    new-instance v5, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    aget-object p1, p1, v3

    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v5, p1, v3}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    .line 395
    new-instance p1, Lcom/amazon/kindle/content/GroupItemMetadata;

    const-string v6, "Volume"

    .line 396
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const-string v9, ""

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/amazon/kindle/content/GroupItemMetadata;-><init>(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {v1, p1}, Lcom/amazon/kindle/content/GroupMetadata;->addGroupContent(Lcom/amazon/kindle/content/GroupItemMetadata;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 404
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getGroupService()Lcom/amazon/kindle/content/IGroupService;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/amazon/kindle/content/IGroupService;->addGroup(Lcom/amazon/kindle/content/GroupMetadata;)V

    return v3

    :catch_0
    move-exception p1

    .line 401
    sget-object v1, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;->TAG:Ljava/lang/String;

    const-string v2, "Problem reading text file: "

    invoke-static {v1, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private parseXmlFile(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    .line 360
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    const-string v2, "http://xml.org/sax/features/external-general-entities"

    .line 362
    invoke-virtual {v1, v2, v0}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    const-string v2, "http://xml.org/sax/features/external-parameter-entities"

    .line 363
    invoke-virtual {v1, v2, v0}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    .line 364
    new-instance v2, Lcom/amazon/kcp/library/models/internal/SyncMetadata;

    invoke-direct {v2}, Lcom/amazon/kcp/library/models/internal/SyncMetadata;-><init>()V

    .line 365
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 366
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object v3

    const-string v4, "last_syncmetadata_server_date"

    invoke-interface {v3, v4}, Lcom/amazon/kindle/persistence/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 367
    invoke-virtual {v2, v3}, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->setSyncTime(Ljava/lang/String;)V

    .line 368
    new-instance v3, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;

    .line 369
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v4

    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v5

    .line 370
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverManager()Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;-><init>(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kindle/cover/ICoverImageService;Lcom/amazon/kcp/library/models/internal/ISyncMetadata;)V

    .line 371
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 372
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 377
    sget-object v1, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;->TAG:Ljava/lang/String;

    const-string v2, "XML Parser Error: "

    invoke-static {v1, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    .line 374
    :goto_0
    sget-object v1, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not set feature when parsing XML file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Dexter Series Grouping"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 77
    sget v1, Lcom/amazon/kindle/krl/R$layout;->debug_series_grouping:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 79
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;->initializeComicsFilterToggle(Landroid/view/ViewGroup;)V

    .line 80
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;->initializeSeriesCoverImageToggle(Landroid/view/ViewGroup;)V

    .line 81
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;->initializeDeleteButton(Landroid/view/ViewGroup;)V

    .line 82
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;->initializeLoadButton(Landroid/view/ViewGroup;)V

    .line 83
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;->initializeAddSeriesBookButton(Landroid/view/ViewGroup;)V

    .line 84
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;->initializeUpdateSeriesBookButton(Landroid/view/ViewGroup;)V

    .line 85
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;->initializeDeleteSeriesBookButton(Landroid/view/ViewGroup;)V

    .line 86
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;->initializeDeleteUserContentButton(Landroid/view/ViewGroup;)V

    .line 87
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;->initializeUpdateUserContentButton(Landroid/view/ViewGroup;)V

    .line 88
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;->initializeSetIsComicButton(Landroid/view/ViewGroup;)V

    .line 89
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;->initializeSeriesUpsellToggle(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public onLoadTestSeriesData(Landroid/view/View;)V
    .locals 1

    .line 329
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    sget v0, Lcom/amazon/kindle/krl/R$id;->series_group_filename:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz p1, :cond_1

    .line 331
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 332
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 337
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;->loadTestSeriesDataFromFile(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
