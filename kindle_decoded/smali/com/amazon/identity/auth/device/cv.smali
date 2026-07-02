.class public Lcom/amazon/identity/auth/device/cv;
.super Lcom/amazon/identity/auth/device/fs;
.source "DCP"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.cv"


# instance fields
.field private final bM:Ljava/lang/String;

.field private final w:Lcom/amazon/identity/auth/device/gc;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/ed;Landroid/accounts/Account;)V
    .locals 1

    .line 29
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ed;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/hr;->a(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/identity/auth/device/cv;-><init>(Lcom/amazon/identity/auth/device/gc;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/gc;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/fs;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazon/identity/auth/device/cv;->w:Lcom/amazon/identity/auth/device/gc;

    .line 38
    iput-object p2, p0, Lcom/amazon/identity/auth/device/cv;->bM:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cp()[B
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/amazon/identity/auth/device/cv;->w:Lcom/amazon/identity/auth/device/gc;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 49
    :cond_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/cv;->bM:Ljava/lang/String;

    const-string v3, "com.amazon.dcp.sso.property.encryptKey"

    invoke-virtual {v0, v2, v3}, Lcom/amazon/identity/auth/device/gc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 52
    sget-object v0, Lcom/amazon/identity/auth/device/cv;->TAG:Ljava/lang/String;

    const-string v2, "The current account does not have an encryption key. This is probably because it is not registered."

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    const/4 v1, 0x0

    .line 57
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method
