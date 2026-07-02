.class public Lcom/amazon/article/reader/ArticleMetadata;
.super Ljava/lang/Object;
.source "ArticleMetadata.java"


# instance fields
.field private final articleDetailPageLink:Ljava/lang/String;

.field private final articleLogoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p2, p0, Lcom/amazon/article/reader/ArticleMetadata;->articleDetailPageLink:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lcom/amazon/article/reader/ArticleMetadata;->articleLogoUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getArticleDetailPageLink()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleMetadata;->articleDetailPageLink:Ljava/lang/String;

    return-object v0
.end method

.method public getArticleLogoUrl()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleMetadata;->articleLogoUrl:Ljava/lang/String;

    return-object v0
.end method
