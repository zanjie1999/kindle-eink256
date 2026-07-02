.class Lcom/amazon/identity/auth/device/gx$a;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/gx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final nz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;"
        }
    .end annotation
.end field

.field private final pd:Z


# direct methods
.method constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;Z)V"
        }
    .end annotation

    .line 1573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1574
    iput-object p1, p0, Lcom/amazon/identity/auth/device/gx$a;->nz:Ljava/util/List;

    .line 1575
    iput-boolean p2, p0, Lcom/amazon/identity/auth/device/gx$a;->pd:Z

    return-void
.end method


# virtual methods
.method public fR()Z
    .locals 1

    .line 1589
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/gx$a;->pd:Z

    return v0
.end method

.method public getCookies()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;"
        }
    .end annotation

    .line 1580
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gx$a;->nz:Ljava/util/List;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MAPCookieManager"

    const-string v1, "Cached cookies are empty"

    .line 1582
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gx$a;->nz:Ljava/util/List;

    return-object v0
.end method
