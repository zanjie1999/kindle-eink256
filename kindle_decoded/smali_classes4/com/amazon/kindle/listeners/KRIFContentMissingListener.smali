.class public Lcom/amazon/kindle/listeners/KRIFContentMissingListener;
.super Ljava/lang/Object;
.source "KRIFContentMissingListener.java"

# interfaces
.implements Lcom/amazon/krf/platform/ContentMissingListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final contentAvailabilityController:Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/amazon/kindle/listeners/KRIFContentMissingListener;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/listeners/KRIFContentMissingListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/kindle/listeners/KRIFContentMissingListener;->contentAvailabilityController:Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;

    return-void
.end method


# virtual methods
.method public onContentMissing(Ljava/lang/String;Lcom/amazon/krf/platform/ContentMissingListener$NotificationPriority;)V
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KRF Direct reported "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " missing with priority "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez p1, :cond_0

    .line 27
    sget-object p1, Lcom/amazon/kindle/listeners/KRIFContentMissingListener;->TAG:Ljava/lang/String;

    const-string p2, "Container Id is passed as null"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    .line 31
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 32
    iget-object p2, p0, Lcom/amazon/kindle/listeners/KRIFContentMissingListener;->contentAvailabilityController:Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;->areAllAssetsAttached(Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 35
    iget-object p2, p0, Lcom/amazon/kindle/listeners/KRIFContentMissingListener;->contentAvailabilityController:Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;->prioritizeAssetDownloads(Ljava/util/List;)V

    :cond_1
    return-void
.end method
