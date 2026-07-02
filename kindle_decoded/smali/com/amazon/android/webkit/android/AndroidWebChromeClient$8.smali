.class Lcom/amazon/android/webkit/android/AndroidWebChromeClient$8;
.super Ljava/lang/Object;
.source "AndroidWebChromeClient.java"

# interfaces
.implements Lcom/amazon/android/webkit/AmazonValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/android/webkit/AmazonValueCallback<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/webkit/android/AndroidWebChromeClient;

.field final synthetic val$callback:Landroid/webkit/ValueCallback;


# direct methods
.method constructor <init>(Lcom/amazon/android/webkit/android/AndroidWebChromeClient;Landroid/webkit/ValueCallback;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient$8;->this$0:Lcom/amazon/android/webkit/android/AndroidWebChromeClient;

    iput-object p2, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient$8;->val$callback:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 265
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/android/webkit/android/AndroidWebChromeClient$8;->onReceiveValue([Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue([Ljava/lang/String;)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient$8;->val$callback:Landroid/webkit/ValueCallback;

    invoke-interface {v0, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    return-void
.end method
