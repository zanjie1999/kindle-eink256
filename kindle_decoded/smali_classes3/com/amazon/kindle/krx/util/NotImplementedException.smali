.class public Lcom/amazon/kindle/krx/util/NotImplementedException;
.super Ljava/lang/UnsupportedOperationException;
.source "NotImplementedException.java"


# static fields
.field private static final NOT_IMPLEMENTED_MSG:Ljava/lang/String; = "Method not implemented - KRX commons base class!"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Method not implemented - KRX commons base class!"

    .line 15
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-void
.end method
