.class Lcom/amazon/identity/auth/device/dr$3;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/dr;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eG:Landroid/webkit/WebView;

.field final synthetic ke:Lcom/amazon/identity/auth/device/dr;

.field final synthetic kg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/dr;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dr$3;->ke:Lcom/amazon/identity/auth/device/dr;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/dr$3;->eG:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/dr$3;->kg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dr$3;->eG:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dr$3;->kg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
