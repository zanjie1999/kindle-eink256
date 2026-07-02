.class Lcom/amazon/identity/auth/device/hn$a;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/hn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mK:Lcom/amazon/identity/auth/device/ms;

.field private final qA:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/accounts/AccountManagerCallback;Lcom/amazon/identity/auth/device/ms;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerCallback<",
            "TT;>;",
            "Lcom/amazon/identity/auth/device/ms;",
            ")V"
        }
    .end annotation

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    iput-object p1, p0, Lcom/amazon/identity/auth/device/hn$a;->qA:Landroid/accounts/AccountManagerCallback;

    .line 439
    iput-object p2, p0, Lcom/amazon/identity/auth/device/hn$a;->mK:Lcom/amazon/identity/auth/device/ms;

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "TT;>;)V"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hn$a;->mK:Lcom/amazon/identity/auth/device/ms;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 446
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hn$a;->qA:Landroid/accounts/AccountManagerCallback;

    if-eqz v0, :cond_0

    .line 448
    invoke-interface {v0, p1}, Landroid/accounts/AccountManagerCallback;->run(Landroid/accounts/AccountManagerFuture;)V

    :cond_0
    return-void
.end method
