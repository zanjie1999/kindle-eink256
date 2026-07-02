.class public final Lcom/audible/android/kcp/companion/HushpuppyCompanionManager;
.super Ljava/lang/Object;
.source "HushpuppyCompanionManager.java"

# interfaces
.implements Lcom/audible/android/kcp/companion/CompanionManager;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final SELECT_BY_AUDIOBOOK_ASIN:Ljava/lang/String;

.field private static final SELECT_BY_EBOOK_ASIN:Ljava/lang/String;

.field public static final SELECT_COMPANION_EBOOK:Ljava/lang/String;

.field private static final SELECT_COMPANION_WITHOUT_VERSION:Ljava/lang/String;

.field private static final SELECT_COMPANION_WITHOUT_VERSION_OR_FORMAT:Ljava/lang/String;

.field private static final SELECT_UPGRADABLE_BOOKS:Ljava/lang/String;

.field private static final SELECT_UPGRADE_WITHOUT_VERSION:Ljava/lang/String;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mEBookFormatter:Lcom/audible/android/kcp/companion/AiREBookFormatter;

.field private final mRelationshipTableContentUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 36
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/companion/HushpuppyCompanionManager;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/companion/HushpuppyCompanionManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 38
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "e_asin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " = ? AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "e_format"

    .line 39
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "is_matched"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " > 0 "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/companion/HushpuppyCompanionManager;->SELECT_COMPANION_WITHOUT_VERSION:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/companion/HushpuppyCompanionManager;->SELECT_COMPANION_WITHOUT_VERSION_OR_FORMAT:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " = 0 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/companion/HushpuppyCompanionManager;->SELECT_UPGRADE_WITHOUT_VERSION:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/companion/HushpuppyCompanionManager;->SELECT_UPGRADABLE_BOOKS:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "a_asin"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, " = ?"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/companion/HushpuppyCompanionManager;->SELECT_BY_AUDIOBOOK_ASIN:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/companion/HushpuppyCompanionManager;->SELECT_BY_EBOOK_ASIN:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " = ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/companion/HushpuppyCompanionManager;->SELECT_COMPANION_EBOOK:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/android/kcp/companion/HushpuppyCompanionManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 68
    invoke-static {}, Lcom/audible/android/kcp/companion/AiREBookFormatter;->getInstance()Lcom/audible/android/kcp/companion/AiREBookFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/android/kcp/companion/HushpuppyCompanionManager;->mEBookFormatter:Lcom/audible/android/kcp/companion/AiREBookFormatter;

    const-string v0, "relationships"

    .line 69
    invoke-static {p1, v0}, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->getTableUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/android/kcp/companion/HushpuppyCompanionManager;->mRelationshipTableContentUri:Landroid/net/Uri;

    return-void
.end method

.method private isEBookCompanionValid(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 250
    sget-object p1, Lcom/audible/android/kcp/companion/HushpuppyCompanionManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Passing null IBook is not allowed!"

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return v0

    .line 254
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 255
    sget-object p1, Lcom/audible/android/kcp/companion/HushpuppyCompanionManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "IBook doesn\'t have ASIN. Is this a sideloaded book?"

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private queryForAsin(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/audible/mobile/domain/Asin;
    .locals 0

    .line 267
    invoke-direct {p0, p1, p2, p3}, Lcom/audible/android/kcp/companion/HushpuppyCompanionManager;->querySingleValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 268
    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 269
    sget-object p1, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    return-object p1

    .line 271
    :cond_0
    new-instance p2, Lcom/audible/mobile/domain/ImmutableAsinImpl;

    invoke-direct {p2, p1}, Lcom/audible/mobile/domain/ImmutableAsinImpl;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method private querySingleValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v3, v0

    const/4 v0, 0x0

    .line 318
    :try_start_0
    iget-object v1, p0, Lcom/audible/android/kcp/companion/HushpuppyCompanionManager;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/audible/android/kcp/companion/HushpuppyCompanionManager;->mRelationshipTableContentUri:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p2, :cond_1

    .line 321
    :try_start_1
    sget-object p1, Lcom/audible/android/kcp/companion/HushpuppyCompanionManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p3, "Querying got null cursor!"

    invoke-interface {p1, p3}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_0

    .line 330
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    .line 325
    :cond_1
    :try_start_2
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 326
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_2

    .line 330
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1

    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 334
    :cond_4
    sget-object p2, Lcom/audible/android/kcp/companion/HushpuppyCompanionManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p3, "%s not found!"

    invoke-interface {p2, p3, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception p1

    move-object v0, p2

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_5

    .line 330
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 332
    :cond_5
    throw p1
.end method


# virtual methods
.method public getCompanionEbookAsin(Ljava/lang/String;)Lcom/audible/mobile/domain/Asin;
    .locals 3

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    sget-object p1, Lcom/audible/android/kcp/companion/HushpuppyCompanionManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Passing empty or null audiobook asin is not allowed"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 107
    sget-object p1, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    return-object p1

    .line 110
    :cond_0
    sget-object v0, Lcom/audible/android/kcp/companion/HushpuppyCompanionManager;->SELECT_COMPANION_EBOOK:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "e_asin"

    .line 114
    invoke-direct {p0, p1, v0, v1}, Lcom/audible/android/kcp/companion/HushpuppyCompanionManager;->queryForAsin(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    return-object p1
.end method

.method public getPurchasedAudiobookAsin(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/mobile/domain/Asin;
    .locals 1

    .line 76
    invoke-direct {p0, p1}, Lcom/audible/android/kcp/companion/HushpuppyCompanionManager;->isEBookCompanionValid(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    sget-object p1, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    return-object p1

    .line 80
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/mobile/domain/ImmutableAsinImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/audible/android/kcp/companion/HushpuppyCompanionManager;->getPurchasedAudiobookAsin(Lcom/audible/mobile/domain/Asin;)Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    return-object p1
.end method

.method public getPurchasedAudiobookAsin(Lcom/audible/mobile/domain/Asin;)Lcom/audible/mobile/domain/Asin;
    .locals 4

    if-eqz p1, :cond_1

    .line 87
    sget-object v0, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    sget-object v0, Lcom/audible/android/kcp/companion/HushpuppyCompanionManager;->SELECT_COMPANION_WITHOUT_VERSION_OR_FORMAT:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 92
    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 94
    sget-object v2, Lcom/audible/android/kcp/companion/HushpuppyCompanionManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "getPurchasedAudiobookAsin : Getting relationship for eBookAsin [%s]"

    invoke-interface {v2, v3, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "a_asin"

    .line 98
    invoke-direct {p0, p1, v0, v1}, Lcom/audible/android/kcp/companion/HushpuppyCompanionManager;->queryForAsin(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    return-object p1

    .line 88
    :cond_1
    :goto_0
    sget-object p1, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    return-object p1
.end method
