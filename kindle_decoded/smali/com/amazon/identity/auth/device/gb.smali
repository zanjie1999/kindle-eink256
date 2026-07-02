.class public Lcom/amazon/identity/auth/device/gb;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.gb"


# instance fields
.field private nA:Ljava/lang/String;

.field private nB:Lorg/json/JSONObject;

.field private final ny:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final nz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/kb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/kb;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/gb;->ny:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_0

    .line 37
    iput-object p1, p0, Lcom/amazon/identity/auth/device/gb;->nz:Ljava/util/List;

    goto :goto_0

    .line 41
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/gb;->nz:Ljava/util/List;

    .line 44
    :goto_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/gb;->nB:Lorg/json/JSONObject;

    return-void
.end method

.method private ch(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, ";"

    .line 1124
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1126
    array-length v1, p1

    if-gtz v1, :cond_0

    .line 1128
    sget-object p1, Lcom/amazon/identity/auth/device/gb;->TAG:Ljava/lang/String;

    const-string v1, "Cookie does not seem to be in a valid format"

    invoke-static {p1, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 1132
    aget-object p1, p1, v1

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1134
    array-length v1, p1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 1136
    sget-object p1, Lcom/amazon/identity/auth/device/gb;->TAG:Ljava/lang/String;

    const-string v1, "Cookie name/value pair does not seem to be in a valid format"

    invoke-static {p1, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 1140
    aget-object p1, p1, v1

    :goto_1
    if-eqz p1, :cond_2

    return-object p1

    .line 108
    :cond_2
    sget-object p1, Lcom/amazon/identity/auth/device/gb;->TAG:Ljava/lang/String;

    const-string v1, "Found no x-main cookie in RegisterDeviceResponse"

    invoke-static {p1, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 112
    sget-object v1, Lcom/amazon/identity/auth/device/gb;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Caught exception parsing the cookie value out of RegisterDeviceResponse"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v0
.end method

.method private ci(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "x-main"

    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "x-acb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private fd()V
    .locals 5

    .line 63
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gb;->ny:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gb;->nz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/kb;

    .line 72
    :try_start_0
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/kb;->getValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "x-main"

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 81
    invoke-direct {p0, v2}, Lcom/amazon/identity/auth/device/gb;->ch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/identity/auth/device/gb;->nA:Ljava/lang/String;

    .line 84
    :cond_3
    invoke-direct {p0, v2}, Lcom/amazon/identity/auth/device/gb;->ci(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    iget-object v2, p0, Lcom/amazon/identity/auth/device/gb;->nB:Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://www"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/kb;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/kb;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 91
    sget-object v2, Lcom/amazon/identity/auth/device/gb;->TAG:Ljava/lang/String;

    const-string v3, "Adding JSON value failed"

    invoke-static {v2, v3, v1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public fb()Ljava/lang/String;
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gb;->fd()V

    .line 51
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gb;->nA:Ljava/lang/String;

    return-object v0
.end method

.method public fc()Ljava/lang/String;
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gb;->fd()V

    .line 58
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gb;->nB:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
