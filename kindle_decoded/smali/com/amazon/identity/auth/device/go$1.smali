.class Lcom/amazon/identity/auth/device/go$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/go;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic H:Ljava/lang/String;

.field final synthetic hj:Ljava/lang/String;

.field final synthetic oE:Lcom/amazon/identity/auth/device/go;

.field final synthetic oa:Ljava/lang/String;

.field final synthetic ob:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/go;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/amazon/identity/auth/device/go$1;->oE:Lcom/amazon/identity/auth/device/go;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/go$1;->H:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/go$1;->hj:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/go$1;->oa:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/go$1;->ob:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 60
    iget-object v0, p0, Lcom/amazon/identity/auth/device/go$1;->oE:Lcom/amazon/identity/auth/device/go;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/go$1;->H:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/go$1;->hj:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/go$1;->oa:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/go$1;->ob:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/identity/auth/device/go;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
