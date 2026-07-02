.class final Lcom/amazon/identity/auth/device/dn$a;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/dn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final cy:Lcom/amazon/identity/auth/device/api/Callback;

.field final synthetic jK:Lcom/amazon/identity/auth/device/dn;

.field jL:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/amazon/identity/auth/device/dn;Lcom/amazon/identity/auth/device/api/Callback;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dn$a;->jK:Lcom/amazon/identity/auth/device/dn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p2, p0, Lcom/amazon/identity/auth/device/dn$a;->cy:Lcom/amazon/identity/auth/device/api/Callback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/identity/auth/device/dn;Lcom/amazon/identity/auth/device/api/Callback;B)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/dn$a;-><init>(Lcom/amazon/identity/auth/device/dn;Lcom/amazon/identity/auth/device/api/Callback;)V

    return-void
.end method

.method private declared-synchronized bl(Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dn$a;->jL:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 146
    invoke-static {}, Lcom/amazon/identity/auth/device/dn;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Duplicate callback detected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " called after "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/identity/auth/device/dn$a;->jL:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 148
    monitor-exit p0

    return p1

    .line 152
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dn$a;->jL:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 153
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "onError"

    .line 129
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/dn$a;->bl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dn$a;->cy:Lcom/amazon/identity/auth/device/api/Callback;

    if-nez v0, :cond_1

    return-void

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dn$a;->jK:Lcom/amazon/identity/auth/device/dn;

    invoke-static {v1, p1}, Lcom/amazon/identity/auth/device/dn;->a(Lcom/amazon/identity/auth/device/dn;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "onSuccess"

    .line 113
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/dn$a;->bl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dn$a;->cy:Lcom/amazon/identity/auth/device/api/Callback;

    if-nez v0, :cond_1

    return-void

    .line 123
    :cond_1
    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method
