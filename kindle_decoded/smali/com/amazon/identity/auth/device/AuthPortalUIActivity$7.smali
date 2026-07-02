.class Lcom/amazon/identity/auth/device/AuthPortalUIActivity$7;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eG:Landroid/webkit/WebView;

.field final synthetic eH:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;

.field final synthetic ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Landroid/webkit/WebView;Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$7;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$7;->eG:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$7;->eH:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 455
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$7;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->j(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)V

    .line 456
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$7;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$7;->eG:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$7;->eH:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;

    invoke-static {v0, v1, v2}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Landroid/webkit/WebView;Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;)V

    return-void
.end method
