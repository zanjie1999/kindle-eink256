.class Lcom/amazon/identity/auth/device/fg$5;
.super Lcom/amazon/identity/auth/device/gv;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/fg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ms:Ljava/lang/String;

.field final synthetic mt:Lcom/amazon/identity/auth/device/fg;

.field final synthetic mv:Ljava/lang/String;

.field final synthetic val$callbackName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/fg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/amazon/identity/auth/device/fg$5;->mt:Lcom/amazon/identity/auth/device/fg;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/fg$5;->val$callbackName:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/fg$5;->ms:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/fg$5;->mv:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gv;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Landroid/os/Bundle;)V
    .locals 3

    .line 154
    iget-object p1, p0, Lcom/amazon/identity/auth/device/fg$5;->mt:Lcom/amazon/identity/auth/device/fg;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/fg$5;->val$callbackName:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/fg$5;->ms:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/fg$5;->mv:Ljava/lang/String;

    .line 1037
    invoke-virtual {p1, v0, v1, v2}, Lcom/amazon/identity/auth/device/fg;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
