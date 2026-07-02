.class Lcom/amazon/identity/auth/device/fg$2;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/fg;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic kg:Ljava/lang/String;

.field final synthetic mt:Lcom/amazon/identity/auth/device/fg;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/fg;Ljava/lang/String;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/amazon/identity/auth/device/fg$2;->mt:Lcom/amazon/identity/auth/device/fg;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/fg$2;->kg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 475
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fg$2;->mt:Lcom/amazon/identity/auth/device/fg;

    .line 1037
    iget-object v0, v0, Lcom/amazon/identity/auth/device/fg;->ek:Landroid/webkit/WebView;

    .line 475
    iget-object v1, p0, Lcom/amazon/identity/auth/device/fg$2;->kg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
