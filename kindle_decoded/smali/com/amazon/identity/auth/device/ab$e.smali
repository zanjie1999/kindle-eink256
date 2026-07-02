.class Lcom/amazon/identity/auth/device/ab$e;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field public final cr:Ljava/lang/String;

.field public final extras:Landroid/os/Bundle;

.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0, v0}, Lcom/amazon/identity/auth/device/ab$e;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ab$e;->cr:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/amazon/identity/auth/device/ab$e;->packageName:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/amazon/identity/auth/device/ab$e;->extras:Landroid/os/Bundle;

    return-void
.end method
