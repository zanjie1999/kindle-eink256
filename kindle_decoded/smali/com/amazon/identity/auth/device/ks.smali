.class public Lcom/amazon/identity/auth/device/ks;
.super Lcom/amazon/identity/auth/device/kv;
.source "DCP"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/kv;-><init>(Ljava/util/List;)V

    return-void
.end method
