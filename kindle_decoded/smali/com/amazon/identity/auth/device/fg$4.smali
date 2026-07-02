.class Lcom/amazon/identity/auth/device/fg$4;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/fg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic mt:Lcom/amazon/identity/auth/device/fg;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/fg;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/amazon/identity/auth/device/fg$4;->mt:Lcom/amazon/identity/auth/device/fg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 1

    const-string p1, "MAPJavaScriptBridge"

    const-string v0, "Token upgrade failed."

    .line 146
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1

    const-string p1, "MAPJavaScriptBridge"

    const-string v0, "Token upgrade succeeds."

    .line 140
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
