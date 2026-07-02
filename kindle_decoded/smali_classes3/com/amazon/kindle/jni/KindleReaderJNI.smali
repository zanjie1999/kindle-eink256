.class public final Lcom/amazon/kindle/jni/KindleReaderJNI;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/jni/KindleReaderJNI$CallContext;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AmazonKindle.KindleReaderJNI"

.field private static initialized:Z = false

.field private static libsLoaded:Z = false

.field private static final s_perThreadCallContextStack:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/jni/KindleReaderJNI$CallContext;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final s_signalHandler:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/jni/KindleReaderJNI$1;

    invoke-direct {v0}, Lcom/amazon/kindle/jni/KindleReaderJNI$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/jni/KindleReaderJNI;->s_perThreadCallContextStack:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/amazon/kindle/jni/KindleReaderJNI$2;

    invoke-direct {v0}, Lcom/amazon/kindle/jni/KindleReaderJNI$2;-><init>()V

    sput-object v0, Lcom/amazon/kindle/jni/KindleReaderJNI;->s_signalHandler:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/jni/KindleReaderJNI;->s_perThreadCallContextStack:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static final native decodeImageFromResourceID(JLjava/lang/String;Landroid/graphics/Bitmap;)Z
.end method

.method public static declared-synchronized init()V
    .locals 2

    const-class v0, Lcom/amazon/kindle/jni/KindleReaderJNI;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/amazon/kindle/jni/KindleReaderJNI;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/amazon/kindle/jni/KindleReaderJNI;->initialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static popCallContext()V
    .locals 2

    sget-object v0, Lcom/amazon/kindle/jni/KindleReaderJNI;->s_perThreadCallContextStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static pushCallContext(Lcom/amazon/kindle/jni/KindleReaderJNI$CallContext;)V
    .locals 1

    sget-object v0, Lcom/amazon/kindle/jni/KindleReaderJNI;->s_perThreadCallContextStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
