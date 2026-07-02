.class Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider$CacheEntry;
.super Ljava/lang/Object;
.source "SidecarPageNumberProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheEntry"
.end annotation


# instance fields
.field volatile ordinalPage:I

.field volatile position:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider$1;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider$CacheEntry;-><init>()V

    return-void
.end method
