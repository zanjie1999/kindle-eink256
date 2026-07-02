.class public abstract Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$PageRequestRunnable;
.super Ljava/lang/Object;
.source "ThumbnailServiceClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PageRequestRunnable"
.end annotation


# instance fields
.field private final pageIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$PageRequestRunnable;->pageIndex:I

    return-void
.end method


# virtual methods
.method public getPageIndex()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$PageRequestRunnable;->pageIndex:I

    return v0
.end method
