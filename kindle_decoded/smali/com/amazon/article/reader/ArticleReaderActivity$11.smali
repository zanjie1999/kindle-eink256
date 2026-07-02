.class Lcom/amazon/article/reader/ArticleReaderActivity$11;
.super Ljava/lang/Object;
.source "ArticleReaderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/article/reader/ArticleReaderActivity;->showNetworkUnavailableAlert()V
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

    .line 518
    iput-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$11;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 520
    iget-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$11;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
