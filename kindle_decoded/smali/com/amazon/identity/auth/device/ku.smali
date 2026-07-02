.class public Lcom/amazon/identity/auth/device/ku;
.super Lcom/amazon/identity/auth/device/kv;
.source "DCP"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "given_name"

    const-string/jumbo v1, "name"

    .line 10
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/kv;-><init>(Ljava/util/List;)V

    return-void
.end method
