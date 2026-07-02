.class Lcom/amazon/identity/auth/device/gh$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/gh;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic H:Ljava/lang/String;

.field final synthetic hj:Ljava/lang/String;

.field final synthetic oa:Ljava/lang/String;

.field final synthetic ob:Ljava/util/List;

.field final synthetic oc:Lcom/amazon/identity/auth/device/gh;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/gh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/amazon/identity/auth/device/gh$1;->oc:Lcom/amazon/identity/auth/device/gh;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/gh$1;->H:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/gh$1;->hj:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/gh$1;->oa:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/gh$1;->ob:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 160
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gh$1;->oc:Lcom/amazon/identity/auth/device/gh;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/gh$1;->H:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/gh$1;->hj:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/gh$1;->oa:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/gh$1;->ob:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/identity/auth/device/gh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
