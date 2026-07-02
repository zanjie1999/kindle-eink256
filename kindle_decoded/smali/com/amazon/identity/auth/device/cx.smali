.class public Lcom/amazon/identity/auth/device/cx;
.super Lcom/amazon/identity/auth/device/ea;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final iC:Lcom/amazon/identity/auth/device/eg;


# instance fields
.field protected final o:Lcom/amazon/identity/auth/device/ed;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/identity/auth/device/ea;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/cx;->TAG:Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/amazon/identity/auth/device/eg;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/eg;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/cx;->iC:Lcom/amazon/identity/auth/device/eg;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/ea;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/cx;->o:Lcom/amazon/identity/auth/device/ed;

    return-void
.end method

.method public static cu()Lcom/amazon/identity/auth/device/utils/BuildConfiguration;
    .locals 1

    .line 202
    invoke-static {}, Lcom/amazon/identity/auth/device/mw;->iS()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 206
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/device/cx;->cv()Lcom/amazon/identity/auth/device/utils/BuildConfiguration;

    move-result-object v0

    return-object v0
.end method

.method private static final cv()Lcom/amazon/identity/auth/device/utils/BuildConfiguration;
    .locals 3

    .line 211
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 214
    :try_start_0
    invoke-static {v0}, Lcom/amazon/identity/auth/device/utils/BuildConfiguration;->fromString(Ljava/lang/String;)Lcom/amazon/identity/auth/device/utils/BuildConfiguration;

    move-result-object v0
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/framework/InvalidEnumValueException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 218
    :catch_0
    sget-object v1, Lcom/amazon/identity/auth/device/cx;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unable to determine the build type : "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sget-object v0, Lcom/amazon/identity/auth/device/utils/BuildConfiguration;->User:Lcom/amazon/identity/auth/device/utils/BuildConfiguration;

    return-object v0
.end method

.method public static y(Landroid/content/Context;)Lcom/amazon/identity/auth/device/utils/BuildConfiguration;
    .locals 0

    .line 189
    invoke-static {p0}, Lcom/amazon/identity/auth/device/mw;->aZ(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 193
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/device/cx;->cv()Lcom/amazon/identity/auth/device/utils/BuildConfiguration;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bg(Ljava/lang/String;)Z
    .locals 1

    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "unknown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public cq()J
    .locals 5

    .line 75
    iget-object v0, p0, Lcom/amazon/identity/auth/device/cx;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mw;->aZ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    invoke-static {}, Lcom/amazon/identity/auth/device/mw;->iU()Z

    move-result v0

    const-string v1, "Amazon Platform is of version: "

    if-eqz v0, :cond_1

    .line 79
    sget-object v0, Lcom/amazon/identity/auth/device/cx;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lamazon/os/Build$VERSION;->SERIAL:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lamazon/os/Build$VERSION;->SERIAL:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lamazon/os/Build$VERSION;->SERIAL:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    .line 84
    :cond_1
    sget-object v0, Lcom/amazon/identity/auth/device/cx;->iC:Lcom/amazon/identity/auth/device/eg;

    const-string/jumbo v2, "ro.build.version.number"

    invoke-virtual {v0, v2}, Lcom/amazon/identity/auth/device/eg;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/jb;->dB(Ljava/lang/String;)J

    move-result-wide v2

    .line 85
    sget-object v0, Lcom/amazon/identity/auth/device/cx;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v2

    .line 100
    :cond_2
    invoke-static {}, Lcom/amazon/identity/auth/device/hs;->gu()Lcom/amazon/identity/auth/device/hs;

    move-result-object v0

    iget v0, v0, Lcom/amazon/identity/auth/device/hs;->qF:I

    goto :goto_0
.end method

.method public cr()Ljava/lang/String;
    .locals 2

    .line 140
    invoke-static {}, Lcom/amazon/identity/auth/device/jq;->hb()Lcom/amazon/identity/auth/device/jq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/jq;->gZ()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 149
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/cx;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public cs()Z
    .locals 2

    .line 160
    invoke-static {}, Lcom/amazon/identity/auth/device/jq;->hb()Lcom/amazon/identity/auth/device/jq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/jq;->cs()Z

    move-result v0

    return v0

    .line 165
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/cx;->TAG:Ljava/lang/String;

    const-string v1, "This should be a 1p device, DHA is not supported"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public ct()Ljava/lang/String;
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/amazon/identity/auth/device/cx;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/amazon/identity/auth/device/cx;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->bn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/cx;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 121
    invoke-static {}, Lcom/amazon/identity/auth/device/jq;->hb()Lcom/amazon/identity/auth/device/jq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/jq;->e()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 130
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/cx;->TAG:Ljava/lang/String;

    const-string v1, "This should be a 3p device or 1p client side, cannot get DeviceSecret"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceSerialNumber()Ljava/lang/String;
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/amazon/identity/auth/device/cx;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/iy;->aI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/cx;->bg(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    sget-object v0, Lcom/amazon/identity/auth/device/cx;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/amazon/identity/auth/device/cx;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/di;->A(Landroid/content/Context;)Lcom/amazon/identity/auth/device/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/di;->cN()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 2

    .line 65
    sget-object v0, Lcom/amazon/identity/auth/device/cx;->TAG:Ljava/lang/String;

    const-string v1, "Amazon Device Info will try get central device type"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/amazon/identity/auth/device/cx;->o:Lcom/amazon/identity/auth/device/ed;

    sget-object v1, Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;->CentralDeviceType:Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/it;->c(Landroid/content/Context;Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
