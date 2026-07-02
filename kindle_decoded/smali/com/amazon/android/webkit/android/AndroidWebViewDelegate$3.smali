.class Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$3;
.super Landroid/webkit/WebBackForwardListClient;
.source "AndroidWebViewDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->setWebBackForwardListClient(Lcom/amazon/android/webkit/AmazonWebBackForwardListClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;

.field final synthetic val$client:Lcom/amazon/android/webkit/AmazonWebBackForwardListClient;


# direct methods
.method constructor <init>(Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;Lcom/amazon/android/webkit/AmazonWebBackForwardListClient;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$3;->this$0:Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;

    iput-object p2, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$3;->val$client:Lcom/amazon/android/webkit/AmazonWebBackForwardListClient;

    invoke-direct {p0}, Landroid/webkit/WebBackForwardListClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onIndexChanged(Landroid/webkit/WebHistoryItem;I)V
    .locals 9

    .line 483
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$3;->val$client:Lcom/amazon/android/webkit/AmazonWebBackForwardListClient;

    new-instance v8, Lcom/amazon/android/webkit/AmazonWebHistoryItem;

    invoke-virtual {p1}, Landroid/webkit/WebHistoryItem;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$3;->this$0:Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;

    invoke-static {v1, p1}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->access$400(Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;Landroid/webkit/WebHistoryItem;)[B

    move-result-object v7

    const/4 v3, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/amazon/android/webkit/AmazonWebHistoryItem;-><init>(Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v0, v8, p2}, Lcom/amazon/android/webkit/AmazonWebBackForwardListClient;->onIndexChanged(Lcom/amazon/android/webkit/AmazonWebHistoryItem;I)V

    return-void
.end method

.method public onNewHistoryItem(Landroid/webkit/WebHistoryItem;)V
    .locals 9

    .line 475
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$3;->val$client:Lcom/amazon/android/webkit/AmazonWebBackForwardListClient;

    new-instance v8, Lcom/amazon/android/webkit/AmazonWebHistoryItem;

    invoke-virtual {p1}, Landroid/webkit/WebHistoryItem;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$3;->this$0:Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;

    invoke-static {v1, p1}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->access$400(Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;Landroid/webkit/WebHistoryItem;)[B

    move-result-object v7

    const/4 v3, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/amazon/android/webkit/AmazonWebHistoryItem;-><init>(Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v0, v8}, Lcom/amazon/android/webkit/AmazonWebBackForwardListClient;->onNewHistoryItem(Lcom/amazon/android/webkit/AmazonWebHistoryItem;)V

    return-void
.end method
