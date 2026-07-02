.class public final Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;
.super Ljava/lang/Object;
.source "ILocalBookInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/model/content/ILocalBookInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServerLastPageReadDesc"
.end annotation


# instance fields
.field public final localTimeOffset:I

.field public final lprSetTime:J

.field public final position:I

.field public final sourceDeviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/services/library/CServerLPRCacheFile;)V
    .locals 6

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->position:I

    .line 30
    invoke-virtual {p1}, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 45
    iput-object v5, p0, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->sourceDeviceName:Ljava/lang/String;

    .line 46
    iput-wide v3, p0, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->lprSetTime:J

    .line 47
    iput v2, p0, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->localTimeOffset:I

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->getSourceDevice()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->sanitizeSourceDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->sourceDeviceName:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->getLprSetTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->lprSetTime:J

    .line 41
    invoke-virtual {p1}, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->getLocalTimeOffset()I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->localTimeOffset:I

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->sanitizeMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    iput-object v5, p0, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->sourceDeviceName:Ljava/lang/String;

    .line 34
    iput-wide v3, p0, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->lprSetTime:J

    .line 35
    iput v2, p0, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->localTimeOffset:I

    :goto_0
    return-void
.end method

.method private static sanitizeMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 75
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "{0}"

    .line 78
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "{1}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static sanitizeSourceDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
