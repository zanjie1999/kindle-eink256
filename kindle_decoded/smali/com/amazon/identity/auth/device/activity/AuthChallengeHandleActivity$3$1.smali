.class Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eY:Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3$1;->eY:Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3$1;->eY:Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3;->eX:Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;->k(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1

    .line 251
    new-instance v0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3$1$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3$1$1;-><init>(Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3$1;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/amazon/identity/auth/device/jf;->e(Ljava/lang/Runnable;)V

    return-void
.end method
