.class public Lcom/amazon/kindle/socialsharing/util/ContentUtil;
.super Ljava/lang/Object;
.source "ContentUtil.java"


# static fields
.field private static final ASIN_PATTERN:Ljava/util/regex/Pattern;

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocialSharing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/amazon/kindle/socialsharing/util/ContentUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->LOG_TAG:Ljava/lang/String;

    const-string v0, "[0-9A-Z]{10}"

    .line 43
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->ASIN_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPosition(I)Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 144
    invoke-static {}, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v0

    if-nez v0, :cond_0

    .line 146
    sget-object p0, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->LOG_TAG:Ljava/lang/String;

    const-string v0, "error creating position, unable to get current book position factory"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 149
    :cond_0
    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p0

    return-object p0
.end method

.method public static getBookFromAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;
    .locals 2

    .line 178
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 180
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 183
    :cond_0
    sget-object v0, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Current book doesn\'t match the given asin."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 195
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p0

    return-object p0
.end method

.method private static getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/reader/IPositionFactory<",
            "*>;"
        }
    .end annotation

    .line 120
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 122
    sget-object v0, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->LOG_TAG:Ljava/lang/String;

    const-string v2, "error creating position, unable to get current book navigator"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 127
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 129
    sget-object v2, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->LOG_TAG:Ljava/lang/String;

    const-string v3, "error creating position, sdk claims illegal state"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public static getStoryAsinForFalkorEpisode(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 212
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object p1

    .line 213
    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getGroupIdFromItem(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 216
    :try_start_0
    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/library/ILibraryManager;->parseForAsinFromBookId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p0, p1, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 218
    :catch_0
    sget-object p1, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->LOG_TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "Falkor story groupId %s not in proper format"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isBookFalkorStory(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    .line 231
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-nez p0, :cond_0

    return-object v1

    .line 232
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 234
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getGroupFromGroupId(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/BookGroup;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    .line 236
    :cond_2
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/BookGroup;->getGroupItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/BookGroup;->getGroupItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/content/BookGroupItem;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/BookGroupItem;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static isEndOfBook(Landroid/content/res/Resources;I)Z
    .locals 1

    .line 247
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$integer;->share_progress_end_of_book_threshold:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidAsin(Ljava/lang/String;)Z
    .locals 3

    .line 260
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->ASIN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 262
    :cond_1
    :goto_0
    sget-object v0, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asin is invalid! - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static selectText(IILcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;)Z
    .locals 2

    .line 90
    invoke-static {p0}, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->createPosition(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p0

    .line 91
    invoke-static {p1}, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->createPosition(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 93
    invoke-interface {p0, p1}, Lcom/amazon/kindle/krx/reader/IPosition;->isAfter(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 98
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 101
    sget-object p0, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Was not able to select text, reader manager was null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 105
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookSelection()Lcom/amazon/kindle/krx/content/IContentSelection;

    move-result-object v0

    if-nez v0, :cond_1

    .line 108
    sget-object p0, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Was not able to select text, CurrentBookSelection() was null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 111
    :cond_1
    invoke-interface {v0, p0, p1, p2}, Lcom/amazon/kindle/krx/content/IContentSelection;->setSelection(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;)V

    const/4 p0, 0x1

    return p0

    .line 94
    :cond_2
    sget-object p0, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Start position is greater than end position; cannot select text"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
