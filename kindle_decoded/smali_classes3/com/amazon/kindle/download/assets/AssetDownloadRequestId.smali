.class public final Lcom/amazon/kindle/download/assets/AssetDownloadRequestId;
.super Ljava/lang/Object;
.source "AssetDownloadRequestId.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/download/assets/AssetDownloadRequestId$Companion;
    }
.end annotation


# instance fields
.field private final serializedForm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/download/assets/AssetDownloadRequestId$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/download/assets/AssetDownloadRequestId$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "bookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequestId;->serializedForm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 34
    instance-of v0, p1, Lcom/amazon/kindle/download/assets/AssetDownloadRequestId;

    if-eqz v0, :cond_0

    .line 35
    check-cast p1, Lcom/amazon/kindle/download/assets/AssetDownloadRequestId;

    iget-object p1, p1, Lcom/amazon/kindle/download/assets/AssetDownloadRequestId;->serializedForm:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequestId;->serializedForm:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getSerializedForm()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequestId;->serializedForm:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequestId;->serializedForm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
