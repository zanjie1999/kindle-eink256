.class Lcom/amazon/identity/auth/device/hd$a;
.super Lcom/amazon/identity/auth/device/hd$c;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/hd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final pS:Lcom/amazon/identity/auth/device/je;

.field final synthetic pT:Lcom/amazon/identity/auth/device/hd;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/hd;Lcom/amazon/identity/auth/device/hd$d;Lcom/amazon/identity/auth/device/api/Callback;)V
    .locals 1

    .line 162
    new-instance v0, Lcom/amazon/identity/auth/device/je;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/je;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/identity/auth/device/hd$a;-><init>(Lcom/amazon/identity/auth/device/hd;Lcom/amazon/identity/auth/device/hd$d;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/je;)V

    return-void
.end method

.method private constructor <init>(Lcom/amazon/identity/auth/device/hd;Lcom/amazon/identity/auth/device/hd$d;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/je;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/amazon/identity/auth/device/hd$a;->pT:Lcom/amazon/identity/auth/device/hd;

    .line 167
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/hd$c;-><init>(Lcom/amazon/identity/auth/device/hd;Lcom/amazon/identity/auth/device/hd$d;Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 168
    iput-object p4, p0, Lcom/amazon/identity/auth/device/hd$a;->pS:Lcom/amazon/identity/auth/device/je;

    .line 169
    invoke-static {p1}, Lcom/amazon/identity/auth/device/hd;->b(Lcom/amazon/identity/auth/device/hd;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method


# virtual methods
.method protected gi()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 175
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/hd$c;->gk()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Scheduled running blocking job %s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TokenJobQueue"

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hd$a;->pS:Lcom/amazon/identity/auth/device/je;

    new-instance v1, Lcom/amazon/identity/auth/device/hd$a$1;

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/hd$a$1;-><init>(Lcom/amazon/identity/auth/device/hd$a;)V

    sget-wide v2, Lcom/amazon/identity/auth/device/hd;->pN:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/identity/auth/device/je;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method protected gj()V
    .locals 3

    .line 192
    invoke-super {p0}, Lcom/amazon/identity/auth/device/hd$c;->gj()V

    const-string v0, "TokenJobQueue"

    const-string v1, "Cancel time out"

    .line 194
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/amazon/identity/auth/device/hd$a;->pS:Lcom/amazon/identity/auth/device/je;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/je;->cancel()V

    .line 196
    iget-object v1, p0, Lcom/amazon/identity/auth/device/hd$a;->pS:Lcom/amazon/identity/auth/device/je;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/je;->gQ()Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/amazon/identity/auth/device/hd$a;->pS:Lcom/amazon/identity/auth/device/je;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/je;->gP()V

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling scheduleNext in postRunning in a blocking job: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/hd$c;->gk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hd$a;->pT:Lcom/amazon/identity/auth/device/hd;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/hd;->c(Lcom/amazon/identity/auth/device/hd;)V

    :cond_0
    return-void
.end method
