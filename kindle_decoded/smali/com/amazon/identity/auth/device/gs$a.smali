.class public final Lcom/amazon/identity/auth/device/gs$a;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/gs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final bi:Ljava/lang/String;

.field private final oQ:Ljava/lang/String;

.field private final oR:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/identity/auth/device/gs$a;->bi:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/amazon/identity/auth/device/gs$a;->oQ:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/amazon/identity/auth/device/gs$a;->oR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fN()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gs$a;->oR:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gs$a;->bi:Ljava/lang/String;

    return-object v0
.end method
