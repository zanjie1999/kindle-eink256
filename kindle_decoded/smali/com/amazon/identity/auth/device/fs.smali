.class public abstract Lcom/amazon/identity/auth/device/fs;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.fs"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bX(Ljava/lang/String;)[B
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    .line 101
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    sget-object p1, Lcom/amazon/identity/auth/device/fs;->TAG:Ljava/lang/String;

    const-string v1, "Cannot encode a string as UTF-8 on this platform."

    invoke-static {p1, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private eN()Lcom/amazon/identity/auth/device/cr;
    .locals 2

    .line 132
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fs;->cp()[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 135
    sget-object v0, Lcom/amazon/identity/auth/device/fs;->TAG:Ljava/lang/String;

    const-string v1, "Aborting encrypt/decrypt because a valid cipher could not be created."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 138
    :cond_0
    new-instance v1, Lcom/amazon/identity/auth/device/cr;

    invoke-direct {v1, v0}, Lcom/amazon/identity/auth/device/cr;-><init>([B)V

    return-object v1
.end method

.method private f([B)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 121
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 125
    :catch_0
    sget-object p1, Lcom/amazon/identity/auth/device/fs;->TAG:Ljava/lang/String;

    const-string v1, "Cannot encode the given bytes as aUTF-8 string on this platform."

    invoke-static {p1, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public bV(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1045
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/fs;->bX(Ljava/lang/String;)[B

    move-result-object p1

    .line 1046
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/fs;->eN()Lcom/amazon/identity/auth/device/cr;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 1060
    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/cr;->b([B)[B

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    .line 1066
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public bW(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1071
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/fs;->eN()Lcom/amazon/identity/auth/device/cr;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1078
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 1087
    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/cr;->c([B)[B

    move-result-object p1

    .line 1089
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/fs;->f([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract cp()[B
.end method
