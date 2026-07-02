.class public Lcom/amazon/kindle/content/dao/ResultsLimit;
.super Ljava/lang/Object;
.source "ResultsLimit.java"


# static fields
.field public static final NO_LIMIT:Lcom/amazon/kindle/content/dao/ResultsLimit;


# instance fields
.field private final offset:I

.field private final sizeLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/amazon/kindle/content/dao/ResultsLimit;

    invoke-direct {v0}, Lcom/amazon/kindle/content/dao/ResultsLimit;-><init>()V

    sput-object v0, Lcom/amazon/kindle/content/dao/ResultsLimit;->NO_LIMIT:Lcom/amazon/kindle/content/dao/ResultsLimit;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    .line 23
    invoke-direct {p0, v0, v0}, Lcom/amazon/kindle/content/dao/ResultsLimit;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, -0x1

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/content/dao/ResultsLimit;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/amazon/kindle/content/dao/ResultsLimit;->sizeLimit:I

    .line 32
    iput p2, p0, Lcom/amazon/kindle/content/dao/ResultsLimit;->offset:I

    return-void
.end method


# virtual methods
.method public getSizeLimit()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/amazon/kindle/content/dao/ResultsLimit;->sizeLimit:I

    return v0
.end method

.method public getSqlLimitParameter()Ljava/lang/String;
    .locals 5

    .line 55
    iget v0, p0, Lcom/amazon/kindle/content/dao/ResultsLimit;->sizeLimit:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_0
    iget v1, p0, Lcom/amazon/kindle/content/dao/ResultsLimit;->offset:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_1

    .line 61
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    iget v1, p0, Lcom/amazon/kindle/content/dao/ResultsLimit;->sizeLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v3

    const-string v1, "%d,%d"

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 63
    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "%d"

    invoke-static {v1, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
