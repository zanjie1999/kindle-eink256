.class public final Lcom/audible/license/repository/file/VoucherCipher;
.super Ljava/lang/Object;
.source "VoucherCipher.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/license/repository/file/VoucherCipher$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVoucherCipher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VoucherCipher.kt\ncom/audible/license/repository/file/VoucherCipher\n*L\n1#1,125:1\n*E\n"
.end annotation


# instance fields
.field private final identityManager:Lcom/audible/mobile/identity/IdentityManager;

.field private final logger$delegate:Lkotlin/Lazy;

.field private final metricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/audible/license/repository/file/VoucherCipher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/audible/license/repository/file/VoucherCipher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/license/metrics/VoucherMetricRecorder;)V
    .locals 1

    const-string v0, "identityManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricRecorder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/audible/license/repository/file/VoucherCipher;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    iput-object p2, p0, Lcom/audible/license/repository/file/VoucherCipher;->metricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    .line 29
    invoke-static {p0}, Lcom/audible/mobile/logging/PIIAwareLoggerKt;->piiAwareLogger(Ljava/lang/Object;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/license/repository/file/VoucherCipher;->logger$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getLogger()Lorg/slf4j/Logger;
    .locals 1

    iget-object v0, p0, Lcom/audible/license/repository/file/VoucherCipher;->logger$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/slf4j/Logger;

    return-object v0
.end method

.method private final performCipherOperation(ILjava/lang/String;[BLcom/audible/mobile/domain/CustomerId;)[B
    .locals 7

    .line 71
    iget-object v0, p0, Lcom/audible/license/repository/file/VoucherCipher;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    invoke-interface {v0}, Lcom/audible/mobile/identity/IdentityManager;->getDeviceType()Lcom/audible/mobile/identity/DeviceType;

    move-result-object v0

    const-string v1, "identityManager.deviceType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/audible/license/repository/file/VoucherCipher;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    invoke-interface {v1}, Lcom/audible/mobile/identity/IdentityManager;->getDeviceSerialNumber()Lcom/audible/mobile/identity/DeviceSerialNumber;

    move-result-object v1

    if-eqz p4, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-object p4, p0, Lcom/audible/license/repository/file/VoucherCipher;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    invoke-interface {p4}, Lcom/audible/mobile/identity/IdentityManager;->getActiveAccountCustomerId()Lcom/audible/mobile/domain/CustomerId;

    move-result-object p4

    :goto_0
    if-eqz p4, :cond_3

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "dsn"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 77
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz p4, :cond_2

    invoke-virtual {p4, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p4

    const-string v0, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "SHA-256"

    .line 80
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p4

    const-string v0, "AES/CBC/NOPADDING"

    .line 85
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 87
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-direct {v0, p4, v3, v4, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 92
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p4, v4, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    .line 98
    invoke-virtual {v1, p1, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 102
    array-length p1, p3

    rem-int/2addr p1, v4

    if-nez p1, :cond_1

    .line 103
    invoke-virtual {v1, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const-string p3, "cipher.doFinal(inputBytes)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 106
    :cond_1
    array-length p1, p3

    div-int/2addr p1, v4

    mul-int/lit8 v4, p1, 0x10

    .line 108
    array-length p1, p3

    new-array p1, p1, [B

    .line 109
    array-length p4, p3

    invoke-static {p3, v3, p1, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v2, p3

    move-object v5, p1

    .line 111
    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 115
    invoke-direct {p0}, Lcom/audible/license/repository/file/VoucherCipher;->getLogger()Lorg/slf4j/Logger;

    move-result-object p3

    const-string p4, "Cipher operation failed for Asin = {}"

    invoke-interface {p3, p4, p2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    new-instance p2, Lcom/audible/license/exceptions/VoucherLoadException;

    invoke-direct {p2, p1}, Lcom/audible/license/exceptions/VoucherLoadException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 77
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_3
    new-instance p1, Lcom/audible/license/exceptions/VoucherLoadException;

    const-string p2, "Valid customer Id required!"

    invoke-direct {p1, p2}, Lcom/audible/license/exceptions/VoucherLoadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final decryptVoucher(Ljava/lang/String;[BLcom/audible/mobile/domain/CustomerId;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/license/exceptions/VoucherLoadException;
        }
    .end annotation

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputBytes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 52
    :try_start_0
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/audible/license/repository/file/VoucherCipher;->performCipherOperation(ILjava/lang/String;[BLcom/audible/mobile/domain/CustomerId;)[B

    move-result-object p1
    :try_end_0
    .catch Lcom/audible/license/exceptions/VoucherLoadException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 54
    iget-object p3, p0, Lcom/audible/license/repository/file/VoucherCipher;->metricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    .line 56
    sget-object v0, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherFileRepository:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 57
    sget-object v1, Lcom/audible/license/metrics/MetricNames;->FailedToDecryptVoucher:Lcom/audible/license/metrics/MetricNames;

    .line 58
    invoke-static {p1}, Lcom/audible/mobile/domain/ImmutableAsinImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    const-string v2, "ImmutableAsinImpl.nullSafeFactory(asin)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p3, p2, v0, v1, p1}, Lcom/audible/license/metrics/VoucherMetricRecorder;->recordExceptionMetric(Ljava/lang/Throwable;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/domain/Asin;)V

    .line 60
    throw p2
.end method
