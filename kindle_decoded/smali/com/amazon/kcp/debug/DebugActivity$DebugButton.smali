.class public abstract Lcom/amazon/kcp/debug/DebugActivity$DebugButton;
.super Ljava/lang/Object;
.source "DebugActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/debug/DebugActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DebugButton"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getButtonText(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract onClick()V
.end method
