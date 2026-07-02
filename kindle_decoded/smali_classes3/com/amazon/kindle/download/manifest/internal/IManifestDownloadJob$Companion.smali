.class public final Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Companion;
.super Ljava/lang/Object;
.source "IManifestDownloadJob.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Companion;

.field private static xAdpCallAfter:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Companion;

    invoke-direct {v0}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Companion;-><init>()V

    sput-object v0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Companion;->$$INSTANCE:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Companion;

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Companion;->xAdpCallAfter:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getXAdpCallAfter()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Companion;->xAdpCallAfter:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method
