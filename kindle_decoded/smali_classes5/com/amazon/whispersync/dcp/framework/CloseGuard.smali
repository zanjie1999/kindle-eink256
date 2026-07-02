.class public Lcom/amazon/whispersync/dcp/framework/CloseGuard;
.super Ljava/lang/Object;
.source "CloseGuard.java"


# instance fields
.field private mAllocationSite:Ljava/lang/Throwable;

.field private mDeallocationSite:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/CloseGuard;->mAllocationSite:Ljava/lang/Throwable;

    .line 48
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/CloseGuard;->mDeallocationSite:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/CloseGuard;->mAllocationSite:Ljava/lang/Throwable;

    .line 64
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/CloseGuard;->mDeallocationSite:Ljava/lang/Throwable;

    return-void
.end method

.method public isOpen()Z
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/CloseGuard;->mAllocationSite:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public open(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/Throwable;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Explicit termination method %s not called"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/CloseGuard;->mAllocationSite:Ljava/lang/Throwable;

    return-void

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "closer == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public throwIfClosed()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/CloseGuard;->mDeallocationSite:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/CloseGuard;->mDeallocationSite:Ljava/lang/Throwable;

    const-string v2, "The resource has been closed at attached stack trace."

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public warnIfOpen()V
    .locals 3

    .line 69
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/CloseGuard;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/CloseGuard;->mAllocationSite:Ljava/lang/Throwable;

    const-string v1, "StrictMode"

    const-string v2, "A resource was acquired at attached stack trace but never released. See java.io.Closeable for information on avoiding resource leaks."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
