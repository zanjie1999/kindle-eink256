.class public final Lcom/amazon/kcp/application/StandaloneCrashIdentifierUploadHelper;
.super Ljava/lang/Object;
.source "StandaloneCrashIdentifierUploadHelper.kt"

# interfaces
.implements Lcom/amazon/kcp/application/CrashIdentifierUploadHelper;


# instance fields
.field private androidSecureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

.field private final crashIdentifier:Ljava/lang/String;

.field private previousCrashIdentifier:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UUID.randomUUID().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/StandaloneCrashIdentifierUploadHelper;->crashIdentifier:Ljava/lang/String;

    .line 40
    invoke-static {v0}, Lcom/amazon/kcp/util/fastmetrics/CrashIdentifierTrackingMetrics;->reportCrashIdentifier(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/amazon/kcp/application/StandaloneCrashIdentifierUploadHelperKt;->access$getTAG$p()Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCrashIdentifier()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneCrashIdentifierUploadHelper;->crashIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousCrashIdentifier()Ljava/lang/String;
    .locals 2

    .line 51
    invoke-static {}, Lcom/amazon/kcp/application/StandaloneCrashIdentifierUploadHelperKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Getting previousCrashIdentifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/application/StandaloneCrashIdentifierUploadHelper;->previousCrashIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneCrashIdentifierUploadHelper;->previousCrashIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string v0, "Utils.getFactory()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object p1

    const-string v0, "Utils.getFactory().authenticationManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object p1

    const-string v0, "Utils.getFactory().authe\u2026tionManager.secureStorage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kcp/application/StandaloneCrashIdentifierUploadHelper;->androidSecureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    if-eqz p1, :cond_0

    const-string v0, "CRASH_IDENTIFIER"

    .line 46
    invoke-interface {p1, v0}, Lcom/amazon/kindle/persistence/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/application/StandaloneCrashIdentifierUploadHelper;->previousCrashIdentifier:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/amazon/kcp/application/StandaloneCrashIdentifierUploadHelper;->saveCrashIdentifierValue()V

    return-void

    :cond_0
    const-string p1, "androidSecureStorage"

    .line 46
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public saveCrashIdentifierValue()V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneCrashIdentifierUploadHelper;->androidSecureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/application/StandaloneCrashIdentifierUploadHelper;->crashIdentifier:Ljava/lang/String;

    const-string v2, "CRASH_IDENTIFIER"

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/persistence/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 59
    invoke-static {}, Lcom/amazon/kcp/application/StandaloneCrashIdentifierUploadHelperKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "crashIdentifier has been saved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/application/StandaloneCrashIdentifierUploadHelper;->crashIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "androidSecureStorage"

    .line 58
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
