.class Lcom/amazon/identity/auth/device/x$c$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/x$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bT:Lcom/amazon/identity/auth/device/x$c;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/x$c;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/amazon/identity/auth/device/x$c$1;->bT:Lcom/amazon/identity/auth/device/x$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 407
    invoke-static {}, Lcom/amazon/identity/auth/device/x;->access$000()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    .line 408
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, p2, p4

    const-string p3, "Deregister Failure for Overriding DSN Child Device Type: %s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 407
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 397
    invoke-static {}, Lcom/amazon/identity/auth/device/x;->access$000()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const-string p1, "Deregister Succeeded for Overriding DSN Child Device Type. directedId %s"

    .line 398
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 397
    invoke-static {p2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 3

    .line 416
    invoke-static {}, Lcom/amazon/identity/auth/device/x;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Deregister Failure for Overriding DSN Child Device Type due to registration already existing.  This should not happen. DirectedId: %s"

    .line 417
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 416
    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
