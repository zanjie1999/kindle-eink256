.class public final Lcom/amazon/kindle/cms/api/BookItem;
.super Lcom/amazon/kindle/cms/api/AbstractItem;
.source "BookItem.java"

# interfaces
.implements Lcom/amazon/kindle/cms/api/DownloadProgressCapable;
.implements Lcom/amazon/kindle/cms/api/ReadableItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;,
        Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;
    }
.end annotation


# static fields
.field private static final BOOK_PAGE_COUNT_DEFAULT:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/cms/api/ItemLocation;Lcom/amazon/kindle/cms/api/Progress;Lcom/amazon/kindle/cms/api/SortableName;Lcom/amazon/kindle/cms/api/SortableName;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Thumbnail;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Progress;Ljava/util/Date;Lcom/amazon/kindle/cms/api/SyncIdentifier;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/cms/api/ItemLocation;",
            "Lcom/amazon/kindle/cms/api/Progress;",
            "Lcom/amazon/kindle/cms/api/SortableName;",
            "Lcom/amazon/kindle/cms/api/SortableName;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;",
            ">;",
            "Lcom/amazon/kindle/cms/api/Thumbnail;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;",
            ">;",
            "Lcom/amazon/kindle/cms/api/Progress;",
            "Ljava/util/Date;",
            "Lcom/amazon/kindle/cms/api/SyncIdentifier;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    .line 216
    sget-object v18, Lcom/amazon/kindle/cms/api/ItemConfiguration;->DEFAULT_CONFIG:Lcom/amazon/kindle/cms/api/ItemConfiguration;

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v18}, Lcom/amazon/kindle/cms/api/BookItem;-><init>(Ljava/lang/String;Lcom/amazon/kindle/cms/api/ItemLocation;Lcom/amazon/kindle/cms/api/Progress;Lcom/amazon/kindle/cms/api/SortableName;Lcom/amazon/kindle/cms/api/SortableName;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Thumbnail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Progress;Ljava/util/Date;Lcom/amazon/kindle/cms/api/SyncIdentifier;Lcom/amazon/kindle/cms/api/ItemConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/cms/api/ItemLocation;Lcom/amazon/kindle/cms/api/Progress;Lcom/amazon/kindle/cms/api/SortableName;Lcom/amazon/kindle/cms/api/SortableName;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Thumbnail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Progress;Ljava/util/Date;Lcom/amazon/kindle/cms/api/SyncIdentifier;Lcom/amazon/kindle/cms/api/ItemConfiguration;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/cms/api/ItemLocation;",
            "Lcom/amazon/kindle/cms/api/Progress;",
            "Lcom/amazon/kindle/cms/api/SortableName;",
            "Lcom/amazon/kindle/cms/api/SortableName;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;",
            ">;",
            "Lcom/amazon/kindle/cms/api/Thumbnail;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;",
            ">;",
            "Lcom/amazon/kindle/cms/api/Progress;",
            "Ljava/util/Date;",
            "Lcom/amazon/kindle/cms/api/SyncIdentifier;",
            "Lcom/amazon/kindle/cms/api/ItemConfiguration;",
            ")V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v15, p10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p11

    move-object/from16 v7, p12

    move-object/from16 v16, p17

    move-object/from16 v17, p18

    .line 306
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/cms/api/AbstractItem;-><init>()V

    .line 308
    sget-object v2, Lcom/amazon/kindle/cms/api/ItemType;->BOOK:Lcom/amazon/kindle/cms/api/ItemType;

    invoke-static/range {p8 .. p8}, Lcom/amazon/kindle/cms/api/ItemHelper;->packFlagSet(Ljava/util/EnumSet;)I

    move-result v6

    invoke-virtual/range {p9 .. p9}, Lcom/amazon/kindle/cms/api/Thumbnail;->getRawLargePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p9 .. p9}, Lcom/amazon/kindle/cms/api/Thumbnail;->getRawSmallPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p9 .. p9}, Lcom/amazon/kindle/cms/api/Thumbnail;->getExplorePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p9 .. p9}, Lcom/amazon/kindle/cms/api/Thumbnail;->getModelUri()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p9 .. p9}, Lcom/amazon/kindle/cms/api/Thumbnail;->getRawLargeTexturesPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p9 .. p9}, Lcom/amazon/kindle/cms/api/Thumbnail;->getRawSmallTexturesPath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v15, v18

    const/16 v18, 0x0

    move-object/from16 v9, v18

    invoke-virtual/range {v0 .. v17}, Lcom/amazon/kindle/cms/api/AbstractItem;->setBaseFields(Ljava/lang/String;Lcom/amazon/kindle/cms/api/ItemType;Lcom/amazon/kindle/cms/api/ItemLocation;Lcom/amazon/kindle/cms/api/Progress;Lcom/amazon/kindle/cms/api/SortableName;ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cms/api/SyncIdentifier;Lcom/amazon/kindle/cms/api/ItemConfiguration;)V

    move-object/from16 v0, p14

    move-object/from16 v1, p15

    .line 326
    invoke-static {v1, v0}, Lcom/amazon/kindle/cms/api/ItemHelper;->packReadableUserStatus(Lcom/amazon/kindle/cms/api/Progress;Ljava/util/EnumSet;)I

    move-result v0

    move-object/from16 v1, p0

    move-object/from16 v2, p13

    move-object/from16 v3, p16

    move-object/from16 v4, p18

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/amazon/kindle/cms/api/AbstractItem;->setUserFields(Ljava/lang/String;ILjava/util/Date;Lcom/amazon/kindle/cms/api/ItemConfiguration;)V

    .line 332
    sget-object v0, Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;->Author:Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;

    iget-object v2, v1, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    move-object/from16 v3, p5

    invoke-virtual {v0, v2, v3}, Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;->setItemInfoFromSortableName(Lcom/amazon/kindle/cms/ipc/ItemInfo;Lcom/amazon/kindle/cms/api/SortableName;)V

    .line 333
    iget-object v0, v1, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    invoke-virtual/range {p4 .. p4}, Lcom/amazon/kindle/cms/api/SortableName;->getLanguageTag()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p6

    invoke-static {v3, v2}, Lcom/amazon/kindle/cms/ipc/SortableNameUtils;->validateLanguageTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x35

    invoke-virtual {v0, v3, v2}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->setField(ILjava/lang/String;)V

    .line 334
    iget-object v0, v1, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    if-nez p7, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    const/16 v3, 0x36

    invoke-virtual {v0, v3, v2}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->setField(II)V

    move-object/from16 v0, p10

    if-eqz v0, :cond_1

    .line 336
    iget-object v2, v1, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    const/16 v3, 0x37

    invoke-virtual {v2, v3, v0}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->setField(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/cms/api/ItemLocation;Lcom/amazon/kindle/cms/api/Progress;Lcom/amazon/kindle/cms/api/SortableName;Lcom/amazon/kindle/cms/api/SortableName;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Thumbnail;Ljava/lang/String;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Progress;Ljava/util/Date;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/cms/api/ItemLocation;",
            "Lcom/amazon/kindle/cms/api/Progress;",
            "Lcom/amazon/kindle/cms/api/SortableName;",
            "Lcom/amazon/kindle/cms/api/SortableName;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;",
            ">;",
            "Lcom/amazon/kindle/cms/api/Thumbnail;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;",
            ">;",
            "Lcom/amazon/kindle/cms/api/Progress;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    .line 134
    invoke-virtual/range {p4 .. p4}, Lcom/amazon/kindle/cms/api/SortableName;->getLanguageTag()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v11, Lcom/amazon/kindle/cms/api/AbstractItem;->ITEM_SIZE_DEFAULT:Ljava/lang/Long;

    const-string v10, ""

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Lcom/amazon/kindle/cms/api/BookItem;-><init>(Ljava/lang/String;Lcom/amazon/kindle/cms/api/ItemLocation;Lcom/amazon/kindle/cms/api/Progress;Lcom/amazon/kindle/cms/api/SortableName;Lcom/amazon/kindle/cms/api/SortableName;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Thumbnail;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Progress;Ljava/util/Date;Lcom/amazon/kindle/cms/api/SyncIdentifier;)V

    return-void
.end method

.method public static getLibraryUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "kindle.content.books"

    .line 100
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public reportDownloadProgressChange(Lcom/amazon/kindle/cms/api/CMSServer;Landroid/net/Uri;Lcom/amazon/kindle/cms/api/Progress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 520
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kindle/cms/api/AbstractItem;->doReportDownloadProgressChange(Lcom/amazon/kindle/cms/api/CMSServer;Landroid/net/Uri;Lcom/amazon/kindle/cms/api/Progress;)V

    return-void
.end method
