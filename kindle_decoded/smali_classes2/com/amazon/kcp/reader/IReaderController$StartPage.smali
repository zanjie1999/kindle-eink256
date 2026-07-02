.class public abstract Lcom/amazon/kcp/reader/IReaderController$StartPage;
.super Ljava/lang/Object;
.source "IReaderController.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/IReaderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StartPage"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract accept(Lcom/amazon/kcp/reader/IReaderController$StartPageVisitor;)V
.end method
