.class public Lcom/amazon/identity/auth/device/ah;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/s;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.ah"


# instance fields
.field private final bh:Lcom/amazon/identity/auth/device/cz;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ah;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "sso_webservice_caller_creator"

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/cz;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ah;->bh:Lcom/amazon/identity/auth/device/cz;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/auth/device/t;Lcom/amazon/identity/auth/device/ej;)V
    .locals 2

    .line 40
    new-instance v0, Lcom/amazon/identity/auth/device/ah$1;

    invoke-direct {v0, p0, p3}, Lcom/amazon/identity/auth/device/ah$1;-><init>(Lcom/amazon/identity/auth/device/ah;Lcom/amazon/identity/auth/device/t;)V

    .line 71
    new-instance p3, Lcom/amazon/identity/auth/device/la;

    invoke-direct {p3}, Lcom/amazon/identity/auth/device/la;-><init>()V

    .line 1080
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ah;->bh:Lcom/amazon/identity/auth/device/cz;

    invoke-virtual {v1, p1, p4}, Lcom/amazon/identity/auth/device/cz;->c(Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/dc;

    move-result-object p1

    .line 1081
    invoke-virtual {p1, p2, p3, v0}, Lcom/amazon/identity/auth/device/dc;->a(Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/kcpsdk/common/WebResponseParser;Lcom/amazon/identity/auth/device/kl;)Lcom/amazon/identity/auth/device/db;

    move-result-object p1

    .line 1082
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/db;->cC()V

    return-void
.end method
