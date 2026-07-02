.class public final Lcom/amazon/kindle/cms/api/PeriodicalItem;
.super Lcom/amazon/kindle/cms/api/AbstractItem;
.source "PeriodicalItem.java"

# interfaces
.implements Lcom/amazon/kindle/cms/api/DownloadProgressCapable;
.implements Lcom/amazon/kindle/cms/api/ReadableItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/cms/api/PeriodicalItem$UserStatusFlag;,
        Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;,
        Lcom/amazon/kindle/cms/api/PeriodicalItem$GlobalFlag;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/cms/api/ItemLocation;Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;Lcom/amazon/kindle/cms/api/Progress;Lcom/amazon/kindle/cms/api/SortableName;Lcom/amazon/kindle/cms/api/SortableName;Ljava/util/EnumSet;Ljava/util/Date;Lcom/amazon/kindle/cms/api/Thumbnail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Progress;Ljava/util/Date;Lcom/amazon/kindle/cms/api/SyncIdentifier;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/cms/api/ItemLocation;",
            "Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;",
            "Lcom/amazon/kindle/cms/api/Progress;",
            "Lcom/amazon/kindle/cms/api/SortableName;",
            "Lcom/amazon/kindle/cms/api/SortableName;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kindle/cms/api/PeriodicalItem$GlobalFlag;",
            ">;",
            "Ljava/util/Date;",
            "Lcom/amazon/kindle/cms/api/Thumbnail;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kindle/cms/api/PeriodicalItem$UserStatusFlag;",
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

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    .line 298
    sget-object v18, Lcom/amazon/kindle/cms/api/ItemConfiguration;->DEFAULT_CONFIG:Lcom/amazon/kindle/cms/api/ItemConfiguration;

    invoke-direct/range {v0 .. v18}, Lcom/amazon/kindle/cms/api/PeriodicalItem;-><init>(Ljava/lang/String;Lcom/amazon/kindle/cms/api/ItemLocation;Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;Lcom/amazon/kindle/cms/api/Progress;Lcom/amazon/kindle/cms/api/SortableName;Lcom/amazon/kindle/cms/api/SortableName;Ljava/util/EnumSet;Ljava/util/Date;Lcom/amazon/kindle/cms/api/Thumbnail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Progress;Ljava/util/Date;Lcom/amazon/kindle/cms/api/SyncIdentifier;Lcom/amazon/kindle/cms/api/ItemConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/cms/api/ItemLocation;Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;Lcom/amazon/kindle/cms/api/Progress;Lcom/amazon/kindle/cms/api/SortableName;Lcom/amazon/kindle/cms/api/SortableName;Ljava/util/EnumSet;Ljava/util/Date;Lcom/amazon/kindle/cms/api/Thumbnail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Progress;Ljava/util/Date;Lcom/amazon/kindle/cms/api/SyncIdentifier;Lcom/amazon/kindle/cms/api/ItemConfiguration;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/cms/api/ItemLocation;",
            "Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;",
            "Lcom/amazon/kindle/cms/api/Progress;",
            "Lcom/amazon/kindle/cms/api/SortableName;",
            "Lcom/amazon/kindle/cms/api/SortableName;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kindle/cms/api/PeriodicalItem$GlobalFlag;",
            ">;",
            "Ljava/util/Date;",
            "Lcom/amazon/kindle/cms/api/Thumbnail;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kindle/cms/api/PeriodicalItem$UserStatusFlag;",
            ">;",
            "Lcom/amazon/kindle/cms/api/Progress;",
            "Ljava/util/Date;",
            "Lcom/amazon/kindle/cms/api/SyncIdentifier;",
            "Lcom/amazon/kindle/cms/api/ItemConfiguration;",
            ")V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v7, p12

    move-object/from16 v16, p17

    move-object/from16 v17, p18

    .line 344
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/cms/api/AbstractItem;-><init>()V

    .line 346
    sget-object v2, Lcom/amazon/kindle/cms/api/ItemType;->PERIODICAL:Lcom/amazon/kindle/cms/api/ItemType;

    move-object/from16 v6, p3

    move-object/from16 v10, p7

    invoke-static {v10, v6}, Lcom/amazon/kindle/cms/api/ItemHelper;->packPeriodicalKindStatus(Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;)I

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

    invoke-virtual/range {v0 .. v17}, Lcom/amazon/kindle/cms/api/AbstractItem;->setBaseFields(Ljava/lang/String;Lcom/amazon/kindle/cms/api/ItemType;Lcom/amazon/kindle/cms/api/ItemLocation;Lcom/amazon/kindle/cms/api/Progress;Lcom/amazon/kindle/cms/api/SortableName;ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cms/api/SyncIdentifier;Lcom/amazon/kindle/cms/api/ItemConfiguration;)V

    move-object/from16 v0, p14

    move-object/from16 v1, p15

    .line 364
    invoke-static {v1, v0}, Lcom/amazon/kindle/cms/api/ItemHelper;->packReadableUserStatus(Lcom/amazon/kindle/cms/api/Progress;Ljava/util/EnumSet;)I

    move-result v0

    move-object/from16 v1, p0

    move-object/from16 v2, p13

    move-object/from16 v3, p16

    move-object/from16 v4, p18

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/amazon/kindle/cms/api/AbstractItem;->setUserFields(Ljava/lang/String;ILjava/util/Date;Lcom/amazon/kindle/cms/api/ItemConfiguration;)V

    .line 370
    sget-object v0, Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;->Author:Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;

    iget-object v2, v1, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    move-object/from16 v3, p6

    invoke-virtual {v0, v2, v3}, Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;->setItemInfoFromSortableName(Lcom/amazon/kindle/cms/ipc/ItemInfo;Lcom/amazon/kindle/cms/api/SortableName;)V

    .line 371
    iget-object v0, v1, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    const/16 v2, 0x35

    move-object/from16 v3, p8

    invoke-virtual {v0, v2, v3}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->setField(ILjava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/cms/api/ItemLocation;Lcom/amazon/kindle/cms/api/Progress;Lcom/amazon/kindle/cms/api/SortableName;Lcom/amazon/kindle/cms/api/SortableName;Ljava/util/EnumSet;Ljava/util/Date;Lcom/amazon/kindle/cms/api/Thumbnail;Ljava/lang/String;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Progress;Ljava/util/Date;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/cms/api/ItemLocation;",
            "Lcom/amazon/kindle/cms/api/Progress;",
            "Lcom/amazon/kindle/cms/api/SortableName;",
            "Lcom/amazon/kindle/cms/api/SortableName;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kindle/cms/api/PeriodicalItem$GlobalFlag;",
            ">;",
            "Ljava/util/Date;",
            "Lcom/amazon/kindle/cms/api/Thumbnail;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kindle/cms/api/PeriodicalItem$UserStatusFlag;",
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

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    .line 132
    sget-object v3, Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;->Newspaper:Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;

    sget-object v12, Lcom/amazon/kindle/cms/api/AbstractItem;->ITEM_SIZE_DEFAULT:Ljava/lang/Long;

    const-string v10, ""

    const/4 v11, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v17}, Lcom/amazon/kindle/cms/api/PeriodicalItem;-><init>(Ljava/lang/String;Lcom/amazon/kindle/cms/api/ItemLocation;Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;Lcom/amazon/kindle/cms/api/Progress;Lcom/amazon/kindle/cms/api/SortableName;Lcom/amazon/kindle/cms/api/SortableName;Ljava/util/EnumSet;Ljava/util/Date;Lcom/amazon/kindle/cms/api/Thumbnail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Progress;Ljava/util/Date;Lcom/amazon/kindle/cms/api/SyncIdentifier;)V

    return-void
.end method

.method public static getLibraryUri()Landroid/net/Uri;
    .locals 1

    .line 96
    sget-object v0, Lcom/amazon/kindle/cms/api/ItemType;->PERIODICAL:Lcom/amazon/kindle/cms/api/ItemType;

    invoke-virtual {v0}, Lcom/amazon/kindle/cms/api/ItemType;->getUri()Landroid/net/Uri;

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

    .line 484
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kindle/cms/api/AbstractItem;->doReportDownloadProgressChange(Lcom/amazon/kindle/cms/api/CMSServer;Landroid/net/Uri;Lcom/amazon/kindle/cms/api/Progress;)V

    return-void
.end method
