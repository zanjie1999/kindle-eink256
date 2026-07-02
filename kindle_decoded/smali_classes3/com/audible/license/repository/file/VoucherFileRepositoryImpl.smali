.class public Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;
.super Ljava/lang/Object;
.source "VoucherFileRepositoryImpl.kt"

# interfaces
.implements Lcom/audible/license/repository/file/VoucherFileRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/license/repository/file/VoucherFileRepositoryImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVoucherFileRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VoucherFileRepositoryImpl.kt\ncom/audible/license/repository/file/VoucherFileRepositoryImpl\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,263:1\n226#1,14:264\n226#1,14:284\n67#2:278\n92#2,3:279\n11454#3,2:282\n*E\n*S KotlinDebug\n*F\n+ 1 VoucherFileRepositoryImpl.kt\ncom/audible/license/repository/file/VoucherFileRepositoryImpl\n*L\n54#1,14:264\n203#1,14:284\n83#1:278\n83#1,3:279\n102#1,2:282\n*E\n"
.end annotation


# static fields
.field private static final MAP_ASIN_TO_DIRECTED_CUSTOMER_ID_FILE:Ljava/lang/String; = "vouchers.map"

.field private static final VOUCHER_FILE_EXTENSION:Ljava/lang/String; = ".voucher"

.field private static final VOUCHER_ROOT_DIR:Ljava/lang/String; = "vouchers"


# instance fields
.field private final logger$delegate:Lkotlin/Lazy;

.field private final voucherCipher:Lcom/audible/license/repository/file/VoucherCipher;

.field private final voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

.field private final voucherParser:Lcom/audible/license/repository/file/VoucherParser;

.field private final vouchersParentDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/audible/license/repository/file/VoucherFileRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/audible/license/repository/file/VoucherFileRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/audible/license/repository/file/VoucherCipher;Lcom/audible/license/repository/file/VoucherParser;Lcom/audible/license/metrics/VoucherMetricRecorder;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voucherCipher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voucherParser"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voucherMetricRecorder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v0, "context.filesDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;-><init>(Ljava/io/File;Lcom/audible/license/repository/file/VoucherCipher;Lcom/audible/license/repository/file/VoucherParser;Lcom/audible/license/metrics/VoucherMetricRecorder;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Lcom/audible/license/repository/file/VoucherCipher;Lcom/audible/license/repository/file/VoucherParser;Lcom/audible/license/metrics/VoucherMetricRecorder;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;->vouchersParentDir:Ljava/io/File;

    iput-object p2, p0, Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;->voucherCipher:Lcom/audible/license/repository/file/VoucherCipher;

    iput-object p3, p0, Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;->voucherParser:Lcom/audible/license/repository/file/VoucherParser;

    iput-object p4, p0, Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;->voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    .line 51
    invoke-static {p0}, Lcom/audible/mobile/logging/PIIAwareLoggerKt;->piiAwareLogger(Ljava/lang/Object;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;->logger$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getVoucherMetricRecorder$p(Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;)Lcom/audible/license/metrics/VoucherMetricRecorder;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;->voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    return-object p0
.end method

.method private final getLogger()Lorg/slf4j/Logger;
    .locals 1

    iget-object v0, p0, Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;->logger$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/slf4j/Logger;

    return-object v0
.end method

.method private final getVoucherBytes(Ljava/io/File;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 198
    invoke-static {v0}, Lcom/audible/mobile/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p1

    const-string v0, "IOUtils.toByteArray(fis)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getVoucherFile(Lcom/audible/mobile/domain/Asin;Z)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/license/exceptions/VoucherLoadException;
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p2}, Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;->getVouchersDirectory(Z)Ljava/io/File;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".voucher"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getVouchersDirectory(Z)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/license/exceptions/VoucherLoadException;
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/io/File;

    .line 121
    iget-object v1, p0, Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;->vouchersParentDir:Ljava/io/File;

    const-string v2, "vouchers"

    .line 120
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "Voucher root directory is not accessible!"

    if-eqz p1, :cond_1

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;->getLogger()Lorg/slf4j/Logger;

    move-result-object p1

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getVouchersDirectory: failed to read directory {}"

    .line 127
    invoke-interface {p1, v3, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    new-instance p1, Lcom/audible/license/exceptions/VoucherLoadException;

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read voucher directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-direct {p1, v0, v2}, Lcom/audible/license/exceptions/VoucherLoadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 137
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 138
    :cond_2
    invoke-direct {p0}, Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;->getLogger()Lorg/slf4j/Logger;

    move-result-object p1

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getVouchersDirectory: failed to create directory {}"

    .line 138
    invoke-interface {p1, v3, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    new-instance p1, Lcom/audible/license/exceptions/VoucherLoadException;

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create voucher directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-direct {p1, v0, v2}, Lcom/audible/license/exceptions/VoucherLoadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 148
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;->setPermissionsOnFileOrDirectory(Ljava/io/File;)Z

    return-object v0
.end method

.method private final saveRawBytesToVoucherFile(Lcom/audible/mobile/domain/Asin;[B)Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 205
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;->getVoucherFile(Lcom/audible/mobile/domain/Asin;Z)Ljava/io/File;

    move-result-object v0

    .line 206
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 207
    invoke-virtual {p0, v0}, Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;->setPermissionsOnFileOrDirectory(Ljava/io/File;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 216
    :try_start_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_3
    .catch Lcom/audible/license/exceptions/VoucherLoadException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 206
    :try_start_4
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {v2, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p2

    .line 209
    :try_start_6
    iget-object v0, p0, Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;->voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    .line 211
    sget-object v2, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherFileRepository:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 212
    sget-object v3, Lcom/audible/license/metrics/MetricNames;->VoucherSaveFailed:Lcom/audible/license/metrics/MetricNames;

    .line 209
    invoke-virtual {v0, p2, v2, v3, p1}, Lcom/audible/license/metrics/VoucherMetricRecorder;->recordExceptionMetric(Ljava/lang/Throwable;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/domain/Asin;)V

    .line 215
    throw p2
    :try_end_6
    .catch Lcom/audible/license/exceptions/VoucherLoadException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p1

    .line 293
    invoke-static {p0}, Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;->access$getVoucherMetricRecorder$p(Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;)Lcom/audible/license/metrics/VoucherMetricRecorder;

    move-result-object p2

    .line 294
    new-instance v0, Lcom/audible/license/exceptions/VoucherLoadException;

    invoke-direct {v0, p1}, Lcom/audible/license/exceptions/VoucherLoadException;-><init>(Ljava/lang/Throwable;)V

    .line 295
    sget-object p1, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherFileRepository:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 293
    invoke-virtual {p2, v0, p1}, Lcom/audible/license/metrics/VoucherMetricRecorder;->recordVoucherLoadException(Lcom/audible/license/exceptions/VoucherLoadException;Lcom/audible/mobile/metric/domain/Metric$Source;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 287
    invoke-static {p0}, Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;->access$getVoucherMetricRecorder$p(Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;)Lcom/audible/license/metrics/VoucherMetricRecorder;

    move-result-object p2

    .line 289
    sget-object v0, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherFileRepository:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 287
    invoke-virtual {p2, p1, v0}, Lcom/audible/license/metrics/VoucherMetricRecorder;->recordVoucherLoadException(Lcom/audible/license/exceptions/VoucherLoadException;Lcom/audible/mobile/metric/domain/Metric$Source;)V

    :goto_0
    return-object v1
.end method


# virtual methods
.method public deleteVoucher(Lcom/audible/mobile/domain/Asin;)Z
    .locals 1

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, v0}, Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;->getVoucherFile(Lcom/audible/mobile/domain/Asin;Z)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    return p1
.end method

.method public findVoucherById(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/CustomerId;)Lcom/audible/license/model/Voucher;
    .locals 3

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 55
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;->getVoucherFile(Lcom/audible/mobile/domain/Asin;Z)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;->getVoucherBytes(Ljava/io/File;)[B

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;->voucherCipher:Lcom/audible/license/repository/file/VoucherCipher;

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v2, "asin.id"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v0, p2}, Lcom/audible/license/repository/file/VoucherCipher;->decryptVoucher(Ljava/lang/String;[BLcom/audible/mobile/domain/CustomerId;)[B

    move-result-object p1

    .line 57
    sget-object p2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 58
    iget-object p1, p0, Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;->voucherParser:Lcom/audible/license/repository/file/VoucherParser;

    invoke-virtual {p1, v0}, Lcom/audible/license/repository/file/VoucherParser;->parseVoucher(Ljava/lang/String;)Lcom/audible/license/model/Voucher;

    move-result-object p1
    :try_end_0
    .catch Lcom/audible/license/exceptions/VoucherLoadException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 273
    invoke-static {p0}, Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;->access$getVoucherMetricRecorder$p(Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;)Lcom/audible/license/metrics/VoucherMetricRecorder;

    move-result-object p2

    .line 274
    new-instance v0, Lcom/audible/license/exceptions/VoucherLoadException;

    invoke-direct {v0, p1}, Lcom/audible/license/exceptions/VoucherLoadException;-><init>(Ljava/lang/Throwable;)V

    .line 275
    sget-object p1, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherFileRepository:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 273
    invoke-virtual {p2, v0, p1}, Lcom/audible/license/metrics/VoucherMetricRecorder;->recordVoucherLoadException(Lcom/audible/license/exceptions/VoucherLoadException;Lcom/audible/mobile/metric/domain/Metric$Source;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 267
    invoke-static {p0}, Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;->access$getVoucherMetricRecorder$p(Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;)Lcom/audible/license/metrics/VoucherMetricRecorder;

    move-result-object p2

    .line 269
    sget-object v0, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherFileRepository:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 267
    invoke-virtual {p2, p1, v0}, Lcom/audible/license/metrics/VoucherMetricRecorder;->recordVoucherLoadException(Lcom/audible/license/exceptions/VoucherLoadException;Lcom/audible/mobile/metric/domain/Metric$Source;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public saveVoucher(Lcom/audible/mobile/domain/Asin;Lcom/audible/license/model/EncryptedVoucher;)V
    .locals 3

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptedVoucher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    :try_start_0
    invoke-virtual {p2}, Lcom/audible/license/model/EncryptedVoucher;->getValue()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "decodedBytes"

    .line 75
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;->saveRawBytesToVoucherFile(Lcom/audible/mobile/domain/Asin;[B)Ljava/lang/Boolean;

    return-void

    :catch_0
    move-exception p2

    .line 65
    invoke-direct {p0}, Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;->getLogger()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Cannot decode encrypted voucher for Asin = {}"

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/audible/license/repository/file/VoucherFileRepositoryImpl;->voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    .line 68
    sget-object v1, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherFileRepository:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 69
    sget-object v2, Lcom/audible/license/metrics/MetricNames;->VoucherSaveFailed:Lcom/audible/license/metrics/MetricNames;

    .line 66
    invoke-virtual {v0, p2, v1, v2, p1}, Lcom/audible/license/metrics/VoucherMetricRecorder;->recordExceptionMetric(Ljava/lang/Throwable;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/domain/Asin;)V

    return-void
.end method

.method public setPermissionsOnFileOrDirectory(Ljava/io/File;)Z
    .locals 1

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
