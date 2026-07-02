.class Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eR:Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity$1;->eR:Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity$1;->eR:Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;

    iget-object v1, v0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->ek:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;->a(Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
