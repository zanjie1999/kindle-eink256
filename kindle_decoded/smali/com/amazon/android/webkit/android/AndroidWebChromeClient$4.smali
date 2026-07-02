.class Lcom/amazon/android/webkit/android/AndroidWebChromeClient$4;
.super Ljava/lang/Object;
.source "AndroidWebChromeClient.java"

# interfaces
.implements Lcom/amazon/android/webkit/AmazonWebChromeClient$CustomViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/webkit/android/AndroidWebChromeClient;

.field final synthetic val$callback:Landroid/webkit/WebChromeClient$CustomViewCallback;


# direct methods
.method constructor <init>(Lcom/amazon/android/webkit/android/AndroidWebChromeClient;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient$4;->this$0:Lcom/amazon/android/webkit/android/AndroidWebChromeClient;

    iput-object p2, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient$4;->val$callback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomViewHidden()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient$4;->val$callback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    return-void
.end method
