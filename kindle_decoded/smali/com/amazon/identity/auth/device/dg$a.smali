.class public abstract Lcom/amazon/identity/auth/device/dg$a;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/dg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field protected final jt:Lcom/amazon/identity/auth/device/dg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/identity/auth/device/dg<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/dg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/dg<",
            "TT;>;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dg$a;->jt:Lcom/amazon/identity/auth/device/dg;

    return-void
.end method


# virtual methods
.method public abstract d(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onError()V
.end method

.method public run()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dg$a;->jt:Lcom/amazon/identity/auth/device/dg;

    invoke-virtual {v0, p0}, Lcom/amazon/identity/auth/device/dg;->e(Lcom/amazon/identity/auth/device/dg$a;)V

    return-void
.end method
