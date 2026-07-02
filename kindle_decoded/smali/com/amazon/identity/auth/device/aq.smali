.class public Lcom/amazon/identity/auth/device/aq;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.aq"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/amazon/identity/auth/device/aq;->mContext:Landroid/content/Context;

    return-void
.end method

.method private an(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/aq;->av()Lcom/amazon/identity/auth/device/gm;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/gm;->cr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private av()Lcom/amazon/identity/auth/device/gm;
    .locals 3

    .line 95
    new-instance v0, Lcom/amazon/identity/auth/device/gm;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/aq;->mContext:Landroid/content/Context;

    const-string v2, "default_cor_pfm_store"

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/gm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 67
    sget-object v0, Lcom/amazon/identity/auth/device/aq;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 69
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/aq;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 72
    sget-object p2, Lcom/amazon/identity/auth/device/aq;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object v0, v3, v1

    const-string p1, "Returning Device Default Cor/Pfm from Shared Preference for key: %s and value: %s"

    .line 73
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    invoke-static {p2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-object v0

    .line 80
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/aq;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    const-string p1, "Returning Device Default Cor/Pfm from default settings for key: %s and value: %s"

    .line 81
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-object p2
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/attributes/CORPFMResponse;)V
    .locals 3

    .line 33
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/aq;->av()Lcom/amazon/identity/auth/device/gm;

    move-result-object v0

    .line 34
    invoke-virtual {p1}, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->ah()Ljava/lang/String;

    move-result-object v1

    const-string v2, "default.cor"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/identity/auth/device/gm;->O(Ljava/lang/String;Ljava/lang/String;)Z

    .line 35
    invoke-virtual {p1}, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->aj()Ljava/lang/String;

    move-result-object p1

    const-string v1, "default.pfm"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/identity/auth/device/gm;->O(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public ar()Z
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/aq;->av()Lcom/amazon/identity/auth/device/gm;

    move-result-object v0

    const-string v1, "default.cor"

    .line 41
    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/gm;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "default.pfm"

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/gm;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public as()Ljava/lang/String;
    .locals 2

    const-string v0, "default.cor"

    const-string v1, "US"

    .line 46
    invoke-direct {p0, v0, v1}, Lcom/amazon/identity/auth/device/aq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public at()Ljava/lang/String;
    .locals 2

    const-string v0, "default.pfm"

    const-string v1, "ATVPDKIKX0DER"

    .line 52
    invoke-direct {p0, v0, v1}, Lcom/amazon/identity/auth/device/aq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public au()Lcom/amazon/identity/auth/attributes/CORPFMResponse;
    .locals 6

    .line 57
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/aq;->as()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/aq;->at()Ljava/lang/String;

    move-result-object v1

    .line 59
    new-instance v2, Lcom/amazon/identity/auth/attributes/CORPFMResponse;

    sget-object v3, Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;->DEVICE_BASED_GUESS:Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

    const-wide/16 v4, -0x1

    .line 62
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/amazon/identity/auth/attributes/CORPFMResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;Ljava/lang/Long;)V

    return-object v2
.end method
