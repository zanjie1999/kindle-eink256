.class Lcom/amazon/kcp/application/AnnotationCache$BookRecord;
.super Ljava/lang/Object;
.source "AnnotationCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/AnnotationCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BookRecord"
.end annotation


# instance fields
.field private final annotations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;",
            ">;"
        }
    .end annotation
.end field

.field private revision:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1805
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$BookRecord;->annotations:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/application/AnnotationCache$1;)V
    .locals 0

    .line 1804
    invoke-direct {p0}, Lcom/amazon/kcp/application/AnnotationCache$BookRecord;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/kcp/application/AnnotationCache$BookRecord;)Ljava/util/Set;
    .locals 0

    .line 1804
    iget-object p0, p0, Lcom/amazon/kcp/application/AnnotationCache$BookRecord;->annotations:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/kcp/application/AnnotationCache$BookRecord;)J
    .locals 2

    .line 1804
    iget-wide v0, p0, Lcom/amazon/kcp/application/AnnotationCache$BookRecord;->revision:J

    return-wide v0
.end method

.method static synthetic access$708(Lcom/amazon/kcp/application/AnnotationCache$BookRecord;)J
    .locals 4

    .line 1804
    iget-wide v0, p0, Lcom/amazon/kcp/application/AnnotationCache$BookRecord;->revision:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/amazon/kcp/application/AnnotationCache$BookRecord;->revision:J

    return-wide v0
.end method
