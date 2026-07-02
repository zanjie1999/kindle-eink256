.class public final Lcom/amazon/identity/auth/device/ij;
.super Ljava/lang/Object;
.source "DCP"


# instance fields
.field private final mKey:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final qW:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/identity/auth/device/ij;->qW:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/amazon/identity/auth/device/ij;->mPackageName:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ij;->mKey:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ij;->qW:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/amazon/identity/auth/device/ij;->mPackageName:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/amazon/identity/auth/device/ij;->mKey:Ljava/lang/String;

    return-void
.end method

.method public static dk(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ij;
    .locals 4

    const/16 v0, 0x2f

    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    move-object v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 49
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 52
    :goto_0
    new-instance v2, Lcom/amazon/identity/auth/device/ij;

    invoke-direct {v2, p0, v0, v1}, Lcom/amazon/identity/auth/device/ij;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public gC()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ij;->qW:Ljava/lang/String;

    return-object v0
.end method

.method public gD()Lcom/amazon/identity/auth/device/ij;
    .locals 2

    .line 72
    new-instance v0, Lcom/amazon/identity/auth/device/ij;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/ij;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ij;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ij;->mPackageName:Ljava/lang/String;

    return-object v0
.end method
