.class Lcom/amazon/identity/auth/device/x$f;
.super Lcom/amazon/identity/auth/device/bk;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field private final bM:Ljava/lang/String;

.field private final bO:Lcom/amazon/identity/auth/device/ej;

.field private final bP:Lcom/amazon/identity/auth/device/br;

.field private final bQ:Landroid/os/Bundle;

.field private ca:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final cb:Z

.field private final mContext:Landroid/content/Context;

.field private final t:Lcom/amazon/identity/auth/device/j;

.field private final u:Lcom/amazon/identity/auth/device/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLcom/amazon/identity/auth/device/i;Lcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/br;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)V
    .locals 2

    .line 887
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/bk;-><init>()V

    .line 869
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/x$f;->ca:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 888
    iput-object p1, p0, Lcom/amazon/identity/auth/device/x$f;->mContext:Landroid/content/Context;

    .line 889
    iput-object p2, p0, Lcom/amazon/identity/auth/device/x$f;->bM:Ljava/lang/String;

    .line 890
    iput-boolean p3, p0, Lcom/amazon/identity/auth/device/x$f;->cb:Z

    .line 891
    iput-object p4, p0, Lcom/amazon/identity/auth/device/x$f;->u:Lcom/amazon/identity/auth/device/i;

    .line 892
    iput-object p5, p0, Lcom/amazon/identity/auth/device/x$f;->t:Lcom/amazon/identity/auth/device/j;

    .line 893
    iput-object p6, p0, Lcom/amazon/identity/auth/device/x$f;->bP:Lcom/amazon/identity/auth/device/br;

    .line 894
    iput-object p7, p0, Lcom/amazon/identity/auth/device/x$f;->bO:Lcom/amazon/identity/auth/device/ej;

    .line 895
    iput-object p8, p0, Lcom/amazon/identity/auth/device/x$f;->bQ:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public G()Z
    .locals 1

    .line 905
    iget-object v0, p0, Lcom/amazon/identity/auth/device/x$f;->ca:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 932
    invoke-static {}, Lcom/amazon/identity/auth/device/x;->access$000()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 933
    invoke-static {p3}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->a(Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;)V

    const/4 p1, 0x0

    .line 935
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/x$f;->b(Z)V

    .line 936
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/bk;->asyncOperationComplete()V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 924
    invoke-static {}, Lcom/amazon/identity/auth/device/x;->access$000()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 925
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/x$f;->b(Z)V

    .line 926
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/bk;->asyncOperationComplete()V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 900
    iget-object v0, p0, Lcom/amazon/identity/auth/device/x$f;->ca:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public startAsyncOperation()V
    .locals 9

    .line 911
    iget-object v0, p0, Lcom/amazon/identity/auth/device/x$f;->u:Lcom/amazon/identity/auth/device/i;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/x$f;->mContext:Landroid/content/Context;

    .line 912
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/identity/auth/device/x$f;->bM:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/x$f;->bP:Lcom/amazon/identity/auth/device/br;

    iget-boolean v5, p0, Lcom/amazon/identity/auth/device/x$f;->cb:Z

    iget-object v6, p0, Lcom/amazon/identity/auth/device/x$f;->t:Lcom/amazon/identity/auth/device/j;

    iget-object v7, p0, Lcom/amazon/identity/auth/device/x$f;->bO:Lcom/amazon/identity/auth/device/ej;

    iget-object v8, p0, Lcom/amazon/identity/auth/device/x$f;->bQ:Landroid/os/Bundle;

    move-object v1, p0

    .line 911
    invoke-virtual/range {v0 .. v8}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/auth/device/i$a;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/br;ZLcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)V

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 6

    .line 944
    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->ACCOUNT_ALREADY_REGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    .line 945
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->ACCOUNT_ALREADY_EXISTS:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 944
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/identity/auth/device/x$f;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
