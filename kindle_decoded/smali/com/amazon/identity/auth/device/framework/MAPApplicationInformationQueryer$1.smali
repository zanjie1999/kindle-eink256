.class final Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/identity/auth/device/du;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/du;Lcom/amazon/identity/auth/device/du;)I
    .locals 0

    .line 129
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/du;->a(Lcom/amazon/identity/auth/device/du;Lcom/amazon/identity/auth/device/du;)I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 124
    check-cast p1, Lcom/amazon/identity/auth/device/du;

    check-cast p2, Lcom/amazon/identity/auth/device/du;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer$1;->a(Lcom/amazon/identity/auth/device/du;Lcom/amazon/identity/auth/device/du;)I

    move-result p1

    return p1
.end method
