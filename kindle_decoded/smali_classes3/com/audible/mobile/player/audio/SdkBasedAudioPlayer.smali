.class public Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;
.super Lcom/audible/mobile/player/state/StateAwareAudioPlayer;
.source "SdkBasedAudioPlayer.java"

# interfaces
.implements Lcom/audible/mobile/player/audio/AudiobookPlayer;
.implements Lcom/audible/mobile/player/audio/FileRenameEventListener;


# static fields
.field private static final MAX_RETRY_COUNT:I = 0x1

.field private static final SAMPLE_SIZE_BYTES:I = 0x2


# instance fields
.field private final SEEK_GET_PCM_LOCK:Ljava/lang/Object;

.field private final TRACK_PLAYBACK_POSITION_UPDATE_LISTENER:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

.field private final activationDataRepository:Lcom/audible/mobile/activation/ActivationDataRepository;

.field private audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

.field private final audioMetadataProvider:Lcom/audible/mobile/audio/metadata/AudioMetadataProvider;

.field private audioTrackConfig:I

.field private bufferSizeBytes:I

.field private final buffersDecodedAhead:Ljava/util/concurrent/atomic/AtomicLong;

.field private final buffersFilled:Ljava/util/concurrent/atomic/AtomicLong;

.field private byteData:[[B

.field private bytesPerPeriod:I

.field private chapterOffsets:[J

.field private final context:Landroid/content/Context;

.field private currentReadBufferIndex:I

.field private currentWriteBufferIndex:I

.field private final eventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/audible/mobile/player/audio/AudiobookPlayerEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private framesPerPeriod:I

.field private final generalPlaybackWakelock:Landroid/os/PowerManager$WakeLock;

.field private final identityManager:Lcom/audible/mobile/identity/IdentityManager;

.field private final logger:Lorg/slf4j/Logger;

.field private loudnessEnhancerAudioEffect:Landroid/media/audiofx/AudioEffect;

.field private final metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

.field private minimumBufferSize:I

.field private minimumTrackBufferSize:I

.field private pcmSamplesPerCodecFrame:I

.field private final playerSharedPreferences:Lcom/audible/mobile/player/PlayerSettingsProvider;

.field private final positionFilePath:Ljava/lang/String;

.field private final powerManager:Landroid/os/PowerManager;

.field private final readWriteThread:Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;

.field private renamableAudioFileObserver:Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;

.field private sampleRate:I

.field private final sdk:Lcom/audible/sdk/AudibleSDK;

.field private sonic:Lsonic/Sonic;

.field private sonicInputBuffer:[B

.field private sonicOutputBuffer:[B

.field private sonicRemainderBuffer:[B

.field private tempo:Lcom/audible/mobile/player/NarrationSpeed;

.field private final timeAvailableSdk:Lcom/audible/sdk/AudibleSDK;

.field private track:Landroid/media/AudioTrack;

.field private volume:F

.field private final voucherFetcher:Lcom/audible/cdn/voucher/download/VoucherFetcher;

.field private final voucherManager:Lcom/audible/cdn/voucher/VoucherManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/activation/ActivationDataRepository;Lcom/audible/cdn/voucher/VoucherManager;Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/mobile/audio/metadata/AudioMetadataProvider;Lcom/audible/mobile/metric/logger/MetricManager;)V
    .locals 10

    move-object/from16 v9, p6

    .line 272
    new-instance v5, Lcom/audible/sdk/MetricRecordingAudibleSDK;

    invoke-direct {v5, v9}, Lcom/audible/sdk/MetricRecordingAudibleSDK;-><init>(Lcom/audible/mobile/metric/logger/MetricManager;)V

    new-instance v6, Lcom/audible/sdk/MetricRecordingAudibleSDK;

    invoke-direct {v6, v9}, Lcom/audible/sdk/MetricRecordingAudibleSDK;-><init>(Lcom/audible/mobile/metric/logger/MetricManager;)V

    new-instance v8, Lcom/audible/cdn/voucher/download/VoucherFetcher;

    move-object v3, p3

    move-object v4, p4

    invoke-direct {v8, p4, p3, v9}, Lcom/audible/cdn/voucher/download/VoucherFetcher;-><init>(Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/cdn/voucher/VoucherManager;Lcom/audible/mobile/metric/logger/MetricManager;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p5

    invoke-direct/range {v0 .. v9}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;-><init>(Landroid/content/Context;Lcom/audible/mobile/activation/ActivationDataRepository;Lcom/audible/cdn/voucher/VoucherManager;Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/sdk/AudibleSDK;Lcom/audible/sdk/AudibleSDK;Lcom/audible/mobile/audio/metadata/AudioMetadataProvider;Lcom/audible/cdn/voucher/download/VoucherFetcher;Lcom/audible/mobile/metric/logger/MetricManager;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/audible/mobile/activation/ActivationDataRepository;Lcom/audible/cdn/voucher/VoucherManager;Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/sdk/AudibleSDK;Lcom/audible/sdk/AudibleSDK;Lcom/audible/mobile/audio/metadata/AudioMetadataProvider;Lcom/audible/cdn/voucher/download/VoucherFetcher;Lcom/audible/mobile/metric/logger/MetricManager;)V
    .locals 4

    .line 293
    const-class v0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;

    invoke-direct {p0}, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;-><init>()V

    .line 92
    new-instance v1, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    invoke-direct {v1, v0}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    .line 149
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->buffersDecodedAhead:Ljava/util/concurrent/atomic/AtomicLong;

    .line 156
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->buffersFilled:Ljava/util/concurrent/atomic/AtomicLong;

    .line 193
    sget-object v1, Lcom/audible/mobile/player/NarrationSpeed;->NORMAL:Lcom/audible/mobile/player/NarrationSpeed;

    iput-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->tempo:Lcom/audible/mobile/player/NarrationSpeed;

    .line 198
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v1

    iput v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->volume:F

    .line 229
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->SEEK_GET_PCM_LOCK:Ljava/lang/Object;

    .line 243
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->eventListeners:Ljava/util/Set;

    .line 1860
    new-instance v1, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;

    invoke-direct {v1, p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;-><init>(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;)V

    iput-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->TRACK_PLAYBACK_POSITION_UPDATE_LISTENER:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    const-string v1, "context cannot be null"

    .line 295
    invoke-static {p1, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "activationDataRepository cannot be null"

    .line 296
    invoke-static {p2, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "voucherManager cannot be null"

    .line 297
    invoke-static {p3, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "identityManager cannot be null"

    .line 298
    invoke-static {p4, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "sdk cannot be null"

    .line 299
    invoke-static {p5, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "timeAvailableSdk cannot be null"

    .line 300
    invoke-static {p6, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "audioMetadataProvider cannot be null"

    .line 301
    invoke-static {p7, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "voucherFetcher cannot be null"

    .line 302
    invoke-static {p8, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "metricManager cannot be null"

    .line 303
    invoke-static {p9, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 305
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->context:Landroid/content/Context;

    .line 306
    iput-object p5, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sdk:Lcom/audible/sdk/AudibleSDK;

    .line 307
    iput-object p6, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->timeAvailableSdk:Lcom/audible/sdk/AudibleSDK;

    .line 308
    iput-object p2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->activationDataRepository:Lcom/audible/mobile/activation/ActivationDataRepository;

    .line 309
    iput-object p3, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->voucherManager:Lcom/audible/cdn/voucher/VoucherManager;

    .line 310
    iput-object p4, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    .line 311
    iput-object p7, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->audioMetadataProvider:Lcom/audible/mobile/audio/metadata/AudioMetadataProvider;

    .line 312
    new-instance p2, Lcom/audible/mobile/player/PlayerSharedPreferences;

    invoke-direct {p2, p1}, Lcom/audible/mobile/player/PlayerSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->playerSharedPreferences:Lcom/audible/mobile/player/PlayerSettingsProvider;

    const-string p2, "power"

    .line 313
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->powerManager:Landroid/os/PowerManager;

    .line 314
    iput-object p8, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->voucherFetcher:Lcom/audible/cdn/voucher/download/VoucherFetcher;

    .line 315
    iput-object p9, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    .line 316
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".pos"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->positionFilePath:Ljava/lang/String;

    .line 318
    iget-object p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->powerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->generalPlaybackWakelock:Landroid/os/PowerManager$WakeLock;

    const/4 p2, 0x0

    .line 319
    invoke-virtual {p1, p2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 321
    new-instance p1, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;

    invoke-direct {p1, p0}, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;-><init>(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;)V

    iput-object p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->readWriteThread:Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;

    .line 322
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$100(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->notifyPlaybackPositionChange(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;)Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->readWriteThread:Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;

    return-object p0
.end method

.method static synthetic access$200(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->buffersDecodedAhead:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static synthetic access$300(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;)Lorg/slf4j/Logger;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    return-object p0
.end method

.method static synthetic access$500(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;)Landroid/os/PowerManager;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->powerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->buffersFilled:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static synthetic access$700(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;)Z
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->writeNextBuffer()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;)Lcom/audible/mobile/player/AudioDataSource;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    return-object p0
.end method

.method static synthetic access$900(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->notifyCompletion(Lcom/audible/mobile/player/AudioDataSource;)V

    return-void
.end method

.method private acquireGeneralPlaybackWakelock()V
    .locals 1

    .line 1967
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->generalPlaybackWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method private authenticateCdnFile(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/identity/DeviceSerialNumber;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/identity/DeviceType;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/DeviceNotActivatedForThisFileException;,
            Lcom/audible/sdk/DeviceNotActivatedException;,
            Lcom/audible/license/exceptions/VoucherLoadException;,
            Lcom/audible/cdn/voucher/rules/VoucherRuleValidateException;
        }
    .end annotation

    const-string v0, "asin cannot be null"

    .line 696
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "deviceId cannot be null"

    .line 697
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "directedCustomerId cannot be null"

    .line 698
    invoke-static {p3, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "deviceType cannot be null"

    .line 699
    invoke-static {p4, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 701
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->voucherManager:Lcom/audible/cdn/voucher/VoucherManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/audible/cdn/voucher/VoucherManager;->loadVoucher(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/identity/DeviceSerialNumber;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/identity/DeviceType;)Lcom/audible/cdn/voucher/VoucherModel;

    move-result-object p1

    .line 702
    iget-object p2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {p1}, Lcom/audible/cdn/voucher/VoucherModel;->getKey()[B

    move-result-object p3

    invoke-virtual {p1}, Lcom/audible/cdn/voucher/VoucherModel;->getIv()[B

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/audible/sdk/AudibleSDK;->authenticateCdn([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->FAILURE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    :goto_0
    return-object p1
.end method

.method private authenticateCdnFile(Lcom/audible/mobile/identity/DeviceSerialNumber;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/identity/DeviceType;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;
    .locals 9

    const-string v0, "deviceId cannot be null"

    .line 749
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "directedCustomerId cannot be null"

    .line 750
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "deviceType cannot be null"

    .line 751
    invoke-static {p3, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 753
    sget-object v0, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerCdnFileAuthenticationTimer:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    invoke-direct {p0, v0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->getAndStartTimerMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)Lcom/audible/mobile/metric/domain/TimerMetric;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-gt v3, v4, :cond_4

    .line 757
    sget-object v5, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    if-eq v2, v5, :cond_4

    if-lez v3, :cond_0

    .line 759
    iget-object v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sdk:Lcom/audible/sdk/AudibleSDK;

    iget-object v5, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {v5}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->updateVoucher(Lcom/audible/sdk/AudibleSDK;Lcom/audible/mobile/domain/Asin;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 760
    sget-object v2, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->FAILED_TO_FETCH_VOUCHER:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x2

    const/4 v5, 0x3

    .line 766
    :try_start_0
    iget-object v6, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {v6}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v6

    invoke-direct {p0, v6, p1, p2, p3}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->authenticateCdnFile(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/identity/DeviceSerialNumber;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/identity/DeviceType;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    move-result-object v6

    .line 767
    invoke-static {v6, v3}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->createRetryMetricName(Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;I)Lcom/audible/mobile/metric/domain/Metric$Name;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)V
    :try_end_0
    .catch Lcom/audible/cdn/voucher/rules/VoucherExpiredException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/audible/license/exceptions/VoucherLoadException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v6

    goto/16 :goto_2

    :catch_0
    move-exception v6

    .line 786
    iget-object v7, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {v8}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v8

    aput-object v8, v5, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v4

    aput-object v6, v5, v2

    const-string v2, "Failed to authenticate title {} using voucher. Retry {}"

    invoke-interface {v7, v2, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 787
    sget-object v2, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->FAILURE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    .line 788
    invoke-static {v2, v3}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->createRetryMetricName(Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;I)Lcom/audible/mobile/metric/domain/Metric$Name;

    move-result-object v4

    invoke-direct {p0, v4, v6}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->recordExceptionMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :catch_1
    move-exception v6

    .line 771
    invoke-virtual {v6}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    instance-of v7, v7, Ljava/io/FileNotFoundException;

    if-eqz v7, :cond_1

    .line 772
    iget-object v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    iget-object v4, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {v4}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Title {} voucher not found. Retry {}"

    invoke-interface {v2, v6, v4, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 773
    sget-object v2, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->VOUCHER_NOT_FOUND:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    goto/16 :goto_1

    .line 774
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    instance-of v7, v7, Lcom/audible/license/exceptions/InvalidVoucherException;

    if-eqz v7, :cond_2

    .line 775
    iget-object v7, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {v8}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v8

    aput-object v8, v5, v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v2, "Title {} voucher is invalid. {}. Retry {}"

    invoke-interface {v7, v2, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 776
    sget-object v2, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->INVALID_VOUCHER:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    goto :goto_1

    .line 777
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    instance-of v7, v7, Ljava/security/GeneralSecurityException;

    if-eqz v7, :cond_3

    .line 778
    iget-object v7, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {v8}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v8

    aput-object v8, v5, v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v2, "Failed to decrypt title {} voucher. {}. Retry {}"

    invoke-interface {v7, v2, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 779
    sget-object v2, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->FAILED_TO_DECRYPT_VOUCHER:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    goto :goto_1

    .line 781
    :cond_3
    iget-object v7, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {v8}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v8

    aput-object v8, v5, v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v2, "There was a problem loading or parsing the title {} voucher. {}. Retry {}"

    invoke-interface {v7, v2, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 782
    sget-object v2, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->INVALID_VOUCHER:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    .line 784
    :goto_1
    invoke-static {v2, v3}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->createRetryMetricName(Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;I)Lcom/audible/mobile/metric/domain/Metric$Name;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)V

    goto :goto_2

    .line 769
    :catch_2
    sget-object v2, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->VOUCHER_EXPIRED:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 792
    :cond_4
    sget-object p1, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$AuthenticateResult:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v4, :cond_5

    .line 797
    sget-object p1, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerCdnFileAuthenticationFailed:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    invoke-direct {p0, p1}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)V

    .line 798
    invoke-interface {v0}, Lcom/audible/mobile/metric/domain/TimerMetric;->stop()V

    goto :goto_3

    .line 794
    :cond_5
    invoke-virtual {p0, v0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->recordTimerMetric(Lcom/audible/mobile/metric/domain/TimerMetric;)V

    :goto_3
    return-object v2
.end method

.method private configureSonic()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation

    .line 1853
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sonic:Lsonic/Sonic;

    if-eqz v0, :cond_0

    .line 1854
    invoke-virtual {v0}, Lsonic/Sonic;->flushStream()V

    .line 1856
    :cond_0
    new-instance v0, Lsonic/Sonic;

    iget v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sampleRate:I

    iget-object v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v2}, Lcom/audible/sdk/AudibleSDK;->getAudioChannelCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lsonic/Sonic;-><init>(II)V

    iput-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sonic:Lsonic/Sonic;

    .line 1857
    iget-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->tempo:Lcom/audible/mobile/player/NarrationSpeed;

    invoke-virtual {v1}, Lcom/audible/mobile/player/NarrationSpeed;->asFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lsonic/Sonic;->setSpeed(F)V

    return-void
.end method

.method private configureVolumeBoost(I)V
    .locals 2

    .line 1644
    :try_start_0
    new-instance v0, Landroid/media/audiofx/LoudnessEnhancer;

    invoke-direct {v0, p1}, Landroid/media/audiofx/LoudnessEnhancer;-><init>(I)V

    iput-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->loudnessEnhancerAudioEffect:Landroid/media/audiofx/AudioEffect;

    .line 1645
    check-cast v0, Landroid/media/audiofx/LoudnessEnhancer;

    const/16 p1, 0x258

    invoke-virtual {v0, p1}, Landroid/media/audiofx/LoudnessEnhancer;->setTargetGain(I)V

    .line 1646
    iget-object p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->loudnessEnhancerAudioEffect:Landroid/media/audiofx/AudioEffect;

    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->playerSharedPreferences:Lcom/audible/mobile/player/PlayerSettingsProvider;

    invoke-interface {v0}, Lcom/audible/mobile/player/PlayerSettingsProvider;->getVolumeBoost()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1649
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "LoudnessEnhancer is not supported on this device type."

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static createRetryMetricName(Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;I)Lcom/audible/mobile/metric/domain/Metric$Name;
    .locals 2

    .line 718
    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    if-ne p0, v0, :cond_0

    .line 719
    sget-object p0, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerCdnFileAuthenticated:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    goto :goto_0

    .line 720
    :cond_0
    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->VOUCHER_EXPIRED:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    if-ne p0, v0, :cond_1

    .line 721
    sget-object p0, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerCdnFileAuthenticationFailedVoucherExpired:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    goto :goto_0

    .line 722
    :cond_1
    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->INVALID_VOUCHER:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    if-ne p0, v0, :cond_2

    .line 723
    sget-object p0, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerCdnFileInvalidVoucher:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    goto :goto_0

    .line 724
    :cond_2
    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->VOUCHER_NOT_FOUND:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    if-ne p0, v0, :cond_3

    .line 725
    sget-object p0, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerCdnFileVoucherNotFound:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    goto :goto_0

    .line 726
    :cond_3
    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->FAILED_TO_DECRYPT_VOUCHER:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    if-ne p0, v0, :cond_4

    .line 727
    sget-object p0, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerCdnFileFailedToDecryptVoucher:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    goto :goto_0

    .line 729
    :cond_4
    sget-object p0, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerCdnFileFailedUnknownError:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    :goto_0
    if-nez p1, :cond_5

    goto :goto_1

    .line 732
    :cond_5
    new-instance v0, Lcom/audible/mobile/metric/domain/DynamicMetricName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "Retry"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/audible/mobile/metric/domain/DynamicMetricName;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method private createTrack()V
    .locals 3

    .line 1576
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 1578
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->readWriteThread:Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;

    invoke-virtual {v0}, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->suspendDecoderThread()V

    .line 1579
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->resetCacheBuffers()V

    .line 1582
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 1583
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 1584
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 1585
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1587
    iget-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1591
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->newTrack()Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->track:Landroid/media/AudioTrack;

    return-void
.end method

.method private fillAudioTrackQueue()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x30

    if-ge v1, v2, :cond_2

    .line 1740
    invoke-virtual {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->decodeFrame()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1741
    invoke-virtual {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->handleDecodeError()Z

    return v0

    .line 1745
    :cond_0
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->writeNextBuffer()Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private flush()V
    .locals 1

    const/4 v0, 0x1

    .line 1503
    invoke-direct {p0, v0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->flush(Z)V

    return-void
.end method

.method private flush(Z)V
    .locals 3

    .line 1509
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->track:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    return-void

    .line 1513
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->readWriteThread:Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;

    invoke-virtual {v0}, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->suspendDecoderThread()V

    .line 1517
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 1518
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 1519
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->configureSonic()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1521
    iget-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz p1, :cond_1

    .line 1529
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->createTrack()V

    :cond_1
    return-void
.end method

.method private getAndStartTimerMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)Lcom/audible/mobile/metric/domain/TimerMetric;
    .locals 3

    const-string v0, "metric name can\'t be null"

    .line 2078
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2080
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPCategory;->DrmPlayer:Lcom/audible/mobile/metric/logger/AAPCategory;

    sget-object v2, Lcom/audible/mobile/metric/logger/AAPSource;->Player:Lcom/audible/mobile/metric/logger/AAPSource;

    invoke-direct {v0, v1, v2, p1}, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    .line 2081
    iget-object p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    if-eqz p1, :cond_1

    .line 2082
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2083
    sget-object p1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ASIN_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    iget-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {v1}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    .line 2085
    :cond_0
    iget-object p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getACR()Lcom/audible/mobile/domain/ACR;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2086
    sget-object p1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ACR_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    iget-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {v1}, Lcom/audible/mobile/player/AudioDataSource;->getACR()Lcom/audible/mobile/domain/ACR;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    .line 2089
    :cond_1
    invoke-virtual {v0}, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/TimerMetric;

    move-result-object p1

    .line 2090
    invoke-interface {p1}, Lcom/audible/mobile/metric/domain/TimerMetric;->start()V

    return-object p1
.end method

.method private getSingleCacheBufferDuration()J
    .locals 4

    .line 1496
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->tempo:Lcom/audible/mobile/player/NarrationSpeed;

    invoke-virtual {v0}, Lcom/audible/mobile/player/NarrationSpeed;->asFloat()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-long v0, v0

    .line 1498
    iget v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->pcmSamplesPerCodecFrame:I

    int-to-long v2, v2

    mul-long v2, v2, v0

    iget v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sampleRate:I

    div-int/lit8 v0, v0, 0xa

    int-to-long v0, v0

    div-long/2addr v2, v0

    return-wide v2
.end method

.method private getTimeDecodedAhead()J
    .locals 5

    .line 1479
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->buffersDecodedAhead:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-wide v2

    .line 1485
    :cond_0
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->getSingleCacheBufferDuration()J

    move-result-wide v2

    mul-long v0, v0, v2

    return-wide v0
.end method

.method private handleAudibleSDKException(Lcom/audible/sdk/AudibleSDKException;)Z
    .locals 2

    .line 1436
    invoke-virtual {p1}, Lcom/audible/sdk/AudibleSDKException;->getCode()Lcom/audible/sdk/AudibleSDKErrorCode;

    move-result-object p1

    .line 1437
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "handling SDK exception {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1439
    sget-object v0, Lcom/audible/sdk/AudibleSDKErrorCode;->AUD_AUDIO_END_OF_FILE_REACHED:Lcom/audible/sdk/AudibleSDKErrorCode;

    if-ne p1, v0, :cond_0

    .line 1441
    iget-object p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->readWriteThread:Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;

    invoke-virtual {p1}, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->suspendDecoderThread()V

    .line 1442
    sget-object p1, Lcom/audible/mobile/player/State;->PLAYBACK_COMPLETED:Lcom/audible/mobile/player/State;

    invoke-virtual {p0, p1}, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->makeStateTransition(Lcom/audible/mobile/player/State;)V

    const/4 p1, 0x1

    return p1

    .line 1445
    :cond_0
    sget-object v0, Lcom/audible/sdk/AudibleSDKErrorCode;->AUD_DATA_NOT_AVAILABLE:Lcom/audible/sdk/AudibleSDKErrorCode;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 1447
    iget-object p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->readWriteThread:Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;

    invoke-virtual {p1}, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->suspendDecoderThread()V

    .line 1448
    invoke-virtual {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->pause()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;

    return v1

    .line 1453
    :cond_1
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->flush()V

    .line 1454
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->releaseGeneralPlaybackWakelock()V

    return v1
.end method

.method private handleDecodeRuntimeException(Ljava/lang/RuntimeException;)Z
    .locals 3

    .line 1399
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 1400
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    sget-object v1, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->PII_MARKER:Lorg/slf4j/Marker;

    const-string v2, "AudioPlayer.handleRunTimeException: message is {}"

    invoke-interface {v0, v1, v2, p1}, Lorg/slf4j/Logger;->error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "AUD_AUDIO_END_OF_FILE_REACHED"

    .line 1402
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1403
    sget-object p1, Lcom/audible/mobile/player/State;->PLAYBACK_COMPLETED:Lcom/audible/mobile/player/State;

    invoke-virtual {p0, p1}, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->makeStateTransition(Lcom/audible/mobile/player/State;)V

    .line 1404
    iget-object p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->readWriteThread:Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;

    invoke-virtual {p1}, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->suspendDecoderThread()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string v0, "AUD_DATA_NOT_AVAILABLE"

    .line 1407
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1408
    iget-object p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->readWriteThread:Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;

    invoke-virtual {p1}, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->suspendDecoderThread()V

    .line 1409
    invoke-virtual {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->pause()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;

    return v0

    .line 1413
    :cond_1
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->flush()V

    .line 1414
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->releaseGeneralPlaybackWakelock()V

    return v0
.end method

.method private handleDoSetDataSourceException()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;
    .locals 1

    .line 2044
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->releaseSdk()V

    .line 2046
    sget-object v0, Lcom/audible/mobile/player/Error;->INTERNAL_PLAYER:Lcom/audible/mobile/player/Error;

    invoke-direct {p0, v0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->transitionToErrorState(Lcom/audible/mobile/player/Error;)V

    .line 2047
    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->ERROR_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    return-object v0
.end method

.method private isNextFrameUnavailable()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation

    .line 1378
    invoke-virtual {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->getDuration()I

    move-result v0

    .line 1379
    invoke-virtual {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->getTimeAvailable()I

    move-result v1

    .line 1380
    invoke-virtual {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->getCurrentPosition()I

    move-result v2

    const/4 v3, 0x1

    if-lez v0, :cond_3

    if-lez v1, :cond_3

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    if-ge v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    int-to-long v5, v2

    .line 1388
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->getSingleCacheBufferDuration()J

    move-result-wide v7

    add-long/2addr v5, v7

    int-to-long v0, v1

    cmp-long v2, v5, v0

    if-ltz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :cond_3
    :goto_1
    return v3
.end method

.method private newTrack()Landroid/media/AudioTrack;
    .locals 8

    .line 1596
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Creating new audio track"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 1598
    :try_start_0
    iget v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sampleRate:I

    if-nez v0, :cond_0

    .line 1599
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Invalid sample rate {}"

    iget v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sampleRate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1601
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "==== Creating track ===="

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 1602
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "==== sampleRate         : {}"

    iget v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sampleRate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1603
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "==== minBufferSize      : {}"

    iget v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->minimumBufferSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1604
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "==== minTrackBufferSize : {}"

    iget v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->minimumTrackBufferSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1605
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "==== framesPerPeriod    : {}"

    iget v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->framesPerPeriod:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1606
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "==== bytesPerPeriod     : {}"

    iget v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->bytesPerPeriod:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1609
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 1610
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    .line 1611
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1612
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1613
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 1615
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v1, 0x2

    .line 1616
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sampleRate:I

    .line 1617
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->audioTrackConfig:I

    .line 1618
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 1619
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v3

    .line 1621
    new-instance v0, Landroid/media/AudioTrack;

    iget v4, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->minimumBufferSize:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    goto :goto_0

    .line 1623
    :cond_1
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v2, 0x3

    iget v3, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sampleRate:I

    iget v4, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->audioTrackConfig:I

    const/4 v5, 0x2

    iget v6, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->minimumBufferSize:I

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 1626
    :goto_0
    iget v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->framesPerPeriod:I

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setPositionNotificationPeriod(I)I

    .line 1627
    iget-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->TRACK_PLAYBACK_POSITION_UPDATE_LISTENER:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    .line 1628
    iget v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->volume:F

    invoke-virtual {p0, v1}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->setVolume(F)Z

    .line 1630
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    .line 1631
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->configureVolumeBoost(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    .line 1635
    iget-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private notifyCompletion(Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 2

    .line 2015
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Notify audio player event listeners : COMPLETION"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 2017
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->eventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/player/audio/AudiobookPlayerEventListener;

    .line 2018
    invoke-interface {v1, p1}, Lcom/audible/mobile/player/audio/AudiobookPlayerEventListener;->onCompletion(Lcom/audible/mobile/player/AudioDataSource;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyFileRenamed(Ljava/io/File;Ljava/io/File;)V
    .locals 2

    .line 2001
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Notify audio player event listeners : FILE RENAMED"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 2003
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->eventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/player/audio/AudiobookPlayerEventListener;

    .line 2004
    invoke-interface {v1, p1, p2}, Lcom/audible/mobile/player/audio/FileRenameEventListener;->onFileRenamed(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyPlaybackPositionChange(I)V
    .locals 2

    .line 2029
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->eventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/player/audio/AudiobookPlayerEventListener;

    .line 2030
    invoke-interface {v1, p1}, Lcom/audible/mobile/player/audio/AudiobookPlayerEventListener;->onPlaybackPositionChange(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyTempoChanged(Lcom/audible/mobile/player/NarrationSpeed;Lcom/audible/mobile/player/NarrationSpeed;)V
    .locals 2

    .line 1977
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Notifying audio player event listeners that tempo changed."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 1979
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->eventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/player/audio/AudiobookPlayerEventListener;

    .line 1980
    invoke-interface {v1, p1, p2}, Lcom/audible/mobile/player/audio/AudiobookPlayerEventListener;->onTempoChanged(Lcom/audible/mobile/player/NarrationSpeed;Lcom/audible/mobile/player/NarrationSpeed;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyVolumeChanged(FF)V
    .locals 2

    .line 1986
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Notifying audio player event listeners that volume changed."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 1988
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->eventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/player/audio/AudiobookPlayerEventListener;

    .line 1989
    invoke-interface {v1, p1, p2}, Lcom/audible/mobile/player/audio/AudiobookPlayerEventListener;->onVolumeChanged(FF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private playCachedBuffers()Z
    .locals 5

    .line 1674
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->readWriteThread:Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;

    invoke-virtual {v0}, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->suspendDecoderThread()V

    .line 1676
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->buffersDecodedAhead:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1680
    :cond_0
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->startPlaying()Z

    const/4 v0, 0x1

    return v0
.end method

.method private recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)V
    .locals 3

    const-string v0, "metric name can\'t be null"

    .line 2056
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2058
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPCategory;->DrmPlayer:Lcom/audible/mobile/metric/logger/AAPCategory;

    sget-object v2, Lcom/audible/mobile/metric/logger/AAPSource;->Player:Lcom/audible/mobile/metric/logger/AAPSource;

    invoke-direct {v0, v1, v2, p1}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    .line 2059
    iget-object p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    if-eqz p1, :cond_1

    .line 2060
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2061
    sget-object p1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ASIN_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    iget-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {v1}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    .line 2063
    :cond_0
    iget-object p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getACR()Lcom/audible/mobile/domain/ACR;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2064
    sget-object p1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ACR_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    iget-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {v1}, Lcom/audible/mobile/player/AudioDataSource;->getACR()Lcom/audible/mobile/domain/ACR;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    .line 2067
    :cond_1
    iget-object p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-virtual {v0}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/CounterMetric;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/CounterMetric;)V

    return-void
.end method

.method private recordExceptionMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "metric name can\'t be null"

    .line 2113
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "throwable name can\'t be null"

    .line 2114
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2116
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPCategory;->DrmPlayer:Lcom/audible/mobile/metric/logger/AAPCategory;

    sget-object v2, Lcom/audible/mobile/metric/logger/AAPSource;->Player:Lcom/audible/mobile/metric/logger/AAPSource;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;Ljava/lang/Throwable;)V

    .line 2117
    iget-object p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    if-eqz p1, :cond_1

    .line 2118
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2119
    sget-object p1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ASIN_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    iget-object p2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {p2}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    .line 2121
    :cond_0
    iget-object p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getACR()Lcom/audible/mobile/domain/ACR;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2122
    sget-object p1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ACR_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    iget-object p2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {p2}, Lcom/audible/mobile/player/AudioDataSource;->getACR()Lcom/audible/mobile/domain/ACR;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    .line 2125
    :cond_1
    iget-object p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-virtual {v0}, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/ExceptionMetric;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/ExceptionMetric;)V

    return-void
.end method

.method private releaseGeneralPlaybackWakelock()V
    .locals 1

    .line 1972
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->generalPlaybackWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method private releaseSdk()V
    .locals 2

    .line 1562
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Releasing SDK..."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 1564
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v0}, Lcom/audible/sdk/AudibleSDK;->release()V

    .line 1565
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->timeAvailableSdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v0}, Lcom/audible/sdk/AudibleSDK;->release()V

    .line 1567
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->renamableAudioFileObserver:Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;

    if-eqz v0, :cond_0

    .line 1568
    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    const/4 v0, 0x0

    .line 1569
    iput-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->renamableAudioFileObserver:Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;

    :cond_0
    return-void
.end method

.method private releaseTrack()V
    .locals 4

    .line 1536
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Suspending decoding and releasing the track"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 1538
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->readWriteThread:Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;

    invoke-virtual {v0}, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->suspendDecoderThread()V

    .line 1540
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1542
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 1543
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 1544
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 1545
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->configureSonic()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1547
    :try_start_1
    iget-object v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1549
    :goto_0
    iput-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->track:Landroid/media/AudioTrack;

    .line 1552
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->releaseGeneralPlaybackWakelock()V

    goto :goto_2

    .line 1549
    :goto_1
    iput-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->track:Landroid/media/AudioTrack;

    .line 1550
    throw v0

    .line 1555
    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->releaseSdk()V

    .line 1556
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->resetCacheBuffers()V

    return-void
.end method

.method private resetCacheBuffers()V
    .locals 3

    const/4 v0, 0x0

    .line 1655
    iput v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->currentReadBufferIndex:I

    .line 1656
    iput v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->currentWriteBufferIndex:I

    .line 1657
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->buffersFilled:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1658
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->buffersDecodedAhead:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method private restartPlayback()Z
    .locals 1

    .line 1663
    invoke-virtual {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1664
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->startPlayLoop()Z

    move-result v0

    return v0

    .line 1666
    :cond_0
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->resetCacheBuffers()V

    const/4 v0, 0x1

    return v0
.end method

.method private sdkSeek(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;
    .locals 3

    .line 1461
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->SEEK_GET_PCM_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1463
    :try_start_0
    iget-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v1, p1}, Lcom/audible/sdk/AudibleSDK;->seek(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1464
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;->FAILURE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;
    :try_end_0
    .catch Lcom/audible/sdk/AudibleSDKException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/audible/sdk/InvalidFileException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1472
    :catch_0
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;->FAILURE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    monitor-exit v0

    return-object p1

    .line 1470
    :catch_1
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;->INDEX_OUT_OF_BOUNDS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    monitor-exit v0

    return-object p1

    :catch_2
    move-exception p1

    .line 1466
    iget-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1467
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->handleAudibleSDKException(Lcom/audible/sdk/AudibleSDKException;)Z

    .line 1468
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;->FAILURE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    monitor-exit v0

    return-object p1

    .line 1474
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private startPlayLoop()Z
    .locals 3

    .line 1688
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->resetCacheBuffers()V

    .line 1691
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->fillAudioTrackQueue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1692
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->playCachedBuffers()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x30

    if-ge v1, v2, :cond_3

    .line 1697
    invoke-virtual {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->decodeFrame()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1699
    invoke-virtual {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->handleDecodeError()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 1703
    :cond_1
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->playCachedBuffers()Z

    move-result v0

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1707
    :cond_3
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->readWriteThread:Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;

    invoke-virtual {v0}, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->resumeDecoderThread()V

    .line 1710
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->startPlaying()Z

    const/4 v0, 0x1

    return v0
.end method

.method private startPlaying()Z
    .locals 2

    .line 1718
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1720
    :try_start_0
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->acquireGeneralPlaybackWakelock()V

    .line 1721
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1725
    :catch_0
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->flush()V

    .line 1726
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->releaseGeneralPlaybackWakelock()V

    .line 1727
    sget-object v0, Lcom/audible/mobile/player/State;->PREPARED:Lcom/audible/mobile/player/State;

    invoke-virtual {p0, v0}, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->makeStateTransition(Lcom/audible/mobile/player/State;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private transitionToErrorState(Lcom/audible/mobile/player/Error;)V
    .locals 2

    .line 2036
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->stateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    invoke-interface {v0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->getState()Lcom/audible/mobile/player/State;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/player/State;->ERROR:Lcom/audible/mobile/player/State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2037
    invoke-virtual {p0, p1, v0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->doNotifyError(Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V

    .line 2039
    :cond_0
    sget-object p1, Lcom/audible/mobile/player/State;->ERROR:Lcom/audible/mobile/player/State;

    invoke-virtual {p0, p1}, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->makeStateTransition(Lcom/audible/mobile/player/State;)V

    return-void
.end method

.method private updateVoucher(Lcom/audible/sdk/AudibleSDK;Lcom/audible/mobile/domain/Asin;)Z
    .locals 3

    const/4 p1, 0x0

    .line 639
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/audible/mobile/util/NetworkUtils;->getNetworkInfoType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 640
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "updateVoucher: cannot fetch new voucher. No network connection"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 641
    sget-object v0, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerCannotFetchNewVoucherNoNetworkConnection:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    invoke-direct {p0, v0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)V

    return p1

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sdk:Lcom/audible/sdk/AudibleSDK;

    sget-object v1, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_AACR:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    invoke-virtual {v0, v1}, Lcom/audible/sdk/AudibleSDK;->getMetadata(Lcom/audible/sdk/AudibleSDK$MetadataTag;)Ljava/lang/String;

    move-result-object v0

    .line 647
    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 648
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->voucherFetcher:Lcom/audible/cdn/voucher/download/VoucherFetcher;

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/request/Quality;->NORMAL:Lcom/audible/mobile/contentlicense/networking/request/Quality;

    invoke-virtual {v0, p2, v1}, Lcom/audible/cdn/voucher/download/VoucherFetcher;->fetchVoucherBlocking(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/contentlicense/networking/request/Quality;)Lcom/audible/license/model/DownloadMetadata;

    .line 649
    sget-object v0, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerNewVoucherFetchedWithoutAcrAndAudioVersion:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    invoke-direct {p0, v0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)V

    return v2

    .line 653
    :cond_1
    iget-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->voucherFetcher:Lcom/audible/cdn/voucher/download/VoucherFetcher;

    invoke-static {v0}, Lcom/audible/mobile/domain/ImmutableACRImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/ACR;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Lcom/audible/cdn/voucher/download/VoucherFetcher;->refreshVoucherBlocking(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)V

    .line 654
    sget-object v0, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerNewVoucherFetchedWithAcrAndAudioVersion:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    invoke-direct {p0, v0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)V
    :try_end_0
    .catch Lcom/audible/license/exceptions/ContentLicenseHttpException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseStatusCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseResponseParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    .line 669
    iget-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v2, "update voucher: Unknown exception. asin - {}, error - {}"

    invoke-interface {v1, v2, p2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 670
    sget-object p2, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerFailedToFetchNewVoucherUnknownException:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    invoke-direct {p0, p2}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 666
    iget-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v2, "updateVoucher: ContentLicenseResponseParseException. asin - {}, error - {}"

    invoke-interface {v1, v2, p2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 667
    sget-object p2, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerFailedToFetchNewVoucherContentLicenseResponseParseException:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    invoke-direct {p0, p2}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 663
    iget-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v2, "updateVoucher: ContentLicenseStatusCodeException. asin - {}, error - {}"

    invoke-interface {v1, v2, p2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 664
    sget-object p2, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerFailedToFetchNewVoucherContentLicenseStatusCodeException:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    invoke-direct {p0, p2}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)V

    goto :goto_0

    :catch_3
    move-exception v0

    .line 660
    iget-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v2, "updateVoucher: HttpException. asin - {}, error - {}"

    invoke-interface {v1, v2, p2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 661
    sget-object p2, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerFailedToFetchNewVoucherHttpException:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    invoke-direct {p0, p2}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)V

    :goto_0
    return p1
.end method

.method private declared-synchronized writeNextBuffer()Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 1760
    :try_start_0
    iget-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->track:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1761
    monitor-exit p0

    return v0

    .line 1764
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->bufferSizeBytes:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 1765
    monitor-exit p0

    return v0

    .line 1768
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->byteData:[[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_2

    .line 1769
    monitor-exit p0

    return v0

    .line 1772
    :cond_2
    :try_start_3
    iget v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->bufferSizeBytes:I

    iget-object v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->byteData:[[B

    iget v3, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->currentWriteBufferIndex:I

    aget-object v2, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->writeOrClose(I[B)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1775
    iget-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeNextBuffer: writeOrClose returned false. this.buffer_size - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->bufferSizeBytes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", current_write_buffer - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->currentWriteBufferIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". resetting audio track"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1778
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->createTrack()V

    .line 1780
    iget-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->track:Landroid/media/AudioTrack;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_3

    .line 1781
    monitor-exit p0

    return v0

    .line 1784
    :cond_3
    :try_start_4
    iget v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->bufferSizeBytes:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v1, :cond_4

    .line 1785
    monitor-exit p0

    return v0

    .line 1788
    :cond_4
    :try_start_5
    iget-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->byteData:[[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v1, :cond_5

    .line 1789
    monitor-exit p0

    return v0

    .line 1792
    :cond_5
    :try_start_6
    iget v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->bufferSizeBytes:I

    iget-object v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->byteData:[[B

    iget v3, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->currentWriteBufferIndex:I

    aget-object v2, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->writeOrClose(I[B)Z

    move-result v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1796
    :catch_0
    :try_start_7
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->createTrack()V

    .line 1798
    iget-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->track:Landroid/media/AudioTrack;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v1, :cond_6

    .line 1799
    monitor-exit p0

    return v0

    .line 1803
    :cond_6
    :try_start_8
    iget v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->bufferSizeBytes:I

    iget-object v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->byteData:[[B

    iget v3, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->currentWriteBufferIndex:I

    aget-object v2, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->writeOrClose(I[B)Z

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_7
    :goto_0
    if-nez v1, :cond_8

    .line 1810
    monitor-exit p0

    return v0

    .line 1813
    :cond_8
    :try_start_9
    iget v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->currentWriteBufferIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->currentWriteBufferIndex:I

    const/16 v3, 0x30

    if-lt v1, v3, :cond_9

    .line 1816
    iput v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->currentWriteBufferIndex:I

    .line 1820
    :cond_9
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->buffersFilled:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1822
    monitor-exit p0

    return v2

    .line 1805
    :catch_1
    monitor-exit p0

    return v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method private writeOrClose(I[B)Z
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez p1, :cond_2

    if-eqz p2, :cond_2

    .line 1828
    array-length v4, p2

    if-nez v4, :cond_0

    goto :goto_0

    .line 1839
    :cond_0
    iget-object v4, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->track:Landroid/media/AudioTrack;

    invoke-virtual {v4, p2, v3, p1}, Landroid/media/AudioTrack;->write([BII)I

    move-result v4

    if-gtz v4, :cond_1

    .line 1842
    iget-object v5, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v2

    aput-object p2, v6, v0

    array-length p1, p2

    .line 1843
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v1

    const-string p1, "AudioTrack.write returned {}, read {}, bytesToReadAndWrite {}, bytesToReadAndWrite.length {}"

    .line 1842
    invoke-interface {v5, p1, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_1
    return v2

    :cond_2
    :goto_0
    if-nez p2, :cond_3

    const/4 v4, -0x1

    goto :goto_1

    .line 1830
    :cond_3
    array-length v4, p2

    .line 1831
    :goto_1
    iget-object v5, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v6, "Read was < 0 pausing playback"

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1832
    iget-object v5, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    aput-object p2, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "read = {}, bytesToReadAndWrite {}, bytesToReadAndWrite.length {}"

    invoke-interface {v5, p1, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1834
    invoke-virtual {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->pause()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;

    return v2
.end method


# virtual methods
.method public addOnPlayerEventListener(Lcom/audible/mobile/player/audio/AudiobookPlayerEventListener;)Z
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->eventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public authenticateFile(Lcom/audible/mobile/identity/DeviceSerialNumber;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/identity/DeviceType;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->stateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    invoke-interface {v0, p1, p2, p3}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->authenticateFile(Lcom/audible/mobile/identity/DeviceSerialNumber;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/identity/DeviceType;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    move-result-object p1

    return-object p1
.end method

.method protected decodeFrame()Z
    .locals 8

    .line 1281
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->buffersFilled:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const/16 v2, 0x30

    const/4 v3, 0x1

    const-wide/16 v4, 0x30

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    .line 1282
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "{} buffers are filled, returning..."

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    return v3

    .line 1286
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->SEEK_GET_PCM_LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1291
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sonic:Lsonic/Sonic;

    invoke-virtual {v5}, Lsonic/Sonic;->samplesAvailable()I

    move-result v5

    iget v6, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->bufferSizeBytes:I

    if-le v5, v6, :cond_2

    .line 1292
    iget-object v4, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sonic:Lsonic/Sonic;

    iget-object v5, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sonicOutputBuffer:[B

    iget v6, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->bufferSizeBytes:I

    invoke-virtual {v4, v5, v6}, Lsonic/Sonic;->readBytesFromStream([BI)I

    .line 1293
    iget v4, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->bufferSizeBytes:I

    goto :goto_0

    .line 1298
    :cond_2
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->isNextFrameUnavailable()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1299
    iget-object v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v4, "Reached end of available audio, cannot decode further."

    invoke-interface {v2, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1300
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->flush()V

    .line 1301
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->releaseGeneralPlaybackWakelock()V

    .line 1302
    sget-object v2, Lcom/audible/mobile/player/Error;->SEEK_OUT_OF_BOUNDS:Lcom/audible/mobile/player/Error;

    invoke-direct {p0, v2}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->transitionToErrorState(Lcom/audible/mobile/player/Error;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/audible/sdk/AudibleSDKException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1303
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v1

    .line 1306
    :cond_3
    :try_start_2
    iget-object v5, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sdk:Lcom/audible/sdk/AudibleSDK;

    iget-object v6, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sonicInputBuffer:[B

    iget v7, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->bufferSizeBytes:I

    invoke-virtual {v5, v6, v7}, Lcom/audible/sdk/AudibleSDK;->getPCMAudio([BI)I

    move-result v5

    if-gtz v5, :cond_4

    .line 1308
    iget-object v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v4, "Bytes written to buffer {}, buffers  decoded ahead {}"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->buffersDecodedAhead:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-interface {v2, v4, v5, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1309
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->flush()V

    .line 1310
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->releaseGeneralPlaybackWakelock()V

    .line 1311
    sget-object v2, Lcom/audible/mobile/player/Error;->INTERNAL_PLAYER:Lcom/audible/mobile/player/Error;

    invoke-direct {p0, v2}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->transitionToErrorState(Lcom/audible/mobile/player/Error;)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/audible/sdk/AudibleSDKException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1312
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return v1

    .line 1315
    :cond_4
    :try_start_4
    sget-object v6, Lcom/audible/mobile/player/NarrationSpeed;->NORMAL:Lcom/audible/mobile/player/NarrationSpeed;

    iget-object v7, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->tempo:Lcom/audible/mobile/player/NarrationSpeed;

    invoke-virtual {v6, v7}, Lcom/audible/mobile/player/NarrationSpeed;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1316
    iget-object v4, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sonicInputBuffer:[B

    iget-object v5, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sonicOutputBuffer:[B

    iget v6, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->bufferSizeBytes:I

    invoke-static {v4, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1317
    iget v4, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->bufferSizeBytes:I

    goto :goto_0

    .line 1319
    :cond_5
    iget-object v6, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sonic:Lsonic/Sonic;

    iget-object v7, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sonicInputBuffer:[B

    invoke-virtual {v6, v7, v5}, Lsonic/Sonic;->writeBytesToStream([BI)V

    .line 1320
    iget v5, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->bufferSizeBytes:I

    sub-int/2addr v5, v4

    .line 1321
    iget-object v6, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sonic:Lsonic/Sonic;

    iget-object v7, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sonicRemainderBuffer:[B

    invoke-virtual {v6, v7, v5}, Lsonic/Sonic;->readBytesFromStream([BI)I

    move-result v5

    .line 1322
    iget-object v6, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sonicRemainderBuffer:[B

    iget-object v7, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sonicOutputBuffer:[B

    invoke-static {v6, v1, v7, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v5

    .line 1326
    :goto_0
    iget v5, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->bufferSizeBytes:I

    if-lt v4, v5, :cond_1

    .line 1328
    iget-object v4, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sonicOutputBuffer:[B

    iget-object v5, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->byteData:[[B

    iget v6, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->currentReadBufferIndex:I

    aget-object v5, v5, v6

    iget v6, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->bufferSizeBytes:I

    invoke-static {v4, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1331
    iget-object v4, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->buffersDecodedAhead:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 1334
    iget v4, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->currentReadBufferIndex:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->currentReadBufferIndex:I

    if-lt v4, v2, :cond_6

    .line 1337
    iput v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->currentReadBufferIndex:I

    .line 1341
    :cond_6
    iget-object v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->buffersFilled:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/audible/sdk/AudibleSDKException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1363
    :try_start_5
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    .line 1360
    iget-object v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1361
    monitor-exit v0

    return v3

    :catch_0
    move-exception v1

    .line 1358
    invoke-direct {p0, v1}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->handleDecodeRuntimeException(Ljava/lang/RuntimeException;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catch_1
    move-exception v1

    .line 1355
    iget-object v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1356
    invoke-direct {p0, v1}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->handleAudibleSDKException(Lcom/audible/sdk/AudibleSDKException;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catch_2
    move-exception v2

    .line 1352
    iget-object v3, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v4, "{} while decoding frame"

    invoke-virtual {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1353
    monitor-exit v0

    return v1

    .line 1343
    :catch_3
    iget-object v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v3, "EOF reached"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 1344
    iget-object v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->readWriteThread:Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;

    invoke-virtual {v2}, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->suspendDecoderThread()V

    .line 1345
    sget-object v2, Lcom/audible/mobile/player/State;->PLAYBACK_COMPLETED:Lcom/audible/mobile/player/State;

    invoke-virtual {p0, v2}, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->makeStateTransition(Lcom/audible/mobile/player/State;)V

    .line 1346
    monitor-exit v0

    return v1

    :catchall_1
    move-exception v1

    .line 1363
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method

.method protected doAuthenticateFile(Lcom/audible/mobile/identity/DeviceSerialNumber;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/identity/DeviceType;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;
    .locals 2

    const-string v0, "deviceId cannot be null"

    .line 817
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "directedCustomerId cannot be null"

    .line 818
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "deviceType cannot be null"

    .line 819
    invoke-static {p3, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 821
    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->FAILURE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    return-object p1

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v0}, Lcom/audible/sdk/AudibleSDK;->getFileType()Lcom/audible/sdk/AudibleSDK$FileType;

    move-result-object v0

    sget-object v1, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_AUDIBLE_CDN:Lcom/audible/sdk/AudibleSDK$FileType;

    if-ne v0, v1, :cond_1

    .line 826
    invoke-direct {p0, p1, p2, p3}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->authenticateCdnFile(Lcom/audible/mobile/identity/DeviceSerialNumber;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/identity/DeviceType;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    move-result-object p1

    return-object p1

    .line 829
    :cond_1
    iget-object p2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->activationDataRepository:Lcom/audible/mobile/activation/ActivationDataRepository;

    invoke-interface {p2}, Lcom/audible/mobile/activation/ActivationDataRepository;->queryActivationData()[B

    move-result-object p2

    if-eqz p2, :cond_2

    .line 831
    array-length p3, p2

    if-nez p3, :cond_3

    .line 832
    :cond_2
    iget-object p3, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v0, "No activation data was provided"

    invoke-interface {p3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 836
    :cond_3
    :try_start_0
    iget-object p3, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lcom/audible/sdk/AudibleSDK;->authenticate([BLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 837
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    return-object p1

    .line 839
    :cond_4
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->FAILURE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;
    :try_end_0
    .catch Lcom/audible/sdk/DeviceNotActivatedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/audible/sdk/DeviceNotActivatedForThisFileException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 848
    :catch_0
    sget-object p1, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerDeviceNotActivatedForThisFile:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    invoke-direct {p0, p1}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)V

    .line 849
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->DEVICE_NOT_ACTIVATED_FOR_THIS_FILE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    return-object p1

    .line 843
    :catch_1
    sget-object p1, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerDeviceNotActivated:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    invoke-direct {p0, p1}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)V

    .line 844
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->DEVICE_NOT_ACTIVATED:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    return-object p1
.end method

.method protected doGetCurrentPosition()I
    .locals 6

    .line 577
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->SEEK_GET_PCM_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 579
    :try_start_0
    invoke-virtual {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->getState()Lcom/audible/mobile/player/State;

    move-result-object v1

    sget-object v2, Lcom/audible/mobile/player/State;->PLAYBACK_COMPLETED:Lcom/audible/mobile/player/State;

    if-ne v1, v2, :cond_0

    .line 580
    iget-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v1}, Lcom/audible/sdk/AudibleSDK;->getDuration()I

    move-result v1

    goto :goto_0

    .line 582
    :cond_0
    iget-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v1}, Lcom/audible/sdk/AudibleSDK;->getPlaybackPosition()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 585
    :try_start_1
    iget-object v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, -0x1

    .line 587
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 593
    :try_start_2
    invoke-virtual {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->getTimeDecodedAhead()J

    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    int-to-long v4, v1

    cmp-long v0, v4, v2

    if-ltz v0, :cond_1

    sub-long/2addr v4, v2

    long-to-int v1, v4

    :cond_1
    return v1

    :catchall_1
    move-exception v0

    .line 604
    iget-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0

    :catchall_2
    move-exception v1

    .line 587
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method

.method protected doGetDuration()I
    .locals 5

    .line 554
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v0}, Lcom/audible/sdk/AudibleSDK;->getDuration()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 556
    iget-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "{} getting duration from SDK, returning {}"

    invoke-interface {v1, v4, v0, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2
.end method

.method protected doGetVolume()F
    .locals 1

    .line 612
    iget v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->volume:F

    return v0
.end method

.method protected doNotifyError(Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V
    .locals 1

    .line 1256
    iget-object p2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v0, "Notify audio player event listeners : ERROR ({})"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1258
    iget-object p2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->eventListeners:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/player/audio/AudiobookPlayerEventListener;

    .line 1259
    invoke-interface {v0, p1}, Lcom/audible/mobile/player/audio/AudiobookPlayerEventListener;->onError(Lcom/audible/mobile/player/Error;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected declared-synchronized doPause()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;
    .locals 2

    monitor-enter p0

    .line 1082
    :try_start_0
    invoke-virtual {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->getCurrentPosition()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1085
    :try_start_1
    iget-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->track:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->pause()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1090
    :try_start_2
    sget-object v1, Lcom/audible/mobile/player/State;->PAUSED:Lcom/audible/mobile/player/State;

    invoke-virtual {p0, v1}, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->makeStateTransition(Lcom/audible/mobile/player/State;)V

    .line 1093
    invoke-direct {p0, v0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sdkSeek(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    .line 1095
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->releaseGeneralPlaybackWakelock()V

    .line 1097
    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1087
    :catch_0
    :try_start_3
    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;->FAILURE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected doPrepareAsync(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;
    .locals 0

    .line 618
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sdkSeek(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 619
    invoke-virtual {p0, p1}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->setVolume(F)Z

    .line 620
    sget-object p1, Lcom/audible/mobile/player/State;->PREPARED:Lcom/audible/mobile/player/State;

    invoke-virtual {p0, p1}, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->makeStateTransition(Lcom/audible/mobile/player/State;)V

    .line 621
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;->SUCCESS_ASYNC:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    return-object p1
.end method

.method protected declared-synchronized doSeekTo(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;
    .locals 7

    monitor-enter p0

    .line 1138
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Seeking to {}"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1140
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->flush()V

    .line 1142
    invoke-virtual {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->isPlaying()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    int-to-long v2, p1

    .line 1144
    :try_start_1
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->getTimeDecodedAhead()J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-int p1, v2

    .line 1146
    invoke-virtual {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->getDuration()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1147
    invoke-virtual {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->getDuration()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr p1, v1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1151
    :try_start_2
    iget-object v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1155
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sdkSeek(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    move-result-object v0

    .line 1157
    sget-object v2, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$SeekResult:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v1, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1171
    :cond_1
    iget-object v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v4, "Attempted to seek to position {}, when only position {} was available.  Duration: {}"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v6

    invoke-virtual {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->getTimeAvailable()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    invoke-virtual {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->getDuration()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v3

    invoke-interface {v2, v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1172
    invoke-virtual {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->pause()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;

    .line 1173
    iget-object p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->readWriteThread:Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;

    invoke-virtual {p1}, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->suspendDecoderThread()V

    goto :goto_1

    .line 1159
    :cond_2
    invoke-virtual {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->getDuration()I

    move-result v1

    if-ge p1, v1, :cond_3

    invoke-virtual {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->getState()Lcom/audible/mobile/player/State;

    move-result-object p1

    sget-object v1, Lcom/audible/mobile/player/State;->PLAYBACK_COMPLETED:Lcom/audible/mobile/player/State;

    if-ne p1, v1, :cond_5

    .line 1160
    :cond_3
    invoke-virtual {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->getState()Lcom/audible/mobile/player/State;

    move-result-object p1

    sget-object v1, Lcom/audible/mobile/player/State;->PLAYBACK_COMPLETED:Lcom/audible/mobile/player/State;

    if-eq p1, v1, :cond_4

    .line 1161
    iget-object p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-direct {p0, p1}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->notifyCompletion(Lcom/audible/mobile/player/AudioDataSource;)V

    .line 1163
    :cond_4
    sget-object p1, Lcom/audible/mobile/player/State;->PREPARED:Lcom/audible/mobile/player/State;

    invoke-virtual {p0, p1}, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->makeStateTransition(Lcom/audible/mobile/player/State;)V

    .line 1166
    :cond_5
    invoke-virtual {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_6

    .line 1167
    invoke-virtual {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->getCurrentPosition()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->notifyPlaybackPositionChange(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1177
    :cond_6
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected doSetDataSource(Lcom/audible/mobile/player/AudioDataSource;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;
    .locals 6

    if-nez p1, :cond_0

    .line 864
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->FAILURE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    return-object p1

    .line 867
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 869
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 870
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->UNSUPPORTED_FILE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    return-object p1

    .line 873
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 874
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->FILE_NOT_FOUND:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    return-object p1

    .line 877
    :cond_2
    iget-object p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->renamableAudioFileObserver:Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;

    if-eqz p1, :cond_3

    .line 878
    invoke-virtual {p1}, Landroid/os/FileObserver;->stopWatching()V

    .line 880
    :cond_3
    invoke-static {v0, p0}, Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;->getNewInstance(Ljava/io/File;Lcom/audible/mobile/player/audio/FileRenameEventListener;)Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->renamableAudioFileObserver:Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;

    .line 884
    sget-object p1, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerSetDataSource:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    invoke-direct {p0, p1}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->getAndStartTimerMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)Lcom/audible/mobile/metric/domain/TimerMetric;

    move-result-object p1

    const/4 v1, 0x0

    .line 889
    :try_start_0
    iget-object v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->positionFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/audible/sdk/AudibleSDK;->openFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 890
    iget-object v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->timeAvailableSdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->positionFilePath:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/audible/sdk/AudibleSDK;->openFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 892
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v0}, Lcom/audible/sdk/AudibleSDK;->getAudioChannelCount()I

    move-result v0

    .line 893
    iget-object v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v2}, Lcom/audible/sdk/AudibleSDK;->getPCMSamplesPerCodecFrame()I

    move-result v2

    iput v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->pcmSamplesPerCodecFrame:I

    mul-int/lit8 v2, v0, 0x2

    .line 896
    iget-object v3, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v3}, Lcom/audible/sdk/AudibleSDK;->getSampleRate()I

    move-result v3

    iput v3, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sampleRate:I

    .line 897
    iget v3, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->pcmSamplesPerCodecFrame:I

    mul-int v3, v3, v0

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->bytesPerPeriod:I

    .line 898
    div-int v2, v3, v2

    iput v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->framesPerPeriod:I

    const/16 v2, 0x30

    mul-int/lit8 v3, v3, 0x30

    .line 899
    iput v3, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->minimumBufferSize:I

    if-ne v0, v4, :cond_4

    const/16 v0, 0xc

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    .line 900
    :goto_0
    iput v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->audioTrackConfig:I

    .line 901
    iget v3, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sampleRate:I

    invoke-static {v3, v0, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->minimumTrackBufferSize:I

    .line 902
    iget v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->bytesPerPeriod:I

    iput v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->bufferSizeBytes:I

    new-array v3, v4, [I

    const/4 v4, 0x1

    aput v0, v3, v4

    const/4 v0, 0x0

    aput v2, v3, v0

    .line 903
    const-class v2, B

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    iput-object v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->byteData:[[B

    .line 905
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->configureSonic()V

    .line 906
    iget v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->bufferSizeBytes:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sonicInputBuffer:[B

    .line 907
    iget v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->bufferSizeBytes:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sonicOutputBuffer:[B

    .line 908
    iget v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->bufferSizeBytes:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sonicRemainderBuffer:[B

    .line 910
    iget-object v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v2}, Lcom/audible/sdk/AudibleSDK;->getFileType()Lcom/audible/sdk/AudibleSDK$FileType;

    move-result-object v2
    :try_end_0
    .catch Lcom/audible/sdk/AudibleSDKException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/audible/sdk/UnsupportedFileFormatException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 912
    :try_start_1
    sget-object v3, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_AUDIBLE_AUDIOBOOK:Lcom/audible/sdk/AudibleSDK$FileType;

    if-eq v2, v3, :cond_5

    sget-object v3, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_AUDIBLE_FORMAT4:Lcom/audible/sdk/AudibleSDK$FileType;

    if-eq v2, v3, :cond_5

    sget-object v3, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_AUDIBLE_CDN:Lcom/audible/sdk/AudibleSDK$FileType;

    if-eq v2, v3, :cond_5

    .line 915
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Tried to load unsupported file type {}"

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 917
    invoke-interface {p1}, Lcom/audible/mobile/metric/domain/TimerMetric;->stop()V

    .line 919
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->releaseSdk()V

    .line 920
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->UNSUPPORTED_FILE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    return-object p1

    .line 925
    :cond_5
    sget-object v3, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_AUDIBLE_AUDIOBOOK:Lcom/audible/sdk/AudibleSDK$FileType;

    if-ne v2, v3, :cond_6

    .line 926
    sget-object v3, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerFileTypeCdsAax:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    goto :goto_1

    .line 927
    :cond_6
    sget-object v3, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_AUDIBLE_CDN:Lcom/audible/sdk/AudibleSDK$FileType;

    if-ne v2, v3, :cond_7

    .line 928
    sget-object v3, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerFileTypeCdnAax:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    goto :goto_1

    .line 930
    :cond_7
    sget-object v3, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerFileTypeAaf4:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    .line 933
    :goto_1
    invoke-direct {p0, v3}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)V
    :try_end_1
    .catch Lcom/audible/sdk/AudibleSDKException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/audible/sdk/UnsupportedFileFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 936
    :try_start_2
    iget-object v3, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v3}, Lcom/audible/sdk/AudibleSDK;->getPlaybackPosition()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_8

    .line 942
    invoke-virtual {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->getDuration()I

    move-result v4

    add-int/lit16 v4, v4, -0x3e8

    if-lt v3, v4, :cond_9

    .line 943
    :cond_8
    iget-object v3, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v3, v0}, Lcom/audible/sdk/AudibleSDK;->seek(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    .line 946
    :try_start_3
    iget-object v4, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v5, "{} exception setting playback position"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 950
    :cond_9
    :goto_2
    iget-object v3, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v3}, Lcom/audible/sdk/AudibleSDK;->getChapterCount()I

    move-result v3

    if-nez v3, :cond_a

    .line 953
    iput-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->chapterOffsets:[J

    goto/16 :goto_c

    .line 956
    :cond_a
    new-array v1, v3, [J

    iput-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->chapterOffsets:[J

    :goto_3
    if-ge v0, v3, :cond_17

    .line 959
    iget-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->chapterOffsets:[J

    iget-object v4, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v4, v0}, Lcom/audible/sdk/AudibleSDK;->getChapterStartTime(I)I

    move-result v4

    int-to-long v4, v4

    aput-wide v4, v1, v0
    :try_end_3
    .catch Lcom/audible/sdk/AudibleSDKException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/audible/sdk/UnsupportedFileFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v1, v2

    goto/16 :goto_a

    :catch_4
    move-exception v0

    .line 1021
    :goto_4
    sget-object v2, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_AUDIBLE_AUDIOBOOK:Lcom/audible/sdk/AudibleSDK$FileType;

    if-ne v1, v2, :cond_b

    .line 1022
    sget-object v1, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerCdsAaxFileUnknownException:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    goto :goto_5

    .line 1023
    :cond_b
    sget-object v2, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_AUDIBLE_CDN:Lcom/audible/sdk/AudibleSDK$FileType;

    if-ne v1, v2, :cond_c

    .line 1024
    sget-object v1, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerCdnAaxFileUnknownException:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    goto :goto_5

    .line 1025
    :cond_c
    sget-object v2, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_AUDIBLE_FORMAT4:Lcom/audible/sdk/AudibleSDK$FileType;

    if-ne v1, v2, :cond_d

    .line 1026
    sget-object v1, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerFormat4FileUnknownException:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    goto :goto_5

    .line 1028
    :cond_d
    sget-object v1, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerUnkownFileUnknownException:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    .line 1031
    :goto_5
    invoke-direct {p0, v1, v0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->recordExceptionMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Ljava/lang/Throwable;)V

    .line 1033
    invoke-interface {p1}, Lcom/audible/mobile/metric/domain/TimerMetric;->stop()V

    .line 1035
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->handleDoSetDataSourceException()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    move-result-object p1

    return-object p1

    :catch_5
    move-exception v0

    .line 1003
    :goto_6
    sget-object v2, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_AUDIBLE_AUDIOBOOK:Lcom/audible/sdk/AudibleSDK$FileType;

    if-ne v1, v2, :cond_e

    .line 1004
    sget-object v1, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerCdsAaxFileUnsupportedFileFormatException:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    goto :goto_7

    .line 1005
    :cond_e
    sget-object v2, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_AUDIBLE_CDN:Lcom/audible/sdk/AudibleSDK$FileType;

    if-ne v1, v2, :cond_f

    .line 1006
    sget-object v1, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerCdnAaxFileUnsupportedFileFormatException:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    goto :goto_7

    .line 1007
    :cond_f
    sget-object v2, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_AUDIBLE_FORMAT4:Lcom/audible/sdk/AudibleSDK$FileType;

    if-ne v1, v2, :cond_10

    .line 1008
    sget-object v1, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerFormat4FileUnsupportedFileFormatException:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    goto :goto_7

    .line 1010
    :cond_10
    sget-object v1, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerUnknownFileUnsupportedFileFormatException:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    .line 1013
    :goto_7
    invoke-direct {p0, v1, v0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->recordExceptionMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Ljava/lang/Throwable;)V

    .line 1015
    invoke-interface {p1}, Lcom/audible/mobile/metric/domain/TimerMetric;->stop()V

    .line 1017
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->handleDoSetDataSourceException()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    move-result-object p1

    return-object p1

    :catch_6
    move-exception v0

    .line 985
    :goto_8
    sget-object v2, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_AUDIBLE_AUDIOBOOK:Lcom/audible/sdk/AudibleSDK$FileType;

    if-ne v1, v2, :cond_11

    .line 986
    sget-object v1, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerCdsAaxFileNotFoundException:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    goto :goto_9

    .line 987
    :cond_11
    sget-object v2, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_AUDIBLE_CDN:Lcom/audible/sdk/AudibleSDK$FileType;

    if-ne v1, v2, :cond_12

    .line 988
    sget-object v1, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerCdnAaxFileNotFoundException:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    goto :goto_9

    .line 989
    :cond_12
    sget-object v2, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_AUDIBLE_FORMAT4:Lcom/audible/sdk/AudibleSDK$FileType;

    if-ne v1, v2, :cond_13

    .line 990
    sget-object v1, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerFormat4FileNotFoundException:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    goto :goto_9

    .line 992
    :cond_13
    sget-object v1, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerUnknownFileNotFoundException:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    .line 995
    :goto_9
    invoke-direct {p0, v1, v0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->recordExceptionMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Ljava/lang/Throwable;)V

    .line 997
    invoke-interface {p1}, Lcom/audible/mobile/metric/domain/TimerMetric;->stop()V

    .line 999
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->handleDoSetDataSourceException()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    move-result-object p1

    return-object p1

    :catch_7
    move-exception v0

    .line 965
    :goto_a
    sget-object v2, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_AUDIBLE_AUDIOBOOK:Lcom/audible/sdk/AudibleSDK$FileType;

    if-ne v1, v2, :cond_14

    .line 966
    sget-object v1, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerCdsAaxFileAudibleSDKException:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    goto :goto_b

    .line 967
    :cond_14
    sget-object v2, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_AUDIBLE_CDN:Lcom/audible/sdk/AudibleSDK$FileType;

    if-ne v1, v2, :cond_15

    .line 968
    sget-object v1, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerCdnAaxFileAudibleSDKException:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    goto :goto_b

    .line 969
    :cond_15
    sget-object v2, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_AUDIBLE_FORMAT4:Lcom/audible/sdk/AudibleSDK$FileType;

    if-ne v1, v2, :cond_16

    .line 970
    sget-object v1, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerFormat4FileAudibleSDKException:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    goto :goto_b

    .line 972
    :cond_16
    sget-object v1, Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;->AudibleDrmPlayerUnknownFileAudibleSDKException:Lcom/audible/mobile/player/metric/AudibleDRMPlayerMetricNames;

    .line 975
    :goto_b
    invoke-direct {p0, v1, v0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->recordExceptionMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Ljava/lang/Throwable;)V

    .line 977
    invoke-direct {p0, v0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->handleAudibleSDKException(Lcom/audible/sdk/AudibleSDKException;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 978
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->releaseSdk()V

    .line 979
    invoke-interface {p1}, Lcom/audible/mobile/metric/domain/TimerMetric;->stop()V

    .line 980
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->UNSUPPORTED_FILE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    return-object p1

    .line 1038
    :cond_17
    :goto_c
    invoke-virtual {p0, p1}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->recordTimerMetric(Lcom/audible/mobile/metric/domain/TimerMetric;)V

    .line 1041
    sget-object p1, Lcom/audible/mobile/player/State;->PREPARING:Lcom/audible/mobile/player/State;

    invoke-virtual {p0, p1}, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->makeStateTransition(Lcom/audible/mobile/player/State;)V

    .line 1042
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    return-object p1
.end method

.method protected declared-synchronized doSetSpeed(Lcom/audible/mobile/player/NarrationSpeed;)V
    .locals 5

    monitor-enter p0

    .line 1216
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->tempo:Lcom/audible/mobile/player/NarrationSpeed;

    invoke-virtual {v0, p1}, Lcom/audible/mobile/player/NarrationSpeed;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_0

    .line 1217
    monitor-exit p0

    return-void

    .line 1220
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Setting tempo to {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1221
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->tempo:Lcom/audible/mobile/player/NarrationSpeed;

    .line 1223
    iget-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->SEEK_GET_PCM_LOCK:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1225
    :try_start_2
    invoke-virtual {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->pause()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;

    move-result-object v2

    const/4 v3, 0x0

    .line 1231
    invoke-direct {p0, v3}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->flush(Z)V

    .line 1232
    iget-object v3, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sonic:Lsonic/Sonic;

    invoke-virtual {p1}, Lcom/audible/mobile/player/NarrationSpeed;->asFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lsonic/Sonic;->setSpeed(F)V

    .line 1233
    invoke-direct {p0, v0, p1}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->notifyTempoChanged(Lcom/audible/mobile/player/NarrationSpeed;Lcom/audible/mobile/player/NarrationSpeed;)V

    .line 1234
    iput-object p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->tempo:Lcom/audible/mobile/player/NarrationSpeed;

    .line 1236
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->restartPlayback()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1237
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->releaseGeneralPlaybackWakelock()V

    .line 1240
    :cond_1
    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;

    if-ne v2, v0, :cond_2

    .line 1241
    invoke-virtual {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->start()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1244
    :try_start_3
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->releaseGeneralPlaybackWakelock()V

    .line 1245
    iget-object v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v3, "Error {} setting tempo to {}"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1247
    :cond_2
    :goto_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1248
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    .line 1247
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized doSetVolume(F)Z
    .locals 6

    monitor-enter p0

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmpl-double v5, v0, v2

    if-ltz v5, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v0, v2

    if-gtz v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    const-string v1, "Volume range is [0.0, 1.0]"

    .line 1190
    invoke-static {v0, v1}, Lcom/audible/mobile/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 1192
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Setting volume to {}"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1193
    iget v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->volume:F

    .line 1194
    iput p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->volume:F

    .line 1196
    iget-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->track:Landroid/media/AudioTrack;

    if-eqz v1, :cond_1

    .line 1197
    iget-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->track:Landroid/media/AudioTrack;

    invoke-virtual {v1, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 1200
    :cond_1
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_2

    .line 1201
    iget p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->volume:F

    invoke-direct {p0, v0, p1}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->notifyVolumeChanged(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1204
    :cond_2
    monitor-exit p0

    return v4

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized doStart()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;
    .locals 1

    monitor-enter p0

    .line 1055
    :try_start_0
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->createTrack()V

    .line 1057
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 1058
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->startPlayLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1059
    sget-object v0, Lcom/audible/mobile/player/State;->STARTED:Lcom/audible/mobile/player/State;

    invoke-virtual {p0, v0}, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->makeStateTransition(Lcom/audible/mobile/player/State;)V

    .line 1060
    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1062
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->releaseTrack()V

    .line 1063
    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;->COULD_NOT_READ_FILE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1067
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->releaseTrack()V

    .line 1068
    sget-object v0, Lcom/audible/mobile/player/Error;->INTERNAL_PLAYER:Lcom/audible/mobile/player/Error;

    invoke-direct {p0, v0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->transitionToErrorState(Lcom/audible/mobile/player/Error;)V

    .line 1069
    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;->ERROR_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized doStop()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StopResult;
    .locals 2

    monitor-enter p0

    .line 1110
    :try_start_0
    invoke-virtual {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->getCurrentPosition()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1113
    :try_start_1
    iget-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->track:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->pause()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1118
    :try_start_2
    sget-object v1, Lcom/audible/mobile/player/State;->STOPPED:Lcom/audible/mobile/player/State;

    invoke-virtual {p0, v1}, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->makeStateTransition(Lcom/audible/mobile/player/State;)V

    .line 1121
    invoke-direct {p0, v0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sdkSeek(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    .line 1123
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->releaseGeneralPlaybackWakelock()V

    .line 1125
    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StopResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StopResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1115
    :catch_0
    :try_start_3
    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StopResult;->FAILURE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StopResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAudiobookMetadata()Lcom/audible/mobile/audio/metadata/AudiobookMetadata;
    .locals 2

    .line 500
    invoke-virtual {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->isFileLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->audioMetadataProvider:Lcom/audible/mobile/audio/metadata/AudioMetadataProvider;

    iget-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-interface {v0, v1}, Lcom/audible/mobile/framework/Factory1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->stateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    invoke-interface {v0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->stateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    invoke-interface {v0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->getDuration()I

    move-result v0

    return v0
.end method

.method protected getNumberOfBuffersFilled()J
    .locals 2

    .line 1270
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->buffersFilled:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getState()Lcom/audible/mobile/player/State;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->stateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    invoke-interface {v0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->getState()Lcom/audible/mobile/player/State;

    move-result-object v0

    return-object v0
.end method

.method public getTimeAvailable()I
    .locals 6

    .line 507
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->timeAvailableSdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v0}, Lcom/audible/sdk/AudibleSDK;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 509
    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 510
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "No file loaded, time available is 0"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return v2

    .line 514
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 516
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 520
    :try_start_0
    iget-object v3, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->timeAvailableSdk:Lcom/audible/sdk/AudibleSDK;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :try_start_1
    iget-object v4, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->timeAvailableSdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v4, v0, v1}, Lcom/audible/sdk/AudibleSDK;->byteOffsetToTimeOffset(J)I

    move-result v2

    .line 522
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v3

    .line 524
    iget-object v4, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Native exception getting time available {}, time available will be 0"

    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 527
    :goto_0
    iget-object v3, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "Bytes available {}, time available {}"

    invoke-interface {v3, v4, v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2
.end method

.method public getVolume()F
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->stateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    invoke-interface {v0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->getVolume()F

    move-result v0

    return v0
.end method

.method protected handleDecodeError()Z
    .locals 2

    .line 1422
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->readWriteThread:Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;

    invoke-virtual {v0}, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->suspendDecoderThread()V

    .line 1424
    invoke-virtual {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->getState()Lcom/audible/mobile/player/State;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/player/State;->ERROR:Lcom/audible/mobile/player/State;

    if-ne v0, v1, :cond_0

    .line 1425
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->flush()V

    .line 1426
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->releaseGeneralPlaybackWakelock()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isFileLoaded()Z
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v0}, Lcom/audible/sdk/AudibleSDK;->isFileLoaded()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->stateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    invoke-interface {v0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->readWriteThread:Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;

    invoke-virtual {v0}, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->exit()V

    return-void
.end method

.method public onFileRenamed(Ljava/io/File;Ljava/io/File;)V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "File renamed event has fired"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v1}, Lcom/audible/sdk/AudibleSDK;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Renaming SDK file"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/sdk/AudibleSDK;->justSetFileName(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->timeAvailableSdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/sdk/AudibleSDK;->justSetFileName(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->renamableAudioFileObserver:Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 343
    invoke-direct {p0, p1, p2}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->notifyFileRenamed(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    .line 346
    :cond_0
    iget-object p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->logger:Lorg/slf4j/Logger;

    const-string p2, "fileRenamed called, but file names don\'t match!"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public pause()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->stateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    invoke-interface {v0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->pause()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;

    move-result-object v0

    return-object v0
.end method

.method public prepare(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->stateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->prepare(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    move-result-object p1

    return-object p1
.end method

.method public recordTimerMetric(Lcom/audible/mobile/metric/domain/TimerMetric;)V
    .locals 1

    const-string v0, "time metric cannot be null"

    .line 2101
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2102
    invoke-interface {p1}, Lcom/audible/mobile/metric/domain/TimerMetric;->stop()V

    .line 2103
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-interface {v0, p1}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/DurationMetric;)V

    return-void
.end method

.method public removeOnPlayerEventListener(Lcom/audible/mobile/player/audio/AudiobookPlayerEventListener;)Z
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->eventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 534
    :try_start_0
    invoke-direct {p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->releaseTrack()V

    .line 535
    sget-object v0, Lcom/audible/mobile/player/State;->IDLE:Lcom/audible/mobile/player/State;

    invoke-virtual {p0, v0}, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->makeStateTransition(Lcom/audible/mobile/player/State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public seekTo(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->stateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->seekTo(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    move-result-object p1

    return-object p1
.end method

.method public setDataSource(Lcom/audible/mobile/player/AudioDataSource;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;
    .locals 1

    .line 392
    iput-object p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    .line 393
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->stateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->setDataSource(Lcom/audible/mobile/player/AudioDataSource;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    move-result-object p1

    return-object p1
.end method

.method public setSpeed(Lcom/audible/mobile/player/NarrationSpeed;)V
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->stateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->setSpeed(Lcom/audible/mobile/player/NarrationSpeed;)V

    return-void
.end method

.method public setVolume(F)Z
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->stateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->setVolume(F)Z

    move-result p1

    return p1
.end method

.method public start()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->stateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    invoke-interface {v0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->start()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    move-result-object v0

    return-object v0
.end method

.method public stop()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StopResult;
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->stateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    invoke-interface {v0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->stop()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StopResult;

    move-result-object v0

    return-object v0
.end method

.method public volumeBoost(Z)V
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->loudnessEnhancerAudioEffect:Landroid/media/audiofx/AudioEffect;

    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {v0, p1}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->playerSharedPreferences:Lcom/audible/mobile/player/PlayerSettingsProvider;

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/PlayerSettingsProvider;->setVolumeBoost(Z)V

    return-void
.end method
