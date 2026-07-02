.class public Lcom/amazon/identity/auth/device/az$a;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final fp:Ljava/lang/String;

.field public final fq:Ljava/lang/String;

.field public final fr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 813
    iput-object p1, p0, Lcom/amazon/identity/auth/device/az$a;->fp:Ljava/lang/String;

    .line 814
    iput-object p3, p0, Lcom/amazon/identity/auth/device/az$a;->fr:Ljava/lang/String;

    .line 815
    iput-object p2, p0, Lcom/amazon/identity/auth/device/az$a;->fq:Ljava/lang/String;

    return-void
.end method
