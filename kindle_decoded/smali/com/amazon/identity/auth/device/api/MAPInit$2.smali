.class Lcom/amazon/identity/auth/device/api/MAPInit$2;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/MAPInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic gB:Lcom/amazon/identity/auth/device/api/MAPInit;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/api/MAPInit;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPInit$2;->gB:Lcom/amazon/identity/auth/device/api/MAPInit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 177
    invoke-static {}, Lcom/amazon/identity/auth/device/api/MAPInit;->ao()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPInit$2;->gB:Lcom/amazon/identity/auth/device/api/MAPInit;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/MAPInit;->c(Lcom/amazon/identity/auth/device/api/MAPInit;)V

    return-void
.end method
