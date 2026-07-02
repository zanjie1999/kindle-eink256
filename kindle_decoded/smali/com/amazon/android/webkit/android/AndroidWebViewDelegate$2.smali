.class Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$2;
.super Ljava/lang/Object;
.source "AndroidWebViewDelegate.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->setDownloadListener(Lcom/amazon/android/webkit/AmazonDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;

.field final synthetic val$listener:Lcom/amazon/android/webkit/AmazonDownloadListener;


# direct methods
.method constructor <init>(Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;Lcom/amazon/android/webkit/AmazonDownloadListener;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$2;->this$0:Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;

    iput-object p2, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$2;->val$listener:Lcom/amazon/android/webkit/AmazonDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .line 412
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$2;->val$listener:Lcom/amazon/android/webkit/AmazonDownloadListener;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/amazon/android/webkit/AmazonDownloadListener;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
