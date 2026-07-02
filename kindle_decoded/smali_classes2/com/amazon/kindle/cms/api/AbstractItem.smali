.class abstract Lcom/amazon/kindle/cms/api/AbstractItem;
.super Ljava/lang/Object;
.source "AbstractItem.java"

# interfaces
.implements Lcom/amazon/kindle/cms/api/Item;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/cms/api/AbstractItem$Valuable;
    }
.end annotation


# static fields
.field static final ITEM_SIZE_DEFAULT:Ljava/lang/Long;


# instance fields
.field private m_badgeStatusCache:Ljava/lang/Integer;

.field private m_downloadStatusCache:Ljava/lang/Integer;

.field protected m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

.field private m_locationStatusCache:Ljava/lang/Integer;

.field private m_modelCache:Lcom/amazon/kindle/cms/api/Model;

.field private m_userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/cms/api/AbstractItem;->ITEM_SIZE_DEFAULT:Ljava/lang/Long;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/amazon/kindle/cms/ipc/ItemInfo;

    invoke-direct {v0}, Lcom/amazon/kindle/cms/ipc/ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    return-void
.end method


# virtual methods
.method doReportDownloadProgressChange(Lcom/amazon/kindle/cms/api/CMSServer;Landroid/net/Uri;Lcom/amazon/kindle/cms/api/Progress;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    const-string v0, "."

    .line 464
    iput-object v0, p0, Lcom/amazon/kindle/cms/api/AbstractItem;->m_userId:Ljava/lang/String;

    .line 465
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/api/AbstractItem;->getLocationStatus()Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xfe0

    const/4 v2, 0x5

    invoke-static {v0, p3, v1, v2}, Lcom/amazon/kindle/cms/api/ItemHelper;->updateProgress(Ljava/lang/Integer;Lcom/amazon/kindle/cms/api/Progress;II)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, p0, Lcom/amazon/kindle/cms/api/AbstractItem;->m_locationStatusCache:Ljava/lang/Integer;

    .line 466
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->setField(II)V

    .line 468
    invoke-interface {p1, p2}, Lcom/amazon/kindle/cms/api/CMSServer;->beginUpdate(Landroid/net/Uri;)Lcom/amazon/kindle/cms/api/Update;

    move-result-object p1

    .line 471
    :try_start_0
    invoke-interface {p1, p0}, Lcom/amazon/kindle/cms/api/Update;->updateItem(Lcom/amazon/kindle/cms/api/Item;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    invoke-interface {p1}, Lcom/amazon/kindle/cms/api/Update;->close()V

    return-void

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lcom/amazon/kindle/cms/api/Update;->close()V

    throw p2
.end method

.method protected final getItemInfo()Lcom/amazon/kindle/cms/ipc/ItemInfo;
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    return-object v0
.end method

.method public getLibraryId()Ljava/lang/String;
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->getField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected getLocationStatus()Ljava/lang/Integer;
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->getField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getProducerId()Ljava/lang/String;
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->getField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/AbstractItem;->m_userId:Ljava/lang/String;

    return-object v0
.end method

.method protected setBaseFields(Ljava/lang/String;Lcom/amazon/kindle/cms/api/ItemType;Lcom/amazon/kindle/cms/api/ItemLocation;Lcom/amazon/kindle/cms/api/Progress;Lcom/amazon/kindle/cms/api/SortableName;ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cms/api/SyncIdentifier;Lcom/amazon/kindle/cms/api/ItemConfiguration;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p14

    move-object/from16 v5, p15

    move-object/from16 v6, p17

    if-eqz v1, :cond_0

    .line 75
    iget-object v7, v0, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    const/16 v8, 0xd

    invoke-virtual {v7, v8, p1}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->setField(ILjava/lang/String;)V

    .line 78
    :cond_0
    iget-object v1, v0, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    const/16 v7, 0xa

    invoke-virtual {p2}, Lcom/amazon/kindle/cms/api/ItemType;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->setField(ILjava/lang/String;)V

    .line 79
    invoke-static {p3, p4}, Lcom/amazon/kindle/cms/api/ItemHelper;->packLocationStatus(Lcom/amazon/kindle/cms/api/ItemLocation;Lcom/amazon/kindle/cms/api/Progress;)I

    move-result v1

    .line 80
    iget-object v7, v0, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v1}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->setField(II)V

    .line 81
    sget-object v7, Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;->Title:Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;

    iget-object v8, v0, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    move-object/from16 v9, p5

    invoke-virtual {v7, v8, v9}, Lcom/amazon/kindle/cms/ipc/SortableNameUtils$Variant;->setItemInfoFromSortableName(Lcom/amazon/kindle/cms/ipc/ItemInfo;Lcom/amazon/kindle/cms/api/SortableName;)V

    .line 82
    iget-object v7, v0, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    const/16 v8, 0x9

    iget-object v9, v6, Lcom/amazon/kindle/cms/api/ItemConfiguration;->itemFlags:Ljava/util/EnumSet;

    move/from16 v10, p6

    invoke-static {v10, v9}, Lcom/amazon/kindle/cms/api/ItemHelper;->packItemKindStatus(ILjava/util/EnumSet;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->setField(II)V

    .line 83
    iget-object v7, v0, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    const/16 v8, 0x14

    if-nez p7, :cond_1

    sget-object v9, Lcom/amazon/kindle/cms/api/AbstractItem;->ITEM_SIZE_DEFAULT:Ljava/lang/Long;

    goto :goto_0

    :cond_1
    move-object/from16 v9, p7

    :goto_0
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v7, v8, v9, v10}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->setField(IJ)V

    if-eqz v2, :cond_2

    .line 87
    iget-object v7, v0, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    const/16 v8, 0x13

    invoke-virtual {v7, v8, v2}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->setField(ILjava/lang/String;)V

    :cond_2
    if-eqz v3, :cond_3

    .line 92
    iget-object v2, v0, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    const/16 v7, 0x15

    invoke-virtual {v2, v7, v3}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->setField(ILjava/lang/String;)V

    .line 95
    :cond_3
    iget-object v2, v0, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    const/4 v3, 0x6

    move-object/from16 v7, p10

    invoke-virtual {v2, v3, v7}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->setField(ILjava/lang/String;)V

    .line 96
    iget-object v2, v0, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    const/4 v3, 0x7

    move-object/from16 v7, p11

    invoke-virtual {v2, v3, v7}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->setField(ILjava/lang/String;)V

    .line 97
    iget-object v2, v0, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    const/16 v3, 0x8

    move-object/from16 v7, p12

    invoke-virtual {v2, v3, v7}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->setField(ILjava/lang/String;)V

    .line 98
    iget-object v2, v0, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    const/16 v3, 0xe

    move-object/from16 v7, p13

    invoke-virtual {v2, v3, v7}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->setField(ILjava/lang/String;)V

    if-eqz v4, :cond_4

    .line 102
    iget-object v2, v0, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    const/16 v3, 0x22

    invoke-virtual {v2, v3, v4}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->setField(ILjava/lang/String;)V

    :cond_4
    if-eqz v5, :cond_5

    .line 107
    iget-object v2, v0, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    const/16 v3, 0x23

    invoke-virtual {v2, v3, v5}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->setField(ILjava/lang/String;)V

    :cond_5
    if-eqz p16, :cond_6

    .line 112
    iget-object v2, v0, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    const/16 v3, 0x12

    invoke-virtual/range {p16 .. p16}, Lcom/amazon/kindle/cms/api/SyncIdentifier;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->setField(ILjava/lang/String;)V

    .line 115
    :cond_6
    iget-object v2, v6, Lcom/amazon/kindle/cms/api/ItemConfiguration;->secondaryDisplayName:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 117
    iget-object v3, v0, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    const/16 v4, 0x26

    invoke-virtual {v3, v4, v2}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->setField(ILjava/lang/String;)V

    .line 120
    :cond_7
    iget-object v2, v6, Lcom/amazon/kindle/cms/api/ItemConfiguration;->localContentPath:Landroid/net/Uri;

    if-eqz v2, :cond_8

    .line 122
    iget-object v3, v0, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    const/16 v4, 0x27

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->setField(ILjava/lang/String;)V

    .line 125
    :cond_8
    iget-object v2, v6, Lcom/amazon/kindle/cms/api/ItemConfiguration;->downloadId:Ljava/lang/Long;

    if-eqz v2, :cond_9

    .line 127
    iget-object v3, v0, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    const/16 v4, 0x28

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v3, v4, v7, v8}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->setField(IJ)V

    .line 130
    :cond_9
    iget-object v2, v6, Lcom/amazon/kindle/cms/api/ItemConfiguration;->deliveryDate:Ljava/util/Date;

    if-eqz v2, :cond_a

    .line 132
    iget-object v3, v0, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    const/16 v4, 0x29

    invoke-virtual {v3, v4, v2}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->setField(ILjava/util/Date;)V

    .line 136
    :cond_a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/cms/api/AbstractItem;->m_locationStatusCache:Ljava/lang/Integer;

    return-void
.end method

.method protected setUserFields(Ljava/lang/String;ILjava/util/Date;Lcom/amazon/kindle/cms/api/ItemConfiguration;)V
    .locals 1

    .line 144
    iput-object p1, p0, Lcom/amazon/kindle/cms/api/AbstractItem;->m_userId:Ljava/lang/String;

    .line 145
    iget-object p1, p0, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->setField(II)V

    .line 146
    iget-object p1, p0, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->setField(ILjava/util/Date;)V

    if-eqz p4, :cond_1

    .line 149
    iget-object p1, p4, Lcom/amazon/kindle/cms/api/ItemConfiguration;->originFlags:Ljava/util/EnumSet;

    .line 150
    invoke-virtual {p1}, Ljava/util/EnumSet;->size()I

    move-result p2

    if-nez p2, :cond_0

    .line 151
    sget-object p1, Lcom/amazon/kindle/cms/api/Item$OriginFlag;->Owned:Lcom/amazon/kindle/cms/api/Item$OriginFlag;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    .line 152
    :cond_0
    iget-object p2, p0, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    const/16 p3, 0x24

    invoke-static {p1}, Lcom/amazon/kindle/cms/api/ItemHelper;->packUserFlagStatus(Ljava/util/EnumSet;)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->setField(II)V

    .line 153
    iget-object p1, p4, Lcom/amazon/kindle/cms/api/ItemConfiguration;->ownerOriginId:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 154
    iget-object p2, p0, Lcom/amazon/kindle/cms/api/AbstractItem;->m_itemInfo:Lcom/amazon/kindle/cms/ipc/ItemInfo;

    const/16 p3, 0x25

    invoke-virtual {p2, p3, p1}, Lcom/amazon/kindle/cms/ipc/ItemInfo;->setField(ILjava/lang/String;)V

    :cond_1
    return-void
.end method
