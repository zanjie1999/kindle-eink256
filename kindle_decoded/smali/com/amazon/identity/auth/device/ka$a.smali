.class final Lcom/amazon/identity/auth/device/ka$a;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/ka;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final bi:Ljava/lang/String;

.field private final rS:Ljava/lang/String;

.field private final rT:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ka$a;->bi:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/amazon/identity/auth/device/ka$a;->rS:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/amazon/identity/auth/device/ka$a;->rT:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ka$a;->bi:Ljava/lang/String;

    return-object v0
.end method

.method public hm()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ka$a;->rS:Ljava/lang/String;

    return-object v0
.end method

.method public hn()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ka$a;->rT:Ljava/lang/String;

    return-object v0
.end method
