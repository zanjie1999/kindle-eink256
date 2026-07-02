.class public final Lcom/amazon/kindle/cms/api/ActionItem;
.super Lcom/amazon/kindle/cms/api/AbstractItem;
.source "ActionItem.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/cms/api/SortableName;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 10

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p7

    .line 53
    invoke-direct/range {v0 .. v9}, Lcom/amazon/kindle/cms/api/ActionItem;-><init>(Ljava/lang/String;Lcom/amazon/kindle/cms/api/SortableName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/cms/api/SortableName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v15, p0

    move-object/from16 v14, p4

    move-object/from16 v13, p8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    move-object/from16 v9, p5

    .line 103
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/cms/api/AbstractItem;-><init>()V

    .line 105
    sget-object v2, Lcom/amazon/kindle/cms/api/ItemType;->ACTION:Lcom/amazon/kindle/cms/api/ItemType;

    sget-object v3, Lcom/amazon/kindle/cms/api/ItemLocation;->LOCAL_ONLY:Lcom/amazon/kindle/cms/api/ItemLocation;

    sget-object v7, Lcom/amazon/kindle/cms/api/AbstractItem;->ITEM_SIZE_DEFAULT:Ljava/lang/Long;

    invoke-virtual/range {p6 .. p6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v17, Lcom/amazon/kindle/cms/api/ItemConfiguration;->DEFAULT_CONFIG:Lcom/amazon/kindle/cms/api/ItemConfiguration;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v11, ""

    const-string v12, ""

    const-string v16, ""

    move-object/from16 v13, v16

    const/16 v16, 0x0

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-virtual/range {v0 .. v17}, Lcom/amazon/kindle/cms/api/AbstractItem;->setBaseFields(Ljava/lang/String;Lcom/amazon/kindle/cms/api/ItemType;Lcom/amazon/kindle/cms/api/ItemLocation;Lcom/amazon/kindle/cms/api/Progress;Lcom/amazon/kindle/cms/api/SortableName;ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cms/api/SyncIdentifier;Lcom/amazon/kindle/cms/api/ItemConfiguration;)V

    .line 123
    sget-object v0, Lcom/amazon/kindle/cms/api/CMSApi;->NEVER_ACCESSED:Ljava/util/Date;

    sget-object v1, Lcom/amazon/kindle/cms/api/ItemConfiguration;->DEFAULT_CONFIG:Lcom/amazon/kindle/cms/api/ItemConfiguration;

    const/4 v2, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p9

    invoke-virtual {v3, v4, v2, v0, v1}, Lcom/amazon/kindle/cms/api/AbstractItem;->setUserFields(Ljava/lang/String;ILjava/util/Date;Lcom/amazon/kindle/cms/api/ItemConfiguration;)V

    .line 129
    iget-object v0, v3, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    const/16 v1, 0x33

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->setField(ILjava/lang/String;)V

    .line 130
    iget-object v0, v3, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    const/16 v1, 0x35

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->setField(II)V

    move-object/from16 v0, p4

    if-eqz v0, :cond_0

    .line 133
    iget-object v1, v3, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    const/16 v2, 0x34

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->setField(ILjava/lang/String;)V

    :cond_0
    move-object/from16 v0, p8

    if-eqz v0, :cond_1

    .line 137
    iget-object v1, v3, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    const/16 v2, 0x36

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->setField(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static getLibraryUri()Landroid/net/Uri;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/kindle/cms/api/ItemType;->ACTION:Lcom/amazon/kindle/cms/api/ItemType;

    invoke-virtual {v0}, Lcom/amazon/kindle/cms/api/ItemType;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
