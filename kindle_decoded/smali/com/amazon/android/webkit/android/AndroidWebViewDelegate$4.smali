.class Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$4;
.super Ljava/lang/Object;
.source "AndroidWebViewDelegate.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->saveWebArchive(Ljava/lang/String;ZLcom/amazon/android/webkit/AmazonValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;

.field final synthetic val$callback:Lcom/amazon/android/webkit/AmazonValueCallback;


# direct methods
.method constructor <init>(Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;Lcom/amazon/android/webkit/AmazonValueCallback;)V
    .locals 0

    .line 559
    iput-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$4;->this$0:Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;

    iput-object p2, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$4;->val$callback:Lcom/amazon/android/webkit/AmazonValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 559
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$4;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$4;->val$callback:Lcom/amazon/android/webkit/AmazonValueCallback;

    invoke-interface {v0, p1}, Lcom/amazon/android/webkit/AmazonValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    return-void
.end method
