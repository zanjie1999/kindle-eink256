.class public Lcom/amazon/whispersync/com/google/inject/internal/util/$Join$JoinException;
.super Ljava/lang/RuntimeException;
.source "Join.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$Join;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JoinException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>(Ljava/io/IOException;)V
    .locals 0

    .line 310
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/IOException;Lcom/amazon/whispersync/com/google/inject/internal/util/$Join$1;)V
    .locals 0

    .line 308
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Join$JoinException;-><init>(Ljava/io/IOException;)V

    return-void
.end method
