.class Lcom/amazon/identity/auth/device/ef$1$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/ef$1;->useService(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic lo:Landroid/content/ComponentName;

.field final synthetic lp:Landroid/os/IBinder;

.field final synthetic lq:Lcom/amazon/identity/auth/device/ef$1;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/ef$1;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ef$1$1;->lq:Lcom/amazon/identity/auth/device/ef$1;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/ef$1$1;->lo:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/ef$1$1;->lp:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ef$1$1;->lq:Lcom/amazon/identity/auth/device/ef$1;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/ef$1;->ln:Lcom/amazon/identity/auth/device/ef;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ef$1$1;->lo:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ef$1$1;->lp:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/auth/device/ef;->useService(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method
