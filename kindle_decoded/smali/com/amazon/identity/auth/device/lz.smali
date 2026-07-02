.class public Lcom/amazon/identity/auth/device/lz;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.lz"


# instance fields
.field private final ux:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    .line 14
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/lz;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1041
    sget-object v1, Lcom/amazon/identity/auth/device/lz;->TAG:Ljava/lang/String;

    const-string v2, "SoftwareVersion: isValidVersion: returning false because a null version was given."

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1045
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x25

    if-le v1, v2, :cond_1

    goto :goto_0

    .line 1052
    :cond_1
    invoke-static {p1}, Lcom/amazon/identity/auth/device/lx;->eH(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1054
    sget-object v1, Lcom/amazon/identity/auth/device/lz;->TAG:Ljava/lang/String;

    const-string v2, "SoftwareVersion: isValidVersion: returning false because version contains invalid characters (can only contain digits)"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 1047
    :cond_3
    :goto_0
    sget-object v1, Lcom/amazon/identity/auth/device/lz;->TAG:Ljava/lang/String;

    const-string v2, "SoftwareVersion: isValidVersion: returning false because an invalid length was given (must be between 1 and 37 characters)."

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v0, :cond_4

    .line 26
    iput-object p1, p0, Lcom/amazon/identity/auth/device/lz;->ux:Ljava/lang/String;

    return-void

    .line 30
    :cond_4
    sget-object p1, Lcom/amazon/identity/auth/device/lz;->TAG:Ljava/lang/String;

    const-string v0, "SoftwareVersion: constructed with invalid software version. Was not set."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/amazon/identity/auth/device/lz;->ux:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/identity/auth/device/lz;->ux:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/amazon/identity/auth/device/lz;->ux:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 66
    sget-object v0, Lcom/amazon/identity/auth/device/lz;->TAG:Ljava/lang/String;

    const-string v1, "SoftwareVersion: isValid: returning false because a valid software version has not been set."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
