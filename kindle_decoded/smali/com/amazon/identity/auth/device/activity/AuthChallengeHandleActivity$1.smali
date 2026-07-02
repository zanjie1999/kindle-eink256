.class Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eX:Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$1;->eX:Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$1;->eX:Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;

    iget-object v1, v0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->ek:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;->a(Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
