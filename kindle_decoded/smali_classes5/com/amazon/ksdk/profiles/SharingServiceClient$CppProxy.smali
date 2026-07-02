.class final Lcom/amazon/ksdk/profiles/SharingServiceClient$CppProxy;
.super Lcom/amazon/ksdk/profiles/SharingServiceClient;
.source "SharingServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ksdk/profiles/SharingServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CppProxy"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final nativeRef:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/amazon/ksdk/profiles/SharingServiceClient$CppProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/amazon/ksdk/profiles/SharingServiceClient$CppProxy;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 3

    .line 32
    invoke-direct {p0}, Lcom/amazon/ksdk/profiles/SharingServiceClient;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/ksdk/profiles/SharingServiceClient$CppProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 34
    iput-wide p1, p0, Lcom/amazon/ksdk/profiles/SharingServiceClient$CppProxy;->nativeRef:J

    return-void

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "nativeRef is zero"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private native nativeDestroy(J)V
.end method

.method private native native_getBookSharing(JLjava/lang/String;Lcom/amazon/ksdk/profiles/GetBookSharingCallback;)V
.end method

.method private native native_getSharedBooks(JLjava/lang/String;Ljava/util/ArrayList;Lcom/amazon/ksdk/profiles/GetSharedBooksCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/ksdk/profiles/GetSharedBooksCallback;",
            ")V"
        }
    .end annotation
.end method

.method private native native_setBookSharing(JLcom/amazon/ksdk/profiles/SharingRequestProperties;ZLcom/amazon/ksdk/profiles/SimpleRequestCallback;)V
.end method

.method private native native_shareBooks(JLcom/amazon/ksdk/profiles/SharingRequestProperties;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/amazon/ksdk/profiles/SimpleRequestCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/amazon/ksdk/profiles/SharingRequestProperties;",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/profiles/SharableResource;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/profiles/SharableResource;",
            ">;",
            "Lcom/amazon/ksdk/profiles/SimpleRequestCallback;",
            ")V"
        }
    .end annotation
.end method


# virtual methods
.method public _djinni_private_destroy()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/amazon/ksdk/profiles/SharingServiceClient$CppProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-wide v0, p0, Lcom/amazon/ksdk/profiles/SharingServiceClient$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/profiles/SharingServiceClient$CppProxy;->nativeDestroy(J)V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/ksdk/profiles/SharingServiceClient$CppProxy;->_djinni_private_destroy()V

    .line 48
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 52
    sget-object v1, Lcom/amazon/ksdk/profiles/SharingServiceClient$CppProxy;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught Exception: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getBookSharing(Ljava/lang/String;Lcom/amazon/ksdk/profiles/GetBookSharingCallback;)V
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/amazon/ksdk/profiles/SharingServiceClient$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/amazon/ksdk/profiles/SharingServiceClient$CppProxy;->native_getBookSharing(JLjava/lang/String;Lcom/amazon/ksdk/profiles/GetBookSharingCallback;)V

    return-void
.end method

.method public getSharedBooks(Ljava/lang/String;Ljava/util/ArrayList;Lcom/amazon/ksdk/profiles/GetSharedBooksCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/ksdk/profiles/GetSharedBooksCallback;",
            ")V"
        }
    .end annotation

    .line 84
    iget-wide v1, p0, Lcom/amazon/ksdk/profiles/SharingServiceClient$CppProxy;->nativeRef:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ksdk/profiles/SharingServiceClient$CppProxy;->native_getSharedBooks(JLjava/lang/String;Ljava/util/ArrayList;Lcom/amazon/ksdk/profiles/GetSharedBooksCallback;)V

    return-void
.end method

.method public setBookSharing(Lcom/amazon/ksdk/profiles/SharingRequestProperties;ZLcom/amazon/ksdk/profiles/SimpleRequestCallback;)V
    .locals 6

    .line 60
    iget-wide v1, p0, Lcom/amazon/ksdk/profiles/SharingServiceClient$CppProxy;->nativeRef:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ksdk/profiles/SharingServiceClient$CppProxy;->native_setBookSharing(JLcom/amazon/ksdk/profiles/SharingRequestProperties;ZLcom/amazon/ksdk/profiles/SimpleRequestCallback;)V

    return-void
.end method

.method public shareBooks(Lcom/amazon/ksdk/profiles/SharingRequestProperties;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/amazon/ksdk/profiles/SimpleRequestCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ksdk/profiles/SharingRequestProperties;",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/profiles/SharableResource;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/profiles/SharableResource;",
            ">;",
            "Lcom/amazon/ksdk/profiles/SimpleRequestCallback;",
            ")V"
        }
    .end annotation

    .line 76
    iget-wide v1, p0, Lcom/amazon/ksdk/profiles/SharingServiceClient$CppProxy;->nativeRef:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/amazon/ksdk/profiles/SharingServiceClient$CppProxy;->native_shareBooks(JLcom/amazon/ksdk/profiles/SharingRequestProperties;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/amazon/ksdk/profiles/SimpleRequestCallback;)V

    return-void
.end method
