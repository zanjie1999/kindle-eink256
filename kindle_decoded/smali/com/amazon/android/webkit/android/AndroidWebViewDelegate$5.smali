.class Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$5;
.super Ljava/lang/Object;
.source "AndroidWebViewDelegate.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->setDownloadDelegate(Lcom/amazon/android/webkit/AmazonDownloadDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;

.field final synthetic val$delegate:Lcom/amazon/android/webkit/AmazonDownloadDelegate;


# direct methods
.method constructor <init>(Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;Lcom/amazon/android/webkit/AmazonDownloadDelegate;)V
    .locals 0

    .line 814
    iput-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$5;->this$0:Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;

    iput-object p2, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$5;->val$delegate:Lcom/amazon/android/webkit/AmazonDownloadDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    .line 819
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$5;->val$delegate:Lcom/amazon/android/webkit/AmazonDownloadDelegate;

    const-string v5, ""

    const-string v6, ""

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v7, p5

    invoke-interface/range {v0 .. v8}, Lcom/amazon/android/webkit/AmazonDownloadDelegate;->requestHttpGetDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
