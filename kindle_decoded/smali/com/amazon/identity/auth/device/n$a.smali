.class public Lcom/amazon/identity/auth/device/n$a;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final aT:Ljava/lang/String;

.field public final aU:Lcom/amazon/identity/auth/device/jz;

.field public final aV:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

.field public final aW:Lcom/amazon/identity/auth/device/fl;

.field public final directedId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 53
    invoke-direct/range {v0 .. v5}, Lcom/amazon/identity/auth/device/n$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/jz;Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;Lcom/amazon/identity/auth/device/fl;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;Lcom/amazon/identity/auth/device/fl;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    .line 58
    invoke-direct/range {v0 .. v5}, Lcom/amazon/identity/auth/device/n$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/jz;Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;Lcom/amazon/identity/auth/device/fl;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/jz;Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    .line 64
    invoke-direct/range {v0 .. v5}, Lcom/amazon/identity/auth/device/n$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/jz;Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;Lcom/amazon/identity/auth/device/fl;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 48
    invoke-direct/range {v0 .. v5}, Lcom/amazon/identity/auth/device/n$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/jz;Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;Lcom/amazon/identity/auth/device/fl;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/jz;Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;Lcom/amazon/identity/auth/device/fl;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/amazon/identity/auth/device/n$a;->aT:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/amazon/identity/auth/device/n$a;->directedId:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/amazon/identity/auth/device/n$a;->aU:Lcom/amazon/identity/auth/device/jz;

    .line 76
    iput-object p4, p0, Lcom/amazon/identity/auth/device/n$a;->aV:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    .line 77
    iput-object p5, p0, Lcom/amazon/identity/auth/device/n$a;->aW:Lcom/amazon/identity/auth/device/fl;

    return-void
.end method


# virtual methods
.method public isError()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/identity/auth/device/n$a;->aV:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
