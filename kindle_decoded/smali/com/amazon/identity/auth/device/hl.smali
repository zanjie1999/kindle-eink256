.class public Lcom/amazon/identity/auth/device/hl;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/hj;


# static fields
.field private static final TAG:Ljava/lang/String; = "hl"

.field private static qr:Lcom/amazon/identity/auth/device/hl;


# instance fields
.field private final qs:Lcom/amazon/identity/auth/device/hk;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/amazon/identity/auth/device/hk;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/hk;-><init>(Lcom/amazon/identity/auth/device/ed;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/hl;->qs:Lcom/amazon/identity/auth/device/hk;

    return-void
.end method

.method public static declared-synchronized ai(Landroid/content/Context;)Lcom/amazon/identity/auth/device/hl;
    .locals 2

    const-class v0, Lcom/amazon/identity/auth/device/hl;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/hl;->qr:Lcom/amazon/identity/auth/device/hl;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/amazon/identity/auth/device/hl;

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/hl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/identity/auth/device/hl;->qr:Lcom/amazon/identity/auth/device/hl;

    .line 41
    :cond_0
    sget-object p0, Lcom/amazon/identity/auth/device/hl;->qr:Lcom/amazon/identity/auth/device/hl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public cV(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper$UserDictionaryInvalidUserLoginException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hl;->qs:Lcom/amazon/identity/auth/device/hk;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/hk;->cQ(Ljava/lang/String;)V

    return-void
.end method

.method public gq()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hl;->qs:Lcom/amazon/identity/auth/device/hk;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/hk;->gn()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
