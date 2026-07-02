.class public final Lcom/amazon/identity/auth/device/hu$a;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/hu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final mPackageName:Ljava/lang/String;

.field public final qI:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amazon/identity/auth/device/hu$a;->mPackageName:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/amazon/identity/auth/device/hu$a;->qI:Ljava/lang/Integer;

    return-void
.end method
