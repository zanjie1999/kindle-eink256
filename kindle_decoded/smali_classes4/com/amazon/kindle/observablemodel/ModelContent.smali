.class public Lcom/amazon/kindle/observablemodel/ModelContent;
.super Ljava/lang/Object;
.source "ModelContent.java"


# static fields
.field public static final CATEGORY_BOOK:I = 0x6

.field public static final CATEGORY_COMIC:I = 0x1

.field public static final CATEGORY_FALKOR:I = 0xe

.field public static final CATEGORY_LOCAL_BOOK:I = 0x3

.field public static final CATEGORY_LOCAL_DOC:I = 0x4

.field public static final CATEGORY_MAGAZINE:I = 0xa

.field public static final CATEGORY_MANGA:I = 0x2

.field public static final CATEGORY_NEWSPAPER:I = 0x9

.field public static final CATEGORY_PERSONAL_DOC:I = 0x8

.field public static final CATEGORY_PERSONAL_LETTER:I = 0x7

.field public static final CATEGORY_TEXTBOOK:I = 0xd

.field public static final GROUPING_BOOKS:I = 0x0

.field public static final GROUPING_COLLECTION:I = 0x3

.field public static final GROUPING_NARRATIVES:I = 0x5

.field public static final GROUPING_PERIODICALS:I = 0x2

.field public static final GROUPING_SERIES:I = 0x1

.field public static final GROUPING_SHORT_STORY:I = 0x4


# instance fields
.field mCategorySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mGroupingSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mIntersectingSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mParentGroup:Lcom/amazon/kindle/observablemodel/ItemID;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/observablemodel/ModelContent;->mCategorySet:Ljava/util/Set;

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/observablemodel/ModelContent;->mIntersectingSet:Ljava/util/Set;

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/observablemodel/ModelContent;->mGroupingSet:Ljava/util/Set;

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/amazon/kindle/observablemodel/ModelContent;->mParentGroup:Lcom/amazon/kindle/observablemodel/ItemID;

    return-void
.end method

.method constructor <init>(Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ")V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/ModelContent;->mCategorySet:Ljava/util/Set;

    .line 69
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/ModelContent;->mIntersectingSet:Ljava/util/Set;

    .line 70
    iput-object p2, p0, Lcom/amazon/kindle/observablemodel/ModelContent;->mGroupingSet:Ljava/util/Set;

    .line 71
    iput-object p3, p0, Lcom/amazon/kindle/observablemodel/ModelContent;->mParentGroup:Lcom/amazon/kindle/observablemodel/ItemID;

    return-void
.end method

.method constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ")V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/ModelContent;->mCategorySet:Ljava/util/Set;

    .line 76
    iput-object p2, p0, Lcom/amazon/kindle/observablemodel/ModelContent;->mIntersectingSet:Ljava/util/Set;

    .line 77
    iput-object p3, p0, Lcom/amazon/kindle/observablemodel/ModelContent;->mGroupingSet:Ljava/util/Set;

    .line 78
    iput-object p4, p0, Lcom/amazon/kindle/observablemodel/ModelContent;->mParentGroup:Lcom/amazon/kindle/observablemodel/ItemID;

    return-void
.end method

.method public static groupingForLeafName(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    .line 58
    invoke-static {v0}, Lcom/amazon/kindle/observablemodel/ModelContent;->leafNameForGroupingDictionary(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static leafNameForGroupingDictionary(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 49
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForSeriesToNarrative()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 46
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForFalkorDictionary()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 43
    :cond_2
    invoke-static {v1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForGroup(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 40
    :cond_3
    invoke-static {v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForGroup(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 37
    :cond_4
    invoke-static {v1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForGroup(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCategorySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ModelContent;->mCategorySet:Ljava/util/Set;

    return-object v0
.end method

.method public getGroupingSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ModelContent;->mGroupingSet:Ljava/util/Set;

    return-object v0
.end method

.method public getIntersectingSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ModelContent;->mIntersectingSet:Ljava/util/Set;

    return-object v0
.end method

.method public getParentGroup()Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ModelContent;->mParentGroup:Lcom/amazon/kindle/observablemodel/ItemID;

    return-object v0
.end method

.method public modelContentWithCategorySet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelContent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amazon/kindle/observablemodel/ModelContent;"
        }
    .end annotation

    .line 94
    new-instance v0, Lcom/amazon/kindle/observablemodel/ModelContent;

    iget-object v1, p0, Lcom/amazon/kindle/observablemodel/ModelContent;->mIntersectingSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/amazon/kindle/observablemodel/ModelContent;->mGroupingSet:Ljava/util/Set;

    iget-object v3, p0, Lcom/amazon/kindle/observablemodel/ModelContent;->mParentGroup:Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/amazon/kindle/observablemodel/ModelContent;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;)V

    return-object v0
.end method

.method public modelContentWithGroupingSet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelContent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amazon/kindle/observablemodel/ModelContent;"
        }
    .end annotation

    .line 102
    new-instance v0, Lcom/amazon/kindle/observablemodel/ModelContent;

    iget-object v1, p0, Lcom/amazon/kindle/observablemodel/ModelContent;->mCategorySet:Ljava/util/Set;

    iget-object v2, p0, Lcom/amazon/kindle/observablemodel/ModelContent;->mIntersectingSet:Ljava/util/Set;

    iget-object v3, p0, Lcom/amazon/kindle/observablemodel/ModelContent;->mParentGroup:Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/amazon/kindle/observablemodel/ModelContent;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;)V

    return-object v0
.end method

.method public modelContentWithIntersectingSet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelContent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/kindle/observablemodel/ModelContent;"
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/amazon/kindle/observablemodel/ModelContent;

    iget-object v1, p0, Lcom/amazon/kindle/observablemodel/ModelContent;->mCategorySet:Ljava/util/Set;

    iget-object v2, p0, Lcom/amazon/kindle/observablemodel/ModelContent;->mGroupingSet:Ljava/util/Set;

    iget-object v3, p0, Lcom/amazon/kindle/observablemodel/ModelContent;->mParentGroup:Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/amazon/kindle/observablemodel/ModelContent;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;)V

    return-object v0
.end method

.method public modelContentWithParentGroup(Lcom/amazon/kindle/observablemodel/ItemID;)Lcom/amazon/kindle/observablemodel/ModelContent;
    .locals 4

    .line 106
    new-instance v0, Lcom/amazon/kindle/observablemodel/ModelContent;

    iget-object v1, p0, Lcom/amazon/kindle/observablemodel/ModelContent;->mCategorySet:Ljava/util/Set;

    iget-object v2, p0, Lcom/amazon/kindle/observablemodel/ModelContent;->mIntersectingSet:Ljava/util/Set;

    iget-object v3, p0, Lcom/amazon/kindle/observablemodel/ModelContent;->mGroupingSet:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/amazon/kindle/observablemodel/ModelContent;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;)V

    return-object v0
.end method
