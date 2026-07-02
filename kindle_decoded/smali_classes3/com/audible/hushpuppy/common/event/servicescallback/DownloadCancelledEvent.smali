.class public Lcom/audible/hushpuppy/common/event/servicescallback/DownloadCancelledEvent;
.super Ljava/lang/Object;
.source "DownloadCancelledEvent.java"


# instance fields
.field private asin:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadCancelledEvent;->asin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAsin()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadCancelledEvent;->asin:Ljava/lang/String;

    return-object v0
.end method
