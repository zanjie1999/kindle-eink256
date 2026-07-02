.class Lcom/amazon/identity/auth/device/gx$b;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/gx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final pe:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;"
        }
    .end annotation
.end field

.field private final pf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;"
        }
    .end annotation
.end field

.field private final pg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1352
    iput-object p1, p0, Lcom/amazon/identity/auth/device/gx$b;->pe:Ljava/util/List;

    .line 1353
    iput-object p2, p0, Lcom/amazon/identity/auth/device/gx$b;->pf:Ljava/util/List;

    .line 1354
    iput-object p3, p0, Lcom/amazon/identity/auth/device/gx$b;->pg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fS()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;"
        }
    .end annotation

    .line 1362
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gx$b;->pe:Ljava/util/List;

    return-object v0
.end method

.method public fT()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;"
        }
    .end annotation

    .line 1370
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gx$b;->pf:Ljava/util/List;

    return-object v0
.end method

.method public fU()Ljava/lang/String;
    .locals 1

    .line 1375
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gx$b;->pg:Ljava/lang/String;

    return-object v0
.end method
