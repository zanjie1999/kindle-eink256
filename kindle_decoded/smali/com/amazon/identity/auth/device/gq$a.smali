.class public final Lcom/amazon/identity/auth/device/gq$a;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/gq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private final oJ:Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper;

.field private final oK:Ljava/lang/Long;

.field final synthetic oL:Lcom/amazon/identity/auth/device/gq;


# direct methods
.method private constructor <init>(Lcom/amazon/identity/auth/device/gq;Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper;Ljava/lang/Long;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/amazon/identity/auth/device/gq$a;->oL:Lcom/amazon/identity/auth/device/gq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/amazon/identity/auth/device/gq$a;->oJ:Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper;

    .line 36
    iput-object p3, p0, Lcom/amazon/identity/auth/device/gq$a;->oK:Ljava/lang/Long;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/identity/auth/device/gq;Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper;Ljava/lang/Long;B)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/gq$a;-><init>(Lcom/amazon/identity/auth/device/gq;Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public fK()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gq$a;->oL:Lcom/amazon/identity/auth/device/gq;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/gq;->a(Lcom/amazon/identity/auth/device/gq;)[Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/gq$a;->oJ:Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper;

    if-nez v1, :cond_0

    .line 45
    invoke-static {}, Lcom/amazon/identity/auth/device/gq;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 46
    monitor-exit v0

    return-void

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/gq$a;->oL:Lcom/amazon/identity/auth/device/gq;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/gq;->b(Lcom/amazon/identity/auth/device/gq;)Lcom/amazon/identity/auth/device/cw;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/gq$a;->oJ:Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper;

    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/cw;->a(Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper;)V

    .line 50
    iget-object v1, p0, Lcom/amazon/identity/auth/device/gq$a;->oL:Lcom/amazon/identity/auth/device/gq;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/gq$a;->oK:Ljava/lang/Long;

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/gq;->a(Lcom/amazon/identity/auth/device/gq;Ljava/lang/Long;)V

    .line 51
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
