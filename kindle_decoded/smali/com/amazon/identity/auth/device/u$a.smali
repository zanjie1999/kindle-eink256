.class Lcom/amazon/identity/auth/device/u$a;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public final bD:Ljava/lang/String;

.field public final bE:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/amazon/identity/auth/device/u$a;->bD:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/amazon/identity/auth/device/u$a;->bE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 78
    iget-object v1, p0, Lcom/amazon/identity/auth/device/u$a;->bD:Ljava/lang/String;

    const-string/jumbo v2, "none"

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/amazon/identity/auth/device/u$a;->bE:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v2, v3

    :cond_1
    aput-object v2, v0, v1

    const-string v1, "[%s,%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
