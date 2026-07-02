.class final enum Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;
.super Ljava/lang/Enum;
.source "MobiPeriodicalTOC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TOCNodeName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

.field public static final enum Article:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

.field public static final enum ArticleFragment:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

.field public static final enum ReplicaArticleBlock:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

.field public static final enum ReplicaArticleBlockList:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

.field public static final enum ReplicaCrossReference:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

.field public static final enum ReplicaPage:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

.field public static final enum ReplicaPageList:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

.field public static final enum ReplicaPageReferenceList:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

.field public static final enum ReplicaPageWithoutTarget:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

.field public static final enum Section:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;


# instance fields
.field private internalName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 40
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    const/4 v1, 0x0

    const-string v2, "Section"

    const-string/jumbo v3, "section"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->Section:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    .line 41
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    const/4 v2, 0x1

    const-string v3, "Article"

    const-string v4, "article"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->Article:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    .line 42
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    const/4 v3, 0x2

    const-string v4, "ArticleFragment"

    const-string v5, "articleFragment"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->ArticleFragment:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    .line 43
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    const/4 v4, 0x3

    const-string v5, "ReplicaPage"

    const-string/jumbo v6, "replica-page"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->ReplicaPage:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    .line 44
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    const/4 v5, 0x4

    const-string v6, "ReplicaPageWithoutTarget"

    const-string/jumbo v7, "nolink-replica-page"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->ReplicaPageWithoutTarget:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    .line 45
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    const/4 v6, 0x5

    const-string v7, "ReplicaArticleBlock"

    const-string v8, "article-block"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->ReplicaArticleBlock:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    .line 46
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    const/4 v7, 0x6

    const-string v8, "ReplicaCrossReference"

    const-string v9, "cross-replica-page-reference"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->ReplicaCrossReference:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    .line 47
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    const/4 v8, 0x7

    const-string v9, "ReplicaPageList"

    const-string/jumbo v10, "replica-page-list"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->ReplicaPageList:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    .line 48
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    const/16 v9, 0x8

    const-string v10, "ReplicaArticleBlockList"

    const-string/jumbo v11, "replica-article-block-list"

    invoke-direct {v0, v10, v9, v11}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->ReplicaArticleBlockList:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    .line 49
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    const/16 v10, 0x9

    const-string v11, "ReplicaPageReferenceList"

    const-string/jumbo v12, "replica-page-reference-list"

    invoke-direct {v0, v11, v10, v12}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->ReplicaPageReferenceList:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    const/16 v11, 0xa

    new-array v11, v11, [Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    .line 39
    sget-object v12, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->Section:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    aput-object v12, v11, v1

    sget-object v1, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->Article:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    aput-object v1, v11, v2

    sget-object v1, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->ArticleFragment:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    aput-object v1, v11, v3

    sget-object v1, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->ReplicaPage:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    aput-object v1, v11, v4

    sget-object v1, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->ReplicaPageWithoutTarget:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    aput-object v1, v11, v5

    sget-object v1, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->ReplicaArticleBlock:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    aput-object v1, v11, v6

    sget-object v1, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->ReplicaCrossReference:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    aput-object v1, v11, v7

    sget-object v1, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->ReplicaPageList:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    aput-object v1, v11, v8

    sget-object v1, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->ReplicaArticleBlockList:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->$VALUES:[Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->internalName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;
    .locals 1

    .line 39
    const-class v0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;
    .locals 1

    .line 39
    sget-object v0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->$VALUES:[Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    invoke-virtual {v0}, [Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->internalName:Ljava/lang/String;

    return-object v0
.end method
