.class Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage$2;
.super Lcom/amazon/identity/auth/device/fs;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic nl:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

.field final synthetic nm:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;Ljava/lang/String;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage$2;->nl:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage$2;->nm:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amazon/identity/auth/device/fs;-><init>()V

    return-void
.end method


# virtual methods
.method public cp()[B
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage$2;->nm:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->cd(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
