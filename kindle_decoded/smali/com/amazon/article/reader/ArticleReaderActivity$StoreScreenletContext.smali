.class Lcom/amazon/article/reader/ArticleReaderActivity$StoreScreenletContext;
.super Lcom/amazon/kindle/krx/ui/BaseScreenletContext;
.source "ArticleReaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/article/reader/ArticleReaderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreScreenletContext"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/article/reader/ArticleReaderActivity;


# direct methods
.method private constructor <init>(Lcom/amazon/article/reader/ArticleReaderActivity;)V
    .locals 0

    .line 667
    iput-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$StoreScreenletContext;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/BaseScreenletContext;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/article/reader/ArticleReaderActivity;Lcom/amazon/article/reader/ArticleReaderActivity$1;)V
    .locals 0

    .line 667
    invoke-direct {p0, p1}, Lcom/amazon/article/reader/ArticleReaderActivity$StoreScreenletContext;-><init>(Lcom/amazon/article/reader/ArticleReaderActivity;)V

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity$StoreScreenletContext;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    return-object v0
.end method

.method public getMetricsContext()Ljava/lang/String;
    .locals 1

    .line 692
    const-class v0, Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 677
    invoke-static {}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$1000()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public launchScreenlet(Lcom/amazon/kindle/krx/ui/ScreenletIntent;)V
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity$StoreScreenletContext;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-static {v0, p1}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$1200(Lcom/amazon/article/reader/ArticleReaderActivity;Lcom/amazon/kindle/krx/ui/ScreenletIntent;)V

    return-void
.end method

.method public notifyCanGoBackChanged()V
    .locals 0

    return-void
.end method
