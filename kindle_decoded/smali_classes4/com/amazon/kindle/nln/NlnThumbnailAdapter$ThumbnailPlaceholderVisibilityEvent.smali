.class public Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ThumbnailPlaceholderVisibilityEvent;
.super Ljava/lang/Object;
.source "NlnThumbnailAdapter.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/nln/NlnThumbnailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThumbnailPlaceholderVisibilityEvent"
.end annotation


# instance fields
.field public final areShown:Z


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/NlnThumbnailAdapter;Z)V
    .locals 0

    .line 1374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1375
    iput-boolean p2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ThumbnailPlaceholderVisibilityEvent;->areShown:Z

    return-void
.end method


# virtual methods
.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
