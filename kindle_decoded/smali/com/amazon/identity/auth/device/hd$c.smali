.class public abstract Lcom/amazon/identity/auth/device/hd$c;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/hd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "c"
.end annotation


# instance fields
.field final g:Lcom/amazon/identity/auth/device/api/Callback;

.field final synthetic pT:Lcom/amazon/identity/auth/device/hd;

.field final pV:Lcom/amazon/identity/auth/device/hd$d;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/hd;Lcom/amazon/identity/auth/device/hd$d;Lcom/amazon/identity/auth/device/api/Callback;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/amazon/identity/auth/device/hd$c;->pT:Lcom/amazon/identity/auth/device/hd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p3, p0, Lcom/amazon/identity/auth/device/hd$c;->g:Lcom/amazon/identity/auth/device/api/Callback;

    .line 80
    iput-object p2, p0, Lcom/amazon/identity/auth/device/hd$c;->pV:Lcom/amazon/identity/auth/device/hd$d;

    return-void
.end method


# virtual methods
.method protected abstract gi()V
.end method

.method protected gj()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 146
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/hd$c;->gk()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Finish executing task %s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TokenJobQueue"

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected gk()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hd$c;->pV:Lcom/amazon/identity/auth/device/hd$d;

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/hd$d;->gk()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected run()V
    .locals 4

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Begin executing task "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/hd$c;->gk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TokenJobQueue"

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v0, Lcom/amazon/identity/auth/device/hd$c$1;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/hd$c$1;-><init>(Lcom/amazon/identity/auth/device/hd$c;)V

    .line 109
    :try_start_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/hd$c;->pT:Lcom/amazon/identity/auth/device/hd;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/hd;->a(Lcom/amazon/identity/auth/device/hd;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/amazon/identity/auth/device/hd$c$2;

    invoke-direct {v3, p0, v0}, Lcom/amazon/identity/auth/device/hd$c$2;-><init>(Lcom/amazon/identity/auth/device/hd$c;Lcom/amazon/identity/auth/device/api/Callback;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/hd$c;->gi()V

    return-void

    :catchall_0
    move-exception v0

    .line 137
    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/hd$c;->gi()V

    .line 139
    throw v0
.end method
