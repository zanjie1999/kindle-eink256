.class Lcom/amazon/article/reader/ArticleReaderActivity$2;
.super Ljava/lang/Object;
.source "ArticleReaderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/article/reader/ArticleReaderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/article/reader/ArticleReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/article/reader/ArticleReaderActivity;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$2;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 184
    iget-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$2;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-virtual {p1}, Lcom/amazon/article/reader/ArticleReaderActivity;->goBack()V

    return-void
.end method
