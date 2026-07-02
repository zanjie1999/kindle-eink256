.class Lcom/amazon/identity/auth/device/hb$b;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/hb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic pH:Lcom/amazon/identity/auth/device/hb;

.field private final pL:Ljava/lang/String;

.field private final pM:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/hb;Ljava/lang/String;)V
    .locals 1

    .line 84
    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/hb;->bW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/hb$b;-><init>(Lcom/amazon/identity/auth/device/hb;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/hb;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/amazon/identity/auth/device/hb$b;->pH:Lcom/amazon/identity/auth/device/hb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p2, p0, Lcom/amazon/identity/auth/device/hb$b;->pL:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/amazon/identity/auth/device/hb$b;->pM:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public gd()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hb$b;->pL:Ljava/lang/String;

    return-object v0
.end method

.method public ge()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hb$b;->pM:Ljava/lang/String;

    return-object v0
.end method
