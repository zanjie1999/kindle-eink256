.class public final Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;
.super Ljava/lang/Object;
.source "ManifestRequestParams.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/download/manifest/TodoDownloadProperties$Factory;
    }
.end annotation


# static fields
.field public static final Factory:Lcom/amazon/kindle/download/manifest/TodoDownloadProperties$Factory;


# instance fields
.field private final correlationId:Ljava/lang/String;

.field private final excludedTransportMethod:Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

.field private final forced:Z

.field private final silentUpdate:Z

.field private final url:Ljava/lang/String;

.field private final urlContext:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties$Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties$Factory;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->Factory:Lcom/amazon/kindle/download/manifest/TodoDownloadProperties$Factory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->urlContext:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->correlationId:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->forced:Z

    iput-boolean p5, p0, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->silentUpdate:Z

    iput-object p6, p0, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->excludedTransportMethod:Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->url:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->urlContext:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->urlContext:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->correlationId:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->correlationId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->forced:Z

    iget-boolean v1, p1, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->forced:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->silentUpdate:Z

    iget-boolean v1, p1, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->silentUpdate:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->excludedTransportMethod:Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    iget-object p1, p1, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->excludedTransportMethod:Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getCorrelationId()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->correlationId:Ljava/lang/String;

    return-object v0
.end method

.method public final getExcludedTransportMethod()Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->excludedTransportMethod:Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    return-object v0
.end method

.method public final getForced()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->forced:Z

    return v0
.end method

.method public final getSilentUpdate()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->silentUpdate:Z

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrlContext()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->urlContext:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->url:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->urlContext:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->correlationId:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->forced:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->silentUpdate:Z

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->excludedTransportMethod:Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TodoDownloadProperties(url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", urlContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->urlContext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", correlationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->correlationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", forced="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->forced:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", silentUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->silentUpdate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", excludedTransportMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->excludedTransportMethod:Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
