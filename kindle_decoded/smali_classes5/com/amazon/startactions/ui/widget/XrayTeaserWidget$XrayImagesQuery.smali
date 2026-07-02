.class public Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayImagesQuery;
.super Ljava/lang/Object;
.source "XrayTeaserWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XrayImagesQuery"
.end annotation


# static fields
.field private static final QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;


# instance fields
.field private final excerptIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 674
    new-instance v0, Lcom/amazon/xray/model/sql/QueryBuilder;

    invoke-direct {v0}, Lcom/amazon/xray/model/sql/QueryBuilder;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/amazon/xray/model/sql/Selectable;

    sget-object v3, Lcom/amazon/xray/model/DB;->EXCERPT:Lcom/amazon/xray/model/DB$ExcerptTable;

    iget-object v3, v3, Lcom/amazon/xray/model/DB$ExcerptTable;->IMAGE:Lcom/amazon/xray/model/sql/column/StringColumn;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/amazon/xray/model/sql/QueryBuilder;->select([Lcom/amazon/xray/model/sql/Selectable;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v2, Lcom/amazon/xray/model/DB;->EXCERPT:Lcom/amazon/xray/model/DB$ExcerptTable;

    invoke-virtual {v0, v2}, Lcom/amazon/xray/model/sql/QueryBuilder;->from(Lcom/amazon/xray/model/sql/table/Table;)Lcom/amazon/xray/model/sql/QueryBuilder;

    new-array v1, v1, [Lcom/amazon/xray/model/sql/column/Column;

    sget-object v2, Lcom/amazon/xray/model/DB;->EXCERPT:Lcom/amazon/xray/model/DB$ExcerptTable;

    iget-object v2, v2, Lcom/amazon/xray/model/DB$ExcerptTable;->ID:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    aput-object v2, v1, v4

    .line 675
    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->whereEq([Lcom/amazon/xray/model/sql/column/Column;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sput-object v0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayImagesQuery;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    return-void
.end method

.method public constructor <init>([I)V
    .locals 0

    .line 679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 680
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayImagesQuery;->excerptIds:[I

    return-void
.end method


# virtual methods
.method public load()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 684
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    .line 685
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    .line 684
    invoke-static {v0}, Lcom/amazon/xray/model/SidecarDatabaseManager;->acquire(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 692
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayImagesQuery;->excerptIds:[I

    array-length v1, v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 693
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayImagesQuery;->excerptIds:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget v5, v2, v4

    .line 694
    sget-object v6, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayImagesQuery;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    invoke-virtual {v0}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/amazon/xray/model/sql/QueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;I)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 696
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 697
    sget-object v6, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayImagesQuery;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v7, Lcom/amazon/xray/model/DB;->EXCERPT:Lcom/amazon/xray/model/DB$ExcerptTable;

    iget-object v7, v7, Lcom/amazon/xray/model/DB$ExcerptTable;->IMAGE:Lcom/amazon/xray/model/sql/column/StringColumn;

    invoke-virtual {v6, v5, v7}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/StringColumn;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_1

    .line 700
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v5, :cond_2

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 702
    :cond_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 706
    :cond_3
    invoke-static {v0}, Lcom/amazon/xray/model/SidecarDatabaseManager;->release(Lcom/amazon/xray/model/SidecarDatabaseAdapter;)V

    return-object v1

    :catchall_1
    move-exception v1

    invoke-static {v0}, Lcom/amazon/xray/model/SidecarDatabaseManager;->release(Lcom/amazon/xray/model/SidecarDatabaseAdapter;)V

    .line 707
    throw v1
.end method
