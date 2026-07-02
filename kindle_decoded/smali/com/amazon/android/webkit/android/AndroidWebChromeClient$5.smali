.class Lcom/amazon/android/webkit/android/AndroidWebChromeClient$5;
.super Ljava/lang/Object;
.source "AndroidWebChromeClient.java"

# interfaces
.implements Lcom/amazon/android/webkit/AmazonGeolocationPermissions$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/webkit/android/AndroidWebChromeClient;

.field final synthetic val$callback:Landroid/webkit/GeolocationPermissions$Callback;


# direct methods
.method constructor <init>(Lcom/amazon/android/webkit/android/AndroidWebChromeClient;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient$5;->this$0:Lcom/amazon/android/webkit/android/AndroidWebChromeClient;

    iput-object p2, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient$5;->val$callback:Landroid/webkit/GeolocationPermissions$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/String;ZZ)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient$5;->val$callback:Landroid/webkit/GeolocationPermissions$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void
.end method
