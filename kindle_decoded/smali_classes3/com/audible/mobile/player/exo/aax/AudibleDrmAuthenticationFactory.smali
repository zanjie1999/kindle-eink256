.class public Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationFactory;
.super Ljava/lang/Object;
.source "AudibleDrmAuthenticationFactory.java"


# instance fields
.field private final activationDataRepository:Lcom/audible/mobile/activation/ActivationDataRepository;

.field private final identityManager:Lcom/audible/mobile/identity/IdentityManager;

.field private final metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

.field private final voucherProvider:Lcom/audible/license/provider/VoucherProvider;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/license/provider/VoucherProvider;Lcom/audible/mobile/activation/ActivationDataRepository;Lcom/audible/mobile/metric/logger/MetricManager;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "IdentityManager must not be null"

    .line 28
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/audible/mobile/identity/IdentityManager;

    iput-object p1, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationFactory;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    const-string p1, "voucherProvider can not be null"

    .line 29
    invoke-static {p2, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/audible/license/provider/VoucherProvider;

    iput-object p2, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationFactory;->voucherProvider:Lcom/audible/license/provider/VoucherProvider;

    const-string p1, "ActivationDataRepository must not be null"

    .line 30
    invoke-static {p3, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lcom/audible/mobile/activation/ActivationDataRepository;

    iput-object p3, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationFactory;->activationDataRepository:Lcom/audible/mobile/activation/ActivationDataRepository;

    const-string p1, "metricManager can not be null"

    .line 31
    invoke-static {p4, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p4, Lcom/audible/mobile/metric/logger/MetricManager;

    iput-object p4, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationFactory;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    return-void
.end method


# virtual methods
.method public get(Lcom/audible/sdk/AudibleSDK;)Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;
    .locals 7

    .line 43
    new-instance v6, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;

    iget-object v2, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationFactory;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    iget-object v3, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationFactory;->voucherProvider:Lcom/audible/license/provider/VoucherProvider;

    iget-object v4, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationFactory;->activationDataRepository:Lcom/audible/mobile/activation/ActivationDataRepository;

    iget-object v5, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationFactory;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;-><init>(Lcom/audible/sdk/AudibleSDK;Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/license/provider/VoucherProvider;Lcom/audible/mobile/activation/ActivationDataRepository;Lcom/audible/mobile/metric/logger/MetricManager;)V

    return-object v6
.end method
