.class public Lcom/audible/mobile/activation/network/ActivationRequest$Key;
.super Ljava/lang/Object;
.source "ActivationRequest.java"

# interfaces
.implements Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/activation/network/ActivationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# instance fields
.field private final data:Lcom/audible/mobile/activation/network/factory/ActivationRequestData;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/activation/network/factory/ActivationRequestData;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/audible/mobile/activation/network/ActivationRequest$Key;->data:Lcom/audible/mobile/activation/network/factory/ActivationRequestData;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 44
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/audible/mobile/activation/network/ActivationRequest$Key;

    if-eq v1, v2, :cond_2

    return v0

    .line 48
    :cond_2
    check-cast p1, Lcom/audible/mobile/activation/network/ActivationRequest$Key;

    .line 50
    iget-object v0, p0, Lcom/audible/mobile/activation/network/ActivationRequest$Key;->data:Lcom/audible/mobile/activation/network/factory/ActivationRequestData;

    iget-object p1, p1, Lcom/audible/mobile/activation/network/ActivationRequest$Key;->data:Lcom/audible/mobile/activation/network/factory/ActivationRequestData;

    invoke-virtual {v0, p1}, Lcom/audible/mobile/activation/network/factory/ActivationRequestData;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/audible/mobile/activation/network/ActivationRequest$Key;->data:Lcom/audible/mobile/activation/network/factory/ActivationRequestData;

    invoke-virtual {v0}, Lcom/audible/mobile/activation/network/factory/ActivationRequestData;->hashCode()I

    move-result v0

    return v0
.end method
