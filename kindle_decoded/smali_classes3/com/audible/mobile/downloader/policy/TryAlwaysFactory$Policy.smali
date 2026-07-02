.class public Lcom/audible/mobile/downloader/policy/TryAlwaysFactory$Policy;
.super Ljava/lang/Object;
.source "TryAlwaysFactory.java"

# interfaces
.implements Lcom/audible/mobile/downloader/policy/RetryPolicy;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/downloader/policy/TryAlwaysFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Policy"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canRetry()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onInterrupted()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method
