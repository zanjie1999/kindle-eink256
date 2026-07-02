.class Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage$1;
.super Lcom/amazon/identity/auth/device/fs;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/gc$a;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic nk:Ljava/lang/String;

.field final synthetic nl:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage$1;->nl:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage$1;->nk:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amazon/identity/auth/device/fs;-><init>()V

    return-void
.end method


# virtual methods
.method public cp()[B
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage$1;->nk:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method
