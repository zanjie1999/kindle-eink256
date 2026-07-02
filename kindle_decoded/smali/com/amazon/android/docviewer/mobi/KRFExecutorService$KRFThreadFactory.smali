.class final Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFThreadFactory;
.super Ljava/lang/Object;
.source "KRFExecutorService.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/mobi/KRFExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KRFThreadFactory"
.end annotation


# static fields
.field private static final name:Ljava/lang/String; = "KRF-Thread"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$1;)V
    .locals 0

    .line 342
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFThreadFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .line 346
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    const-string v2, "KRF-Thread"

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->access$702(J)J

    return-object v0
.end method
