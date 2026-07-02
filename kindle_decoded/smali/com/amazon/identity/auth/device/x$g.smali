.class Lcom/amazon/identity/auth/device/x$g;
.super Lcom/amazon/identity/auth/device/bk;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# instance fields
.field private final cc:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;

.field private cd:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;)V
    .locals 2

    .line 737
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/bk;-><init>()V

    .line 734
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/x$g;->cd:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 738
    iput-object p1, p0, Lcom/amazon/identity/auth/device/x$g;->cc:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;

    return-void
.end method

.method private c(Z)V
    .locals 1

    .line 748
    iget-object v0, p0, Lcom/amazon/identity/auth/device/x$g;->cd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public H()Z
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/amazon/identity/auth/device/x$g;->cd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public I()Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/amazon/identity/auth/device/x$g;->cc:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;

    return-object v0
.end method

.method public J()V
    .locals 2

    .line 759
    invoke-static {}, Lcom/amazon/identity/auth/device/x;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubAuth Connection timeout"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 760
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/x$g;->c(Z)V

    .line 761
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/bk;->asyncOperationComplete()V

    return-void
.end method

.method public K()V
    .locals 1

    const/4 v0, 0x1

    .line 767
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/x$g;->c(Z)V

    .line 768
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/bk;->asyncOperationComplete()V

    return-void
.end method

.method public a(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;)V
    .locals 3

    .line 774
    invoke-static {}, Lcom/amazon/identity/auth/device/x;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SubAuth Disconnected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 775
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/x$g;->c(Z)V

    return-void
.end method

.method public startAsyncOperation()V
    .locals 2

    .line 781
    iget-object v0, p0, Lcom/amazon/identity/auth/device/x$g;->cc:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;

    invoke-virtual {v0, p0}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->a(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    invoke-static {}, Lcom/amazon/identity/auth/device/x;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error binding to service"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 784
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/x$g;->c(Z)V

    .line 785
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/bk;->asyncOperationComplete()V

    :cond_0
    return-void
.end method
