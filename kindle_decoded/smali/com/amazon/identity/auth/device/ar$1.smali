.class Lcom/amazon/identity/auth/device/ar$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/ar;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/attributes/CORPFMResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic H:Ljava/lang/String;

.field final synthetic N:Lcom/amazon/identity/auth/device/ej;

.field final synthetic dE:Lcom/amazon/identity/auth/device/ar;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/ar;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ar$1;->dE:Lcom/amazon/identity/auth/device/ar;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/ar$1;->H:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/ar$1;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ar$1;->dE:Lcom/amazon/identity/auth/device/ar;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ar$1;->H:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ar$1;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/auth/device/ar;->b(Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/attributes/CORPFMResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 158
    invoke-static {}, Lcom/amazon/identity/auth/device/ar;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception on refreshing COR/PFM from server side."

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
