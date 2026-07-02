.class public final Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;
.super Ljava/lang/Object;
.source "LegacyHushpuppyStorage.java"

# interfaces
.implements Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final PROJECTION_ALL:[Ljava/lang/String;

.field private static final SELECT_PREFERRED_MARKETPLACES_TABLE_WHERE_CLAUSE:Ljava/lang/String; = "pfm=?"

.field private static final SELECT_PREFERRED_MARKETPLACE_ENDPOINTS_TABLE_WHERE_CLAUSE:Ljava/lang/String; = "preferred_marketplace_id=?"

.field private static final SELECT_RELATIONSHIP_AUDIOBOOK_WHERE_CLAUSE:Ljava/lang/String; = "a_asin=?"

.field private static final SELECT_RELATIONSHIP_EBOOK_WHERE_CLAUSE:Ljava/lang/String; = "e_asin=?"

.field private static final SELECT_RELATIONSHIP_EBOOK_WITHOUT_GUID_WHERE_CLAUSE:Ljava/lang/String; = "e_asin=? AND e_format=?"

.field private static final SELECT_RELATIONSHIP_EBOOK_WITH_GUID_WHERE_CLAUSE:Ljava/lang/String; = "e_asin=? AND e_format=? AND ( e_version = ? OR LOWER(e_acr) = LOWER(?) )"

.field private static final SELECT_RELATIONSHIP_PURCHASED_AUDIOBOOK_WHERE_CLAUSE:Ljava/lang/String; = "e_asin = ? AND e_format = ? AND is_matched > 0 "

.field private static final SELECT_RELATIONSHIP_UPGRADEABLE_EBOOKS_WHERE_CLAUSE:Ljava/lang/String; = "is_matched = 0 "


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;

.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final preferredMarketplaceEndpointsContentUri:Landroid/net/Uri;

.field private final preferredMarketplacesContentUri:Landroid/net/Uri;

.field private final relationshipContentUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v0, 0x0

    .line 121
    sput-object v0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->PROJECTION_ALL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 2

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 159
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->contentResolver:Landroid/content/ContentResolver;

    .line 160
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "relationships"

    invoke-static {v0, v1}, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->getTableUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->relationshipContentUri:Landroid/net/Uri;

    .line 161
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "preferred_marketplaces"

    invoke-static {v0, v1}, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->getTableUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->preferredMarketplacesContentUri:Landroid/net/Uri;

    .line 163
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "preferred_marketplace_endpoints"

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->getTableUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->preferredMarketplaceEndpointsContentUri:Landroid/net/Uri;

    return-void
.end method

.method private applyBatch(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 902
    iget-object v0, p0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->getProviderAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 904
    :try_start_0
    iget-object v3, p0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, v0, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 905
    array-length v0, v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eq v0, p1, :cond_1

    .line 906
    :cond_0
    sget-object p1, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": unexpected error, missing or wrong number of results!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 909
    sget-object v0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private clearTable(Landroid/net/Uri;)I
    .locals 4

    .line 544
    iget-object v0, p0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->contentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 545
    sget-object v1, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "%s rows(s) deleted from %s table."

    invoke-interface {v1, v3, v2, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0
.end method

.method private closeCursor(Landroid/database/Cursor;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 842
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method private deleteRelationshipByEbook(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V
    .locals 3

    .line 581
    sget-object v0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HP-AppStart: Deleting relationship : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 583
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 584
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getFormat()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 586
    iget-object p1, p0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->relationshipContentUri:Landroid/net/Uri;

    const-string v2, "e_asin=? AND e_format=?"

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private extractRelationship(Landroid/database/Cursor;)Lcom/audible/hushpuppy/common/relationship/Relationship;
    .locals 31

    move-object/from16 v0, p1

    :try_start_0
    const-string v1, "e_asin"

    .line 616
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "e_acr"

    .line 617
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "e_version"

    .line 618
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v3, "e_format"

    .line 619
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v3, "a_asin"

    .line 621
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "a_acr"

    .line 622
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v4, "a_version"

    .line 623
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v4, "a_format"

    .line 624
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v4, "a_amzn_asin"

    .line 626
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string v4, "sync_file_acr"

    .line 627
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string v4, "relationship_id"

    .line 628
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    const-string v4, "type"

    .line 629
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    const-string v4, "is_matched"

    .line 630
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    const/16 v28, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/16 v28, 0x0

    :goto_0
    const-string v4, "time_last_fetched"

    .line 631
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 634
    invoke-static {v1}, Lcom/audible/mobile/domain/ImmutableAsinImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/Asin;

    move-result-object v5

    .line 635
    invoke-static {v2}, Lcom/audible/mobile/domain/ImmutableACRImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/ACR;

    move-result-object v6

    .line 636
    new-instance v22, Lcom/audible/hushpuppy/common/relationship/Companion;

    move-object/from16 v4, v22

    move-object/from16 v9, v27

    move-object/from16 v10, v27

    invoke-direct/range {v4 .. v10}, Lcom/audible/hushpuppy/common/relationship/Companion;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-static {v3}, Lcom/audible/mobile/domain/ImmutableAsinImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/Asin;

    move-result-object v13

    .line 640
    invoke-static {v11}, Lcom/audible/mobile/domain/ImmutableACRImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/ACR;

    move-result-object v14

    .line 641
    new-instance v23, Lcom/audible/hushpuppy/common/relationship/Companion;

    move-object/from16 v12, v23

    move-object/from16 v17, v27

    move-object/from16 v18, v27

    invoke-direct/range {v12 .. v18}, Lcom/audible/hushpuppy/common/relationship/Companion;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    invoke-static/range {v19 .. v19}, Lcom/audible/mobile/domain/ImmutableAsinImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/Asin;

    move-result-object v24

    .line 644
    invoke-static/range {v20 .. v20}, Lcom/audible/mobile/domain/ImmutableACRImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/ACR;

    move-result-object v25

    .line 645
    new-instance v0, Lcom/audible/hushpuppy/common/relationship/Relationship;

    move-object/from16 v21, v0

    invoke-direct/range {v21 .. v30}, Lcom/audible/hushpuppy/common/relationship/Relationship;-><init>(Lcom/audible/hushpuppy/common/relationship/ICompanion;Lcom/audible/hushpuppy/common/relationship/ICompanion;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Ljava/lang/String;Ljava/lang/String;ZJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getPurchasedRelationship(Lcom/audible/mobile/domain/Asin;Lcom/amazon/kindle/krx/content/BookFormat;)Lcom/audible/hushpuppy/common/relationship/IRelationship;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 943
    sget-object v1, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 948
    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x1

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    .line 950
    sget-object v1, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    const-string v2, "getPurchasedRelationship : Getting relationship for eBookAsin [%s, %s]"

    invoke-interface {v1, v2, p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 956
    :try_start_0
    iget-object v2, p0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->contentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->relationshipContentUri:Landroid/net/Uri;

    sget-object v4, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->PROJECTION_ALL:[Ljava/lang/String;

    const-string v5, "e_asin = ? AND e_format = ? AND is_matched > 0 "

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_1

    .line 960
    :try_start_1
    sget-object p2, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Querying got null cursor!"

    invoke-interface {p2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 972
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->closeCursor(Landroid/database/Cursor;)V

    return-object v0

    .line 964
    :cond_1
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 965
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->extractRelationship(Landroid/database/Cursor;)Lcom/audible/hushpuppy/common/relationship/Relationship;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 966
    invoke-virtual {p2}, Lcom/audible/hushpuppy/common/relationship/Relationship;->hasAudiobook()Z

    move-result v1

    if-nez v1, :cond_2

    .line 967
    sget-object p2, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Relationship without audiobook, dropping it"

    invoke-interface {p2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    move-object v0, p2

    .line 972
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->closeCursor(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception p2

    move-object v0, p1

    goto :goto_1

    :catchall_1
    move-exception p2

    :goto_1
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->closeCursor(Landroid/database/Cursor;)V

    .line 973
    throw p2

    :cond_4
    :goto_2
    return-object v0
.end method

.method private insertRelationship(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V
    .locals 3

    .line 556
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    if-nez v0, :cond_0

    .line 557
    sget-object v0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HP-AppStart: eBook was null, not inserting relationship"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 561
    :cond_0
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    if-nez v0, :cond_1

    .line 562
    sget-object v0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HP-AppStart: audiobook was null, not inserting relationship"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 567
    :cond_1
    sget-object v0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HP-AppStart: Inserting relationship : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->buildInsertRelationshipOperation(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Landroid/content/ContentProviderOperation;

    move-result-object p1

    .line 569
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 570
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "syncRelationships"

    .line 571
    invoke-direct {p0, v0, p1}, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->applyBatch(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method private isEBookCompanionValid(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 920
    sget-object p1, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Passing null IBook is not allowed!"

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return v0

    .line 924
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 925
    sget-object p1, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "IBook doesn\'t have ASIN. Is this a sideloaded book?"

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private queryEBookRelationship(Ljava/lang/String;Ljava/lang/String;)Lcom/audible/hushpuppy/common/relationship/IRelationship;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "e_asin=? AND e_format=?"

    .line 296
    invoke-direct {p0, v0, p1}, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->queryEBookRelationship([Ljava/lang/String;Ljava/lang/String;)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    return-object p1
.end method

.method private queryEBookRelationship(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/audible/hushpuppy/common/relationship/IRelationship;
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p3, v0, p1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const/4 p1, 0x3

    aput-object p2, v0, p1

    const-string p1, "e_asin=? AND e_format=? AND ( e_version = ? OR LOWER(e_acr) = LOWER(?) )"

    .line 285
    invoke-direct {p0, v0, p1}, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->queryEBookRelationship([Ljava/lang/String;Ljava/lang/String;)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    return-object p1
.end method

.method private queryEBookRelationship([Ljava/lang/String;Ljava/lang/String;)Lcom/audible/hushpuppy/common/relationship/IRelationship;
    .locals 7

    const/4 v0, 0x0

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->contentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->relationshipContentUri:Landroid/net/Uri;

    sget-object v3, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->PROJECTION_ALL:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v4, p2

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    .line 312
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 313
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->extractRelationship(Landroid/database/Cursor;)Lcom/audible/hushpuppy/common/relationship/Relationship;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 314
    invoke-virtual {p2}, Lcom/audible/hushpuppy/common/relationship/Relationship;->hasAudiobook()Z

    move-result v1

    if-nez v1, :cond_0

    .line 315
    sget-object p2, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Relationship without audiobook, dropping it"

    invoke-interface {p2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    move-object v0, p2

    goto :goto_0

    :catchall_0
    move-exception p2

    move-object v0, p1

    goto :goto_1

    .line 320
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->closeCursor(Landroid/database/Cursor;)V

    return-object v0

    :catchall_1
    move-exception p2

    :goto_1
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->closeCursor(Landroid/database/Cursor;)V

    .line 321
    throw p2
.end method

.method private returnAudiobook(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V
    .locals 4

    .line 597
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    .line 598
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "is_matched"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 600
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    .line 601
    iget-object p1, p0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->relationshipContentUri:Landroid/net/Uri;

    const-string v3, "a_asin=?"

    invoke-virtual {p1, v1, v0, v3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected buildDeleteAllRelationshipsOperation()Landroid/content/ContentProviderOperation;
    .locals 3

    .line 795
    iget-object v0, p0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->relationshipContentUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "1 = 1"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0
.end method

.method protected buildInsertRelationshipOperation(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Landroid/content/ContentProviderOperation;
    .locals 3

    .line 806
    iget-object v0, p0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->relationshipContentUri:Landroid/net/Uri;

    .line 807
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 810
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "e_asin"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 811
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getACR()Lcom/audible/mobile/domain/ACR;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "e_acr"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 812
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "e_version"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 813
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "e_format"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 814
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getAssetType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "e_asset_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 815
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getSKU()Ljava/lang/String;

    move-result-object v1

    const-string v2, "e_sku"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 818
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "a_asin"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 819
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getACR()Lcom/audible/mobile/domain/ACR;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "a_acr"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 820
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "a_version"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 821
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "a_format"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 822
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getAssetType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "a_asset_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 823
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getSKU()Ljava/lang/String;

    move-result-object v1

    const-string v2, "a_sku"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 826
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAmazonAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "a_amzn_asin"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 827
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getRelationshipId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "relationship_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 828
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getSyncFileACR()Lcom/audible/mobile/domain/ACR;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sync_file_acr"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 830
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasFullAudiobook()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "is_matched"

    .line 829
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 830
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 832
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getTimeLastFetched()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "time_last_fetched"

    .line 831
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 832
    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    return-object p1
.end method

.method public clearAllRelationships()V
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->relationshipContentUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->clearTable(Landroid/net/Uri;)I

    return-void
.end method

.method public countUpgradeableEBooks()I
    .locals 1

    .line 493
    invoke-virtual {p0}, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->getUpgradableEBooksAsin()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public deleteRelationship(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V
    .locals 3

    .line 181
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    sget-object v0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Deleting full relationship"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 183
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->deleteRelationshipByEbook(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V

    goto :goto_0

    .line 184
    :cond_0
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 185
    sget-object v0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting audiobook part of relationship for ASIN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 186
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->returnAudiobook(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getAllRelationships()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/audible/hushpuppy/common/relationship/IRelationship;",
            ">;"
        }
    .end annotation

    .line 387
    sget-object v0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "getAllRelationships"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 393
    :try_start_0
    iget-object v2, p0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->contentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->relationshipContentUri:Landroid/net/Uri;

    sget-object v4, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->PROJECTION_ALL:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 396
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 397
    invoke-direct {p0, v1}, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->extractRelationship(Landroid/database/Cursor;)Lcom/audible/hushpuppy/common/relationship/Relationship;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 399
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 404
    :cond_1
    invoke-direct {p0, v1}, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->closeCursor(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1}, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->closeCursor(Landroid/database/Cursor;)V

    .line 405
    throw v0
.end method

.method public getEBookRelationship(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/audible/hushpuppy/common/relationship/IRelationship;
    .locals 6

    .line 250
    sget-object v0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEBookRelationship eBookAsin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 256
    invoke-static {p2}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, " guid: "

    if-nez v0, :cond_0

    .line 257
    invoke-direct {p0, p1, p2, p3}, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->queryEBookRelationship(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    sget-object v3, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getEBookRelationship matched with guid: eBookAsin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object v0

    .line 266
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->queryEBookRelationship(Ljava/lang/String;Ljava/lang/String;)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 269
    sget-object v3, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getEBookRelationship matched without guid: eBookAsin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public getPurchasedRelationship(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/hushpuppy/common/relationship/IRelationship;
    .locals 1

    .line 171
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->isEBookCompanionValid(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 175
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/mobile/domain/ImmutableAsinImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->getPurchasedRelationship(Lcom/audible/mobile/domain/Asin;Lcom/amazon/kindle/krx/content/BookFormat;)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    return-object p1
.end method

.method public getUpgradableEBooksAsin()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "e_asin"

    .line 499
    sget-object v1, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "getUpgradableEBooksAsin"

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 501
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 506
    :try_start_0
    iget-object v3, p0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->contentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->relationshipContentUri:Landroid/net/Uri;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "is_matched = 0 "

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_0

    .line 511
    sget-object v0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "Querying got null cursor!"

    invoke-interface {v0, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 512
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    invoke-direct {p0, v2}, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->closeCursor(Landroid/database/Cursor;)V

    return-object v0

    .line 515
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 516
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 518
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 523
    :cond_1
    invoke-direct {p0, v2}, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->closeCursor(Landroid/database/Cursor;)V

    .line 526
    sget-object v2, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "%s not found!"

    invoke-interface {v2, v3, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 527
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 523
    invoke-direct {p0, v2}, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->closeCursor(Landroid/database/Cursor;)V

    .line 524
    throw v0
.end method

.method public insertDevicePlatformConfig(Lcom/audible/pfm/domain/DevicePlatformConfig;)V
    .locals 5

    if-nez p1, :cond_0

    .line 438
    sget-object p1, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "DevicePlatformConfig to save is null! Do nothing"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 442
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 445
    iget-object v1, p0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->preferredMarketplaceEndpointsContentUri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v1, p0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->preferredMarketplacesContentUri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    invoke-virtual {p1}, Lcom/audible/pfm/domain/DevicePlatformConfig;->getPfmConfig()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/pfm/domain/PfmConfig;

    .line 450
    iget-object v2, p0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->preferredMarketplacesContentUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 451
    invoke-virtual {v1}, Lcom/audible/pfm/domain/PfmConfig;->getMarketplaceId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pfm"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 452
    invoke-virtual {v1}, Lcom/audible/pfm/domain/PfmConfig;->getMarketplaceName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "pfm_readable"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "last_update_millis"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 454
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p1, "insertDevicePlatformConfig"

    .line 458
    invoke-direct {p0, v0, p1}, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->applyBatch(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public syncRelationships(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/audible/hushpuppy/common/relationship/IRelationship;",
            ">;)V"
        }
    .end annotation

    .line 218
    sget-object v0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "HP-AppStart: Syncing Relationships"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 221
    sget-object p1, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "HP-AppStart: relationships was null, not updating"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 225
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    invoke-virtual {p0}, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->buildDeleteAllRelationshipsOperation()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/common/relationship/IRelationship;

    .line 230
    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v2

    if-nez v2, :cond_1

    .line 231
    sget-object v2, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HP-AppStart: eBook was null, not updating relationship "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_1
    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v2

    if-nez v2, :cond_2

    .line 236
    sget-object v2, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HP-AppStart: audiobook was null, not updating relationship "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_2
    invoke-virtual {p0, v1}, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->buildInsertRelationshipOperation(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string p1, "syncRelationships"

    .line 243
    invoke-direct {p0, v0, p1}, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->applyBatch(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public updateRelationship(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V
    .locals 3

    .line 194
    sget-object v0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HP-AppStart: updateRelationship relationship : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 200
    :cond_0
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    if-nez v0, :cond_1

    .line 201
    sget-object v0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HP-AppStart: eBook was null, not updating relationship "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 205
    :cond_1
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    if-nez v0, :cond_2

    .line 206
    sget-object v0, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audiobook was null, not updating relationship "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 210
    :cond_2
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->deleteRelationshipByEbook(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V

    .line 211
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->insertRelationship(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V

    return-void
.end method
