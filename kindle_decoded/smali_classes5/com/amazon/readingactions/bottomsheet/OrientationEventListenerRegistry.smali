.class public final Lcom/amazon/readingactions/bottomsheet/OrientationEventListenerRegistry;
.super Ljava/lang/Object;
.source "OrientationEventListenerRegistry.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOrientationEventListenerRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OrientationEventListenerRegistry.kt\ncom/amazon/readingactions/bottomsheet/OrientationEventListenerRegistry\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,25:1\n1497#2,2:26\n*E\n*S KotlinDebug\n*F\n+ 1 OrientationEventListenerRegistry.kt\ncom/amazon/readingactions/bottomsheet/OrientationEventListenerRegistry\n*L\n22#1,2:26\n*E\n"
.end annotation


# static fields
.field private static final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/OrientationEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/amazon/readingactions/bottomsheet/OrientationEventListenerRegistry;

    invoke-direct {v0}, Lcom/amazon/readingactions/bottomsheet/OrientationEventListenerRegistry;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/amazon/readingactions/bottomsheet/OrientationEventListenerRegistry;->listeners:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addListener(Landroid/view/OrientationEventListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lcom/amazon/readingactions/bottomsheet/OrientationEventListenerRegistry;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final disableAllListeners()V
    .locals 2

    .line 22
    sget-object v0, Lcom/amazon/readingactions/bottomsheet/OrientationEventListenerRegistry;->listeners:Ljava/util/List;

    .line 26
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/OrientationEventListener;

    .line 22
    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0

    .line 23
    :cond_0
    sget-object v0, Lcom/amazon/readingactions/bottomsheet/OrientationEventListenerRegistry;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
