.class Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$2;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic gn:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;)V
    .locals 0

    .line 924
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$2;->gn:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 2

    .line 935
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$2;->gn:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;

    const-string v1, "ON_UNABLE_TO_GET_COOKIES"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1

    .line 929
    invoke-static {}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Successfully registered account, set cookies in WebView, and loaded return_to url"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
